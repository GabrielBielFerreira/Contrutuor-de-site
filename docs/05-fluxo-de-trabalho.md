# 5. Fluxo de trabalho: do briefing à entrega

Sete etapas. Cada uma tem uma entrada, uma ferramenta e uma saída que fica salva no projeto do cliente.

```
Briefing → Referências → DESIGN.md → Construção → Revisão → Deploy → Entrega
```

## 1. Briefing (30 min com o cliente)

- **Entrada:** conversa com o cliente.
- **Ferramenta:** [`templates/briefing-cliente.md`](../templates/briefing-cliente.md).
- **Saída:** `briefing.md` na pasta do projeto, com objetivo, público, ação principal da página, 3 adjetivos da marca e 2 a 3 sites que o cliente gosta.
- **Dica:** peça o material real (logo, fotos, números, depoimentos). Hallmark e Taste se recusam a inventar dados, e é isso que deixa o site com cara de verdade.

## 2. Referências (engenharia reversa)

- **Ferramenta:** designlang (ou dembrandt / extensão design-md-chrome).
- **Comandos:**
  ```powershell
  npx designlang https://referencia-1.com
  npx designlang https://referencia-2.com
  npx designlang pair https://referencia-1.com https://referencia-2.com
  ```
- **Estrutura interna (REA):** abra cada referência com `.\scripts\abrir-chrome-rea.ps1 URL` e peça ao Claude Code para mapear seções, componentes, rotas e interações com o REA. Guia: [07-rea-estrutura-interna.md](07-rea-estrutura-interna.md).
- **Saída:** pasta `referencias/` com os tokens (designlang) e o mapa de estrutura (REA) de cada site.
- Sem referência do cliente? Pegue 2 DESIGN.md do [awesome-design-md](https://github.com/VoltAgent/awesome-design-md) ou consulte o UI UX Pro Max para o ramo dele.

## 3. DESIGN.md do cliente (a identidade)

- **Ferramenta:** [`templates/DESIGN.md`](../templates/DESIGN.md) + prompt [`prompts/criar-design-md.md`](../prompts/criar-design-md.md).
- **Passos:** misture as referências, aplique a cor e a fonte da marca, escreva a seção Overview com a personalidade do cliente e a seção Do's and Don'ts com o que é proibido.
- **Validação:** `npx @google/design.md lint DESIGN.md` com zero erros.
- **Saída:** `DESIGN.md` na raiz do projeto. Este arquivo é o contrato visual: tudo que for construído obedece a ele.

## 4. Construção

Escolha onde construir:

| Caminho | Quando | Como |
|---|---|---|
| **Claude Code + Next.js/Vite** | Site sob medida, com animação, ou sistema. | Copie [`templates/CLAUDE-projeto-cliente.md`](../templates/CLAUDE-projeto-cliente.md) como `CLAUDE.md` do projeto. Rode `/impeccable init` uma vez (ele cria o `PRODUCT.md` com público e objetivo). Peça a página; o Taste Skill constrói lendo o DESIGN.md e o hook do Impeccable revisa cada arquivo. |
| **Lovable** | Protótipo rápido, cliente com orçamento curto, app com Supabase. | Cole o DESIGN.md no Knowledge do projeto. No primeiro prompt diga: "Siga o DESIGN.md do Knowledge. Não use o tema padrão do shadcn nem a fonte Inter." |

Construa **o hero primeiro e sozinho**, revise, e só então o resto da página. É assim que o Hallmark trabalha e evita retrabalho.

## 5. Revisão (antes de mostrar ao cliente)

```powershell
npx impeccable detect http://localhost:3000            # padrões de cara de IA
npx designlang slop http://localhost:3000              # nota de 0 a 100 (meta: abaixo de 30)
npx designlang verify-ui http://localhost:3000 --brand DESIGN.md   # obedece à marca?
```

- No Claude Code: `/impeccable critique a home`, `/impeccable polish o rodapé`, `/impeccable bolder o hero`, ou `/hallmark:hallmark audit ./src` (Hallmark instalado como plugin).
- Acessibilidade: skill `web-design-guidelines` da Vercel.
- Passe pelo [`templates/checklist-entrega.md`](../templates/checklist-entrega.md).

## 6. Deploy (Vercel)

- Suba o repositório no GitHub e conecte na Vercel. Cada PR ganha uma URL de preview.
- Rode a revisão do passo 5 na **URL de preview**, não só no localhost (fonte, imagem e performance mudam em produção).
- Projeto do Lovable: publique pelo Lovable ou exporte para o GitHub e use a Vercel.

## 7. Entrega

- Envie ao cliente a URL de produção, o `DESIGN.md` (ele vira o manual da marca) e um print das 4 larguras (1440, 1024, 768, 390).
- Guarde o DESIGN.md do cliente em `clientes/<nome>/DESIGN.md` **neste repositório**. Com o tempo você forma a sua própria biblioteca de identidades.
