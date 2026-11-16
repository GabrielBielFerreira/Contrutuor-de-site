# 1. Ranking de repositórios de design e UX para agentes de IA

Estrelas conferidas na API do GitHub em **16/11/2026**. "Ativo" quer dizer que recebeu commit nas últimas semanas.

Legenda da coluna **Uso**: 🎯 adotar já · 🧰 usar quando precisar · 📚 só referência.

## A. Skills de design para o agente (Claude Code, Codex, Cursor)

| # | Repositório | ⭐ | Criado | O que faz | Para que serve no seu trabalho | Uso |
|---|---|---|---|---|---|---|
| 1 | [anthropics/skills](https://github.com/anthropics/skills) | 196 mil | set/2025 | Skills oficiais da Anthropic (inclui `frontend-design`, documentos, artefatos). | Base oficial. A `frontend-design` dá direção estética antes de codar. | 🧰 |
| 2 | [nextlevelbuilder/ui-ux-pro-max-skill](https://github.com/nextlevelbuilder/ui-ux-pro-max-skill) | 150 mil | nov/2025 | Banco pesquisável de estilos, paletas, pares de fontes, padrões de landing e regras de UX para 22 stacks. | Escolher estilo, paleta e fonte por tipo de cliente (igreja, ONG, saúde, SaaS). | 🧰 |
| 3 | [Leonxlnx/taste-skill](https://github.com/Leonxlnx/taste-skill) | 117 mil | fev/2026 | Constrói sites de empresa "nível figma.com/x.ai": paleta por ramo, Google Fonts, layout por seção, fotos reais, checagem em Chrome em 4 larguras. | Skill construtora principal para sites institucionais e landing pages. | 🎯 |
| 4 | [pbakaus/impeccable](https://github.com/pbakaus/impeccable) | 111 mil | nov/2025 | Vocabulário de design (`polish`, `bolder`, `critique`, `audit`) + detector de "AI slop" com hook que revisa cada arquivo de UI editado. | Guarda-costas de qualidade: pega Inter em tudo, gradiente roxo, cards genéricos. | 🎯 |
| 5 | [emilkowalski/skills](https://github.com/emilkowalski/skills) | 57 mil | mar/2026 | Skills de design engineering e animação de quem trabalhou na Vercel e Linear. | Microinterações, transições e escolha de biblioteca de UI. | 🧰 |
| 6 | [Nutlope/hallmark](https://github.com/Nutlope/hallmark) | 56 mil | abr/2026 | Skill anti-cara-de-IA da Together AI: 50 temas, `redesign` e `audit`, lint em 8 larguras, 755 fotos licenciadas. | Alternativa ao Taste Skill; ótimo `audit` para revisar página pronta. | 🧰 |
| 7 | [heydamir/unslop](https://github.com/heydamir/unslop) | 17 mil | out/2026 | Transforma UI "vibecoded" em interface com personalidade: acha o slop e reestiliza. | Resgatar projetos antigos do Lovable com cara de template. | 🎯 |
| 8 | [google-labs-code/stitch-skills](https://github.com/google-labs-code/stitch-skills) | 9,7 mil | jan/2026 | Skills do Google Stitch (design, build, utilitários), inclui extrair DESIGN.md. | Se usar o Google Stitch para gerar telas. | 📚 |
| 9 | [Owl-Listener/designer-skills](https://github.com/Owl-Listener/designer-skills) | 3,4 mil | mar/2026 | Coleção de skills do processo de design inteiro: pesquisa, sistemas, UI, entrega. | Pesquisa com usuário e documentação de design. | 📚 |
| 10 | [dickwu/apple-design-skill](https://github.com/dickwu/apple-design-skill) | 3,5 mil | 2026 | Revisor de UI/UX baseado no Apple HIG. | Apps mobile (React Native/Flutter). | 📚 |

## B. Design systems em arquivo (DESIGN.md)

| # | Repositório | ⭐ | O que faz | Para que serve | Uso |
|---|---|---|---|---|---|
| 1 | [VoltAgent/awesome-design-md](https://github.com/VoltAgent/awesome-design-md) | 128 mil | 84 DESIGN.md extraídos de sites famosos (Vercel, Linear, Stripe, Claude, Cursor...). | Ponto de partida: copie um, adapte à marca do cliente. | 🎯 |
| 2 | [google-labs-code/design.md](https://github.com/google-labs-code/design.md) | 29 mil | Especificação oficial do formato DESIGN.md + CLI que valida tokens e contraste WCAG. | Validar o DESIGN.md de cada cliente antes de construir. | 🎯 |
| 3 | [VoltAgent/awesome-claude-design](https://github.com/VoltAgent/awesome-claude-design) | 4,6 mil | 68 inspirações de design system em DESIGN.md para o Claude Design. | Mais referências prontas. | 📚 |
| 4 | [bergside/awesome-design-skills](https://github.com/bergside/awesome-design-skills) | 3,7 mil | Lista de 67 DESIGN.md e SKILL.md de design. | Explorar estilos. | 📚 |

## C. Engenharia reversa e clonagem de sites

Detalhes e passo a passo em [02-engenharia-reversa.md](02-engenharia-reversa.md).

| # | Repositório | ⭐ | O que faz | Uso |
|---|---|---|---|---|
| 1 | [JCodesMore/ai-website-cloner-template](https://github.com/JCodesMore/ai-website-cloner-template) | 39 mil | Template Next.js 16 + shadcn: `/clone-website URL` recria o site inteiro. | 🧰 |
| 2 | [firecrawl/open-lovable](https://github.com/firecrawl/open-lovable) | 29 mil | Recria qualquer site como app React (estilo Lovable, open source). | 📚 |
| 3 | [Manavarya09/design-extract](https://github.com/Manavarya09/design-extract) (**designlang**) | 5,1 mil | Lê o design system de qualquer URL e gera tokens, Tailwind, shadcn, Figma, DESIGN.md. Nota de "slop", verificação contra marca. | 🎯 |
| 4 | [dembrandt/dembrandt](https://github.com/dembrandt/dembrandt) | 4 mil | Extrai tokens (logo, cores, tipografia, bordas) com um comando; tem MCP. | 🧰 |
| 5 | [bergside/design-md-chrome](https://github.com/bergside/design-md-chrome) | 3,2 mil | Extensão do Chrome que gera DESIGN.md do site aberto. | 🧰 |
| 6 | [senlindesign/taste-skill](https://github.com/senlindesign/taste-skill) | 476 | `/taste URL`: extrai tokens **e explica o porquê** das escolhas do site. | 🧰 |

## D. Bibliotecas de componentes (o que o agente usa para montar a UI)

| # | Repositório | ⭐ | O que faz | Uso |
|---|---|---|---|---|
| 1 | [shadcn-ui/ui](https://github.com/shadcn-ui/ui) | 128 mil | Componentes acessíveis que ficam no seu código. Base do Lovable e do v0. | 🎯 (mas troque o tema padrão!) |
| 2 | [tailwindlabs/tailwindcss](https://github.com/tailwindlabs/tailwindcss) | 99 mil | CSS utilitário. Os tokens do DESIGN.md viram variáveis aqui. | 🎯 |
| 3 | [DavidHDev/react-bits](https://github.com/DavidHDev/react-bits) | 52 mil | Maior biblioteca open source de componentes React animados. | 🧰 hero e detalhes |
| 4 | [motiondivision/motion](https://github.com/motiondivision/motion) | 35 mil | Biblioteca de animação para React (ex-Framer Motion). | 🧰 |
| 5 | [magicuidesign/magicui](https://github.com/magicuidesign/magicui) | 23 mil | Componentes animados copia-e-cola no padrão shadcn. | 🧰 |
| 6 | [birobirobiro/awesome-shadcn-ui](https://github.com/birobirobiro/awesome-shadcn-ui) | 21 mil | Lista de tudo do ecossistema shadcn (temas, blocos, kits). | 📚 |
| 7 | [radix-ui/primitives](https://github.com/radix-ui/primitives) | 20 mil | Primitivos acessíveis sem estilo (por baixo do shadcn). | 📚 |
| 8 | [mui/base-ui](https://github.com/mui/base-ui) | 11 mil | Primitivos sem estilo dos criadores do Radix e MUI. | 📚 |
| 9 | [ibelick/motion-primitives](https://github.com/ibelick/motion-primitives) | 7 mil | Kit de componentes animados. | 🧰 |
| 10 | [21st-dev/magic-mcp](https://github.com/21st-dev/magic-mcp) | 6,6 mil | MCP para buscar 10 mil+ componentes React/Tailwind dentro do Claude Code. | 🧰 |

## E. Ferramentas de suporte (o agente "enxergar" o site)

| Repositório | ⭐ | Para quê |
|---|---|---|
| [microsoft/playwright-mcp](https://github.com/microsoft/playwright-mcp) | 40 mil | Agente abre o navegador, tira print, mede. Necessário para várias skills de engenharia reversa. |
| [ChromeDevTools/chrome-devtools-mcp](https://github.com/ChromeDevTools/chrome-devtools-mcp) | 58 mil | DevTools do Chrome para o agente: CSS computado, performance, rede. |
| [firecrawl/firecrawl](https://github.com/firecrawl/firecrawl) | 202 mil | Raspagem de sites para IA (conteúdo, prints, branding). |
| [GLips/Figma-Context-MCP](https://github.com/GLips/Figma-Context-MCP) | 16 mil | Agente lê layouts do Figma. |
| [INSANE0777/Awwwards-mcp](https://github.com/INSANE0777/Awwwards-mcp) | 800 | Novo (set/2026): inspiração de sites premiados direto no agente. |

## F. Coleções de skills e prompts (para descobrir mais)

| Repositório | ⭐ | O que tem |
|---|---|---|
| [obra/superpowers](https://github.com/obra/superpowers) | 319 mil | Framework de skills e metodologia de desenvolvimento (planejar, testar, revisar). |
| [x1xhlol/system-prompts-and-models-of-ai-tools](https://github.com/x1xhlol/system-prompts-and-models-of-ai-tools) | 145 mil | Prompts de sistema de Lovable, v0, Cursor, Manus etc. Bom para estudar como eles pedem UI. |
| [ComposioHQ/awesome-claude-skills](https://github.com/ComposioHQ/awesome-claude-skills) | 80 mil | Lista curada de skills do Claude. |
| [hesreallyhim/awesome-claude-code](https://github.com/hesreallyhim/awesome-claude-code) | 58 mil | Lista curada de recursos do Claude Code. |
| [vercel-labs/agent-skills](https://github.com/vercel-labs/agent-skills) | 34 mil | Skills oficiais da Vercel: `web-design-guidelines` (100+ regras de a11y/UX), `react-best-practices`, `vercel-optimize`. |
| [travisvn/awesome-claude-skills](https://github.com/travisvn/awesome-claude-skills) | 16 mil | Outra lista curada de skills. |

## Como instalar cada um (Claude Code)

O jeito mais fácil é rodar o script [`scripts/instalar-skills.ps1`](../scripts/instalar-skills.ps1) (veja o [README](../README.md)). Abaixo estão os comandos avulsos: os que começam com `/` são digitados dentro do Claude Code, os outros no terminal.

```bash
# Núcleo recomendado
npx impeccable install                                   # Impeccable (aceite o hook)
/plugin marketplace add Leonxlnx/taste-skill             # Taste Skill
/plugin install taste-skill@taste-skill
/plugin marketplace add Manavarya09/design-extract       # designlang
/plugin install designlang@designlang
claude plugin install unslop --marketplace heydamir/unslop   # unslop

# Opcionais
/plugin marketplace add nextlevelbuilder/ui-ux-pro-max-skill
/plugin install ui-ux-pro-max@ui-ux-pro-max-skill
npx skills add nutlope/hallmark -g
npx skills@latest add emilkowalski/skills
npx skills add vercel-labs/agent-skills                  # web-design-guidelines etc.
/plugin marketplace add anthropics/skills
claude mcp add playwright -s user -- cmd /c npx -y @playwright/mcp@latest     # no Windows use "cmd /c"
claude mcp add --transport stdio dembrandt -s user -- cmd /c npx -y dembrandt mcp
```

`npx skills` é o instalador universal de skills da Vercel ([skills.sh](https://skills.sh)): funciona com Claude Code, Codex, Cursor e outros.

Requisitos comuns: Node 22+ e Chrome instalado (Taste Skill, designlang, Hallmark e unslop abrem um navegador de verdade).
