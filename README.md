# Construtor de site

Minha central para construir sites, apps e sistemas para clientes com design de alto nível, sem cara de template de IA.

Aqui ficam a pesquisa das melhores skills e repositórios de design para agentes de IA, o método de engenharia reversa de sites de referência, os modelos do meu fluxo (briefing → DESIGN.md → construção → revisão → entrega) e um script que instala tudo no Claude Code.

## Começar em 3 passos (Windows)

**Pré-requisitos:** [Node.js 22+](https://nodejs.org), [Claude Code](https://docs.claude.com/en/docs/claude-code) (comando `claude` no terminal), Google Chrome e Git.

1. **Baixe este repositório** no PowerShell:
   ```powershell
   cd $HOME
   git clone https://github.com/GabrielBielFerreira/Contrutuor-de-site.git
   cd Contrutuor-de-site
   ```
2. **Instale as skills** (núcleo: Taste Skill, Impeccable, designlang, unslop e Playwright MCP):
   ```powershell
   powershell -ExecutionPolicy Bypass -File .\scripts\instalar-skills.ps1
   ```
   Quando o Impeccable perguntar, escolha **global** e **aceite o hook**. Para instalar também os opcionais (UI UX Pro Max, frontend-design da Anthropic, Hallmark, Emil Kowalski, Vercel, dembrandt), adicione `-Tudo` no fim.
3. **Teste** seguindo o roteiro de 30 minutos em [docs/06-testar-agora.md](docs/06-testar-agora.md).

No Git Bash, macOS ou Linux use `bash scripts/instalar-skills.sh` (ou `--tudo`).

## O que tem aqui

| Pasta / arquivo | Para quê |
|---|---|
| [docs/01-ranking-repositorios.md](docs/01-ranking-repositorios.md) | Ranking com estrelas, o que cada repositório faz e como instalar. |
| [docs/02-engenharia-reversa.md](docs/02-engenharia-reversa.md) | O designlang e as alternativas, com passo a passo. |
| [docs/03-videos-e-artigos.md](docs/03-videos-e-artigos.md) | Vídeos e artigos conferidos. |
| [docs/04-recomendacao.md](docs/04-recomendacao.md) | O que adotar primeiro e o que evitar. |
| [docs/05-fluxo-de-trabalho.md](docs/05-fluxo-de-trabalho.md) | Fluxo do briefing à entrega com Claude Code, Lovable e Vercel. |
| [docs/06-testar-agora.md](docs/06-testar-agora.md) | Roteiro de testes depois de instalar. |
| [templates/](templates/) | Briefing, modelo de DESIGN.md, CLAUDE.md para projeto de cliente e checklist de entrega. |
| [prompts/](prompts/) | Prompts prontos para criar o DESIGN.md, construir páginas (Claude Code e Lovable) e resgatar projetos antigos. |
| [scripts/](scripts/) | Instalador das skills. |
| [clientes/](clientes/) | Onde guardar o DESIGN.md de cada cliente (vira sua biblioteca de identidades). |

## O núcleo recomendado

| Ferramenta | Papel | ⭐ (16/11/2026) |
|---|---|---|
| [designlang](https://github.com/Manavarya09/design-extract) | Engenharia reversa: extrai o design system de qualquer site. | 5,1 mil |
| [DESIGN.md (Google)](https://github.com/google-labs-code/design.md) | Formato e validador da identidade de cada cliente. | 29 mil |
| [Taste Skill](https://github.com/Leonxlnx/taste-skill) | Constrói sites de empresa com cara profissional. | 117 mil |
| [Impeccable](https://github.com/pbakaus/impeccable) | Revisa e corta a cara de IA a cada arquivo editado. | 111 mil |
| [unslop](https://github.com/heydamir/unslop) | Resgata projetos antigos com cara de template. | 17 mil |

Por que esses e não outros: [docs/04-recomendacao.md](docs/04-recomendacao.md).

## Licenças

Este repositório **não copia** o código das skills de terceiros: o script instala cada uma direto do repositório original, que continua sendo a fonte das atualizações. Licenças das principais: Taste Skill, Impeccable, designlang, Hallmark, UI UX Pro Max, awesome-design-md e dembrandt são MIT; unslop é CC BY 4.0 (exige crédito ao autor); as skills da Anthropic são Apache 2.0 na maioria. Confira o arquivo LICENSE de cada uma antes de redistribuir.
