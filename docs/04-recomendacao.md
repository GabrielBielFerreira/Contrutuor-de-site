# 4. Recomendação: o que adotar primeiro e por quê

O seu problema hoje não é falta de ferramenta. É o agente cair sempre no mesmo esqueleto (Inter em tudo, eyebrow em caixa alta + título + 3 cards com ícone em círculo, shadcn padrão com `rounded-2xl` e sombra suave) e cada projeto reinventar os tokens. Por isso a ordem abaixo ataca primeiro o **sistema** e a **revisão**, e só depois a geração.

## Semana 1: o núcleo (4 ferramentas)

| Ordem | Ferramenta | Por quê |
|---|---|---|
| 1 | **designlang** | Resolve "cada projeto reinventa tokens": todo cliente começa com um DESIGN.md medido de referências reais. |
| 2 | **DESIGN.md do Google** (`@google/design.md lint`) | Garante que o DESIGN.md está certo e com contraste WCAG antes de gastar tempo construindo. |
| 3 | **Impeccable** | O hook revisa cada arquivo de UI que o agente edita. É o que mais corta a cara de IA, sem você lembrar de pedir. |
| 4 | **Taste Skill** | Skill construtora feita para sites de empresa e institucionais, que é a maior parte dos seus clientes. |

## Semana 2: quando precisar

| Ferramenta | Use quando |
|---|---|
| **unslop** | For mexer num projeto antigo do Lovable que ficou com cara de template. |
| **UI UX Pro Max** | Não souber que estilo/paleta usar para um ramo novo (é um banco de consulta). |
| **Hallmark** (`/hallmark audit`) | Quiser uma segunda opinião dura antes de entregar. |
| **emilkowalski/skills** + **Motion** | O cliente pagar por microinterações e animação caprichada. |
| **vercel-labs/agent-skills** (`web-design-guidelines`) | Revisar acessibilidade e UX antes do deploy na Vercel. |
| **awesome-design-md** | Precisar de um ponto de partida rápido sem referência do cliente. |

## O que NÃO fazer

- **Não instale várias skills construtoras ativas ao mesmo tempo** (Taste, Hallmark, UI UX Pro Max, frontend-design). Elas dão instruções diferentes e o agente mistura tudo. Deixe uma construtora e use as outras só para consulta ou auditoria.
- **Não entregue o tema padrão do shadcn.** Os componentes podem ser shadcn; as cores, raios, sombras e fontes vêm do DESIGN.md do cliente.
- **Não clone site de concorrente para cliente.** Use o cloner só para estudo.

## Onde cada coisa roda

| Ferramenta | Claude Code | Lovable | Vercel |
|---|---|---|---|
| Skills (Taste, Impeccable, unslop, Hallmark) | ✅ completas | ⚠️ só o texto: o Lovable não roda os scripts (Node + Chrome). Dá para colar regras no Knowledge. | ➖ |
| designlang / dembrandt | ✅ | ➖ rode no seu PC e leve o DESIGN.md para o Knowledge | ➖ |
| DESIGN.md | ✅ raiz do projeto | ✅ cole no Knowledge do projeto ou do workspace | ✅ vai junto no repositório |
| `npx impeccable detect URL` / `designlang slop URL` | ✅ | ✅ aponte para a URL de preview do Lovable | ✅ aponte para a URL de preview da Vercel |

Resumo: **Claude Code é onde o design é decidido e revisado**; o Lovable recebe o DESIGN.md pronto; a Vercel publica e a URL de preview é auditada antes de virar produção.
