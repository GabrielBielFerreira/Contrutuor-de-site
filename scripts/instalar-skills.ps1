# Instala as skills e ferramentas de design recomendadas no Claude Code (Windows / PowerShell).
#
# Uso, dentro da pasta do repositório:
#   powershell -ExecutionPolicy Bypass -File .\scripts\instalar-skills.ps1            # só o núcleo
#   powershell -ExecutionPolicy Bypass -File .\scripts\instalar-skills.ps1 -Tudo      # núcleo + opcionais
#
# Pré-requisitos: Node 22+, Claude Code instalado (comando "claude") e Google Chrome.
# No Windows nativo, MCP com npx precisa do "cmd /c" (exigência do Claude Code).
# Tudo é instalado no escopo do usuário, então vale para todos os projetos.
# Para desfazer: "claude plugin uninstall <nome>" e "claude mcp remove <nome>".

param(
  [switch]$Tudo
)

$ErrorActionPreference = "Continue"
$falhas = @()

function Passo($titulo, [scriptblock]$comando) {
  Write-Host ""
  Write-Host "==> $titulo" -ForegroundColor Cyan
  try {
    & $comando
    if ($LASTEXITCODE -ne 0 -and $null -ne $LASTEXITCODE) { throw "código de saída $LASTEXITCODE" }
    Write-Host "    ok" -ForegroundColor Green
  } catch {
    Write-Host "    falhou: $_" -ForegroundColor Yellow
    $script:falhas += $titulo
  }
}

function Plugin($marketplace, $plugin) {
  claude plugin marketplace add $marketplace
  claude plugin install $plugin
}

# Conferência rápida
foreach ($cmd in @("node", "npx", "claude")) {
  if (-not (Get-Command $cmd -ErrorAction SilentlyContinue)) {
    Write-Host "Comando '$cmd' não encontrado. Instale antes de continuar." -ForegroundColor Red
    exit 1
  }
}
$versaoNode = [int]((node -v).TrimStart("v").Split(".")[0])
if ($versaoNode -lt 22) { Write-Host "Aviso: Node $versaoNode encontrado; o Taste Skill pede Node 22+." -ForegroundColor Yellow }

# ---------------- Núcleo ----------------

Passo "Taste Skill (construtora de sites)" { Plugin "Leonxlnx/taste-skill" "taste-skill@taste-skill" }
Passo "designlang (engenharia reversa de design)" { Plugin "Manavarya09/design-extract" "designlang@designlang" }
Passo "Chromium do designlang" { npx -y designlang install-browser }
Passo "unslop (tira a cara de IA de projetos antigos)" { Plugin "heydamir/unslop" "unslop@heydamir" }
Passo "Playwright MCP (o agente abre e mede sites)" { claude mcp add playwright -s user -- cmd /c npx -y "@playwright/mcp@latest" }

Write-Host ""
Write-Host "==> Impeccable (revisor de design com hook)" -ForegroundColor Cyan
Write-Host "    O instalador do Impeccable faz perguntas. Responda: GLOBAL e ACEITE o hook." -ForegroundColor White
npx -y impeccable install
if ($LASTEXITCODE -ne 0) { $falhas += "Impeccable" }

# ---------------- Opcionais ----------------

if ($Tudo) {
  Passo "UI UX Pro Max (banco de estilos, paletas e fontes)" { Plugin "nextlevelbuilder/ui-ux-pro-max-skill" "ui-ux-pro-max@ui-ux-pro-max-skill" }
  Passo "Skills oficiais da Anthropic (inclui frontend-design)" { Plugin "anthropics/skills" "example-skills@anthropic-agent-skills" }
  Passo "Hallmark (auditoria anti-cara-de-IA)" { Plugin "nutlope/hallmark" "hallmark@hallmark" }
  Passo "Skills do Emil Kowalski (animação e acabamento)" { npx -y skills@latest add emilkowalski/skills -g --agent claude-code }
  Passo "Skills da Vercel (web-design-guidelines, react-best-practices)" { npx -y skills@latest add vercel-labs/agent-skills -g --agent claude-code }
  Passo "dembrandt MCP (extração rápida de marca)" { claude mcp add --transport stdio dembrandt -s user -- cmd /c npx -y dembrandt mcp }
}

Write-Host ""
if ($falhas.Count -eq 0) {
  Write-Host "Tudo instalado. Abra um NOVO Claude Code (ou rode /reload-plugins) e teste com docs/06-testar-agora.md." -ForegroundColor Green
} else {
  Write-Host "Terminou com falhas em: $($falhas -join ', ')" -ForegroundColor Yellow
  Write-Host "Rode de novo só esses passos à mão (comandos em docs/01-ranking-repositorios.md)." -ForegroundColor Yellow
}
Write-Host ""
Write-Host "Lembrete: deixe só UMA skill construtora ativa por projeto (Taste, Hallmark, UI UX Pro Max ou frontend-design)."
