# 6. Testar agora (roteiro de 30 minutos)

Depois de rodar `scripts/instalar-skills.ps1`, abra um Claude Code **novo** e faça estes 4 testes numa pasta vazia (ex.: `C:\Users\<você>\teste-design`).

## Teste 1: engenharia reversa (5 min)

No terminal:

```powershell
npx designlang https://linear.app
```

Abra a pasta gerada e veja o DESIGN.md, o `tailwind.config` e o tema shadcn. Depois, no Claude Code:

```text
/grade https://stripe.com
/battle https://stripe.com https://vercel.com
```

## Teste 2: DESIGN.md do cliente (10 min)

1. Copie `templates/DESIGN.md` e `templates/briefing-cliente.md` para a pasta de teste.
2. Preencha o briefing de um cliente real ou imaginário.
3. Use o prompt [`prompts/criar-design-md.md`](../prompts/criar-design-md.md) com 2 sites de referência.
4. Valide: `npx @google/design.md lint DESIGN.md`.

## Teste 3: construir com o Taste Skill (10 min)

Copie `templates/CLAUDE-projeto-cliente.md` como `CLAUDE.md` e use o primeiro prompt de [`prompts/construir-pagina.md`](../prompts/construir-pagina.md). Repare que o hook do Impeccable comenta os arquivos enquanto o agente edita.

## Teste 4: auditar algo que já existe (5 min)

Pegue a URL de preview de um projeto seu no Lovable ou na Vercel:

```powershell
npx impeccable detect https://SEU-PROJETO.lovable.app
npx designlang slop https://SEU-PROJETO.lovable.app
```

Compare a nota antes e depois de rodar `/unslop` numa cópia do projeto.

## Se algo der errado

| Problema | Solução |
|---|---|
| `/taste-skill`, `/unslop` ou `/extract` não aparecem | Feche e abra o Claude Code ou rode `/reload-plugins`. Veja `/plugin` para conferir o que está instalado. |
| designlang reclama do navegador | `npx designlang install-browser` (ou instale o Google Chrome). |
| MCP do Playwright não conecta no Windows | Remova e adicione com `cmd /c`: `claude mcp remove playwright` e `claude mcp add playwright -s user -- cmd /c npx -y @playwright/mcp@latest`. |
| O agente mistura estilos | Tem mais de uma skill construtora ativa. Desative com `claude plugin disable <nome>`. |
| PowerShell bloqueia o script | Rode com `powershell -ExecutionPolicy Bypass -File .\scripts\instalar-skills.ps1`. |
