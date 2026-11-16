#!/usr/bin/env bash
# Mesma instalação do instalar-skills.ps1, para Git Bash, macOS ou Linux.
# Uso: bash scripts/instalar-skills.sh         (núcleo)
#      bash scripts/instalar-skills.sh --tudo  (núcleo + opcionais)

falhas=()
passo() { local titulo="$1"; shift; echo; echo "==> $titulo"; if "$@"; then echo "    ok"; else echo "    falhou"; falhas+=("$titulo"); fi; }
plugin() { claude plugin marketplace add "$1" && claude plugin install "$2"; }

for c in node npx claude; do command -v "$c" >/dev/null || { echo "Comando '$c' não encontrado."; exit 1; }; done

passo "Taste Skill" plugin Leonxlnx/taste-skill taste-skill@taste-skill
passo "designlang" plugin Manavarya09/design-extract designlang@designlang
passo "Chromium do designlang" npx -y designlang install-browser
passo "unslop" plugin heydamir/unslop unslop@heydamir
passo "Playwright MCP" claude mcp add playwright -s user -- npx -y @playwright/mcp@latest

echo; echo "==> Impeccable: responda GLOBAL e ACEITE o hook."
npx -y impeccable install || falhas+=("Impeccable")

if [ "$1" = "--tudo" ]; then
  passo "UI UX Pro Max" plugin nextlevelbuilder/ui-ux-pro-max-skill ui-ux-pro-max@ui-ux-pro-max-skill
  passo "Skills oficiais da Anthropic" plugin anthropics/skills example-skills@anthropic-agent-skills
  passo "Hallmark" plugin nutlope/hallmark hallmark@hallmark
  passo "Skills do Emil Kowalski" npx -y skills@latest add emilkowalski/skills -g --agent claude-code
  passo "Skills da Vercel" npx -y skills@latest add vercel-labs/agent-skills -g --agent claude-code
  passo "dembrandt MCP" claude mcp add --transport stdio dembrandt -s user -- npx -y dembrandt mcp
fi

echo
if [ ${#falhas[@]} -eq 0 ]; then echo "Tudo instalado. Abra um novo Claude Code e siga docs/06-testar-agora.md."
else echo "Falhas em: ${falhas[*]}"; fi
