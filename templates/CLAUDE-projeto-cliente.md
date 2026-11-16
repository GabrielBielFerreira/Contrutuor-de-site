# CLAUDE.md do projeto: <nome do cliente>

<!-- Copie este arquivo para a raiz do projeto do cliente com o nome CLAUDE.md. -->

Responda em português do Brasil.

## Contexto
- Cliente: <nome>. Ramo: <ramo>. Público: <público>.
- Ação principal do site: <doar / agendar / comprar / inscrever / WhatsApp>.
- Briefing completo em `briefing.md`.

## Design
- `DESIGN.md` na raiz é o contrato visual. Leia antes de qualquer tarefa de UI e não invente cor, fonte, raio, sombra ou espaçamento fora dele.
- Se precisar de um valor novo, proponha a mudança no DESIGN.md primeiro e rode `npx @google/design.md lint DESIGN.md`.
- Componentes podem vir do shadcn/ui, mas o tema vem do DESIGN.md. Nunca entregue o tema padrão do shadcn.
- Proibido sem motivo de marca: fonte Inter, gradiente roxo/azul, glow, emoji como ícone, eyebrow em caixa alta + título + 3 cards com ícone em círculo, `rounded-2xl` + sombra suave em tudo.
- Não invente números, depoimentos, logos de clientes ou fotos. Se faltar material, pergunte ou deixe marcado `[MATERIAL DO CLIENTE]`.

## Skills deste projeto
- Construção de páginas: **Taste Skill** (`taste-skill`). Não use outra skill construtora ao mesmo tempo.
- Revisão: **Impeccable** (hook ativo). Antes de dizer que terminou, rode `/impeccable critique` na página mexida.
- Referências: **designlang** para extrair tokens de sites de referência (`/extract URL`).

## Processo
1. Construa o hero sozinho, tire print em 1440 e 390px e só então siga para o resto.
2. Uma ideia por seção.
3. Antes de entregar: `npx designlang slop http://localhost:3000` (meta abaixo de 30) e `npx designlang verify-ui http://localhost:3000 --brand DESIGN.md`.
4. Confira `templates/checklist-entrega.md` do repositório Contrutuor-de-site.
