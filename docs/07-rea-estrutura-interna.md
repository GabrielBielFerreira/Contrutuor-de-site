# 7. REA: engenharia reversa da estrutura interna de sites

**[morluto/rea](https://github.com/morluto/rea)** · 464 mil ⭐ (16/11/2026) · criado em abr/2026, commits diários · licença MIT · site oficial [rea.tools](https://rea.tools/)

É o repositório de engenharia reversa mais estrelado do momento. Enquanto o **designlang mostra como o site parece** (cores, fontes, espaçamentos), o **REA mostra como o site funciona por dentro**: estrutura do DOM, árvore de acessibilidade, scripts e chunks, rotas, chamadas de API, eventos de navegação, armazenamento e prints. Ele também analisa apps Electron, .NET, Android e binários, mas para o seu trabalho o que importa é a parte de **sites**.

> Só baixe de [github.com/morluto/rea](https://github.com/morluto/rea), [rea.tools](https://rea.tools/) ou do pacote npm `rea-agents`. O próprio projeto avisa que existem cópias com nome parecido.

## A dupla: designlang + REA

| Pergunta | Ferramenta |
|---|---|
| Que cores, fontes, raios e espaçamentos o site usa? | designlang |
| Como as seções e componentes estão organizados (hierarquia, landmarks, acessibilidade)? | **REA** `inspect_web_page` |
| Quais rotas/páginas existem e como os scripts são divididos? | **REA** `analyze_web_bundle` |
| O que acontece quando o usuário clica, envia um formulário ou navega? | **REA** `observe_web_session` |
| Como recriar essa funcionalidade (busca, filtro, carrinho, agendamento) no meu projeto? | **REA** + Claude Code construindo a sua versão |

## Instalar (Claude Code)

Já está no script [`scripts/instalar-skills.ps1`](../scripts/instalar-skills.ps1). Manualmente, dentro do Claude Code:

```text
/plugin marketplace add morluto/rea
/plugin install rea@rea
```

Use **ou** o plugin **ou** `npx rea-agents setup`, nunca os dois (senão ficam dois servidores `rea`). Requisito: Node 22.23.4+ ou 24.22.1+ no PATH. Para conferir: `claude plugin list` e `/mcp` dentro do Claude Code.

Para usar também no terminal: `npm install --global rea-agents` e depois `rea --help`. Atualizar: `rea update`.

## Como usar em sites (passo a passo)

O REA **não abre o navegador sozinho**: ele se conecta a um Chrome que você abre com a porta de depuração ligada, num perfil separado.

1. **Abra o Chrome de investigação** com o script deste repositório:
   ```powershell
   .\scripts\abrir-chrome-rea.ps1 https://site-de-referencia.com
   ```
   Ele abre o Chrome com `--remote-debugging-port=9222` e um perfil só para isso (seus logins e abas normais não são tocados).
2. **Peça ao Claude Code** (com o plugin REA instalado):
   ```text
   Use o REA no Chrome em http://127.0.0.1:9222. Inspecione a página aberta
   e me explique a estrutura interna: seções, hierarquia de títulos, landmarks,
   componentes que se repetem, rotas e como os scripts são carregados.
   Mostre a evidência. Depois proponha a mesma ARQUITETURA para o site do meu
   cliente usando o DESIGN.md dele, sem copiar texto, imagem ou marca.
   ```
3. **Para entender uma interação**, peça uma janela de observação e faça a ação no Chrome enquanto ela roda:
   ```text
   Use o REA para observar a sessão por 20 segundos enquanto eu uso o filtro
   de produtos. Depois explique como o filtro funciona (URL, chamadas de API,
   estado) e implemente um filtro equivalente no meu projeto.
   ```
4. **Feche o Chrome de investigação** quando terminar. A porta 9222 só aceita conexões do seu próprio computador; não a exponha.

### Pelo terminal (sem o agente)

```powershell
rea list-browser-targets http://127.0.0.1:9222 --json              # lista as abas e o TARGET_ID
rea inspect-web-page http://127.0.0.1:9222 TARGET_ID --include-accessibility-text --json
rea analyze-web-bundle http://127.0.0.1:9222 TARGET_ID --json      # rotas, chunks, bibliotecas
rea observe-web-session http://127.0.0.1:9222 TARGET_ID --observation-ms 20000 --json
rea capture-web-screenshot http://127.0.0.1:9222 TARGET_ID --json
```

## Onde entra no seu fluxo

No passo **2. Referências** do [fluxo de trabalho](05-fluxo-de-trabalho.md):

1. `designlang` em cada referência → visual (tokens, DESIGN.md).
2. **REA** em cada referência → estrutura (mapa de seções, componentes, rotas, interações). Salve como `referencias/<site>-estrutura.md`.
3. No passo 3, use o mapa de estrutura para planejar as páginas do cliente e o DESIGN.md para o visual.

## Cuidados

- **Só observe o que é público ou seu.** Não use em área logada de terceiros, não tente contornar proteção e não colete dados de usuários.
- O REA pode capturar segredos se você pedir texto de console, scripts ou armazenamento. Use o perfil separado e não cole essas saídas em lugar público.
- Estrutura e padrões de interação são ideias reutilizáveis; código, texto, imagens e marca do site não são. Reescreva a sua versão.
- Muito do REA (binários, Android, firmware) não serve para sites; ignore essas partes e os provedores nativos (Hopper, Ghidra, IDA). O setup pode oferecer instalar o Hopper: para sites, recuse.

## Links

- [README oficial](https://github.com/morluto/rea#readme) · [Guia de observação de sites](https://github.com/morluto/rea/blob/main/docs/guides/web/browser-observation.md) · [Instalação](https://github.com/morluto/rea/blob/main/docs/getting-started/installation.md)
- [Guias ilustrados](https://rea.tools/guides/) · [Casos reais](https://rea.tools/showcase/) (ex.: como o clipboard do Notion funciona)
