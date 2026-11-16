# 2. Destaque: engenharia reversa de design de sites

## Qual é "o novo de engenharia reversa"

O mais provável é o **designlang** ([Manavarya09/design-extract](https://github.com/Manavarya09/design-extract)): 5,1 mil ⭐, criado em abril/2026, com commits toda semana. Ele é o que mais faz "engenharia reversa de design e UX" de verdade, porque não só copia cores: mede layout, responsividade em 4 larguras, estados de hover/focus, movimento e contraste.

Os dois concorrentes que também circulam muito:

- **[ai-website-cloner-template](https://github.com/JCodesMore/ai-website-cloner-template)** (39 mil ⭐, mar/2026): recria o site **inteiro** em Next.js. Bom para estudar, ruim para entregar a cliente (é cópia).
- **[awesome-design-md](https://github.com/VoltAgent/awesome-design-md)** (128 mil ⭐, mar/2026): a engenharia reversa já feita de 84 sites famosos, em DESIGN.md.

## Como o designlang funciona

1. Abre a URL num Chromium headless (Playwright).
2. Lê o DOM ao vivo e os estilos computados de cada elemento.
3. Agrupa valores parecidos (cores próximas são unidas no espaço OKLab) e elege os tokens pela frequência de uso.
4. Mede breakpoints, estados interativos, animações e contraste WCAG.
5. Gera 17+ arquivos: tokens DTCG, `tailwind.config`, tema shadcn, variáveis do Figma, tokens de movimento, DESIGN.md.

Sem conta, sem chave de API. Precisa de Node 20+.

## Passo a passo no seu fluxo

### Opção A: pelo terminal (mais simples para testar)

```powershell
# 1. Uma vez só: baixa o Chromium que ele usa
npx designlang install-browser

# 2. Extrair o design de um site de referência do cliente
npx designlang https://site-de-referencia.com

# 3. Ver o site inteiro (home, sobre, contato...) e não só uma página
npx designlang site https://site-de-referencia.com --max-pages 8

# 4. Medir se o SEU site está com cara de IA (0 = único, 100 = genérico)
npx designlang slop http://localhost:3000

# 5. Conferir se a sua página respeita o DESIGN.md do cliente
npx designlang verify-ui http://localhost:3000 --brand DESIGN.md
```

### Opção B: dentro do Claude Code (plugin)

```text
/plugin marketplace add Manavarya09/design-extract
/plugin install designlang@designlang
```

Depois use os comandos `/extract URL`, `/site URL`, `/grade URL`, `/battle siteA siteB`, `/pair siteA siteB` (visual de um com o tom de voz do outro) e `/theme-swap URL` (recolore com a cor da marca do cliente).

### Opção C: como MCP (o agente chama sozinho)

```powershell
claude mcp add designlang -- npx -y designlang mcp
```

### Transformar a extração no design do cliente

1. Rode o designlang em **2 ou 3** referências que o cliente gostou (nunca uma só, senão vira cópia).
2. Use `/pair` ou `theme-swap` para misturar referências e aplicar a cor da marca.
3. Copie o resultado para o modelo [`templates/DESIGN.md`](../templates/DESIGN.md) e reescreva a seção **Overview** com a personalidade do cliente.
4. Valide: `npx @google/design.md lint DESIGN.md` (pega token quebrado e contraste ruim).
5. Coloque o DESIGN.md na raiz do projeto (Next.js/Vite) ou cole no **Knowledge** do projeto no Lovable.

## Alternativas, cada uma para um caso

| Ferramenta | Quando usar | Como |
|---|---|---|
| [senlindesign/taste-skill](https://github.com/senlindesign/taste-skill) | Quer entender **por que** o site é bonito, não só os valores. | `git clone https://github.com/senlindesign/taste-skill ~/.claude/skills/taste` + Playwright MCP, depois `/taste URL` |
| [dembrandt](https://github.com/dembrandt/dembrandt) | Extração rápida de marca (logo, cores, fontes). | `npx dembrandt install-browser` e `npx dembrandt site.com` |
| [design-md-chrome](https://github.com/bergside/design-md-chrome) | Está navegando e quer o DESIGN.md do site aberto, sem terminal. | Extensão do Chrome |
| [ai-website-cloner-template](https://github.com/JCodesMore/ai-website-cloner-template) | Estudar como um site foi montado, peça por peça. | Clonar o template, `npm run check`, depois `/clone-website URL` |
| Playwright MCP | O agente precisa "olhar" e medir qualquer site. | `claude mcp add playwright -s user -- npx -y @playwright/mcp@latest` |

## Regra de ouro (ética e jurídico)

Engenharia reversa serve para extrair o **sistema** (escala tipográfica, ritmo de espaçamento, grid, padrões de componente). **Nunca** reaproveite logo, textos, fotos, ilustrações ou a combinação exata de cores e fontes de outra marca num trabalho de cliente. Misture referências, troque a cor e a fonte principal e escreva o conteúdo do zero.

A Thoughtworks registrou esse método no Technology Radar: [Reverse engineering for design system](https://www.thoughtworks.com/radar/techniques/reverse-engineering-for-design-system).
