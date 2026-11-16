# Checklist antes de entregar

## Identidade (não parece template de IA)
- [ ] A página segue o `DESIGN.md` do cliente (cores, fontes, raios, espaçamento).
- [ ] A fonte principal não é Inter/Roboto/Poppins (a não ser que seja a fonte da marca).
- [ ] Não tem o esqueleto eyebrow + título + 3 cards com ícone em círculo.
- [ ] Sem gradiente roxo, glow, emoji como ícone, sombra borrada em todo card.
- [ ] Fotos e textos são do cliente. Nada inventado (números, depoimentos, logos).
- [ ] `npx designlang slop <url>` abaixo de 30.
- [ ] `npx impeccable detect <url>` sem achados graves.

## UX
- [ ] A ação principal aparece na primeira tela e no fim da página.
- [ ] Uma ideia por seção; dá para entender o negócio em 10 segundos.
- [ ] Formulários com rótulos, mensagens de erro claras e confirmação de envio.
- [ ] WhatsApp/telefone clicáveis no celular.

## Responsivo
- [ ] Testado em 1440, 1024, 768 e 390px (sem rolagem horizontal).
- [ ] Menu do celular abre, fecha e funciona com o teclado.

## Acessibilidade (WCAG AA)
- [ ] Contraste do texto passa (o `@google/design.md lint` confere os tokens).
- [ ] Foco visível em links, botões e campos.
- [ ] Imagens com `alt`; ícones decorativos escondidos do leitor de tela.
- [ ] Respeita `prefers-reduced-motion`.

## Técnico
- [ ] Título, descrição e imagem de compartilhamento (Open Graph) por página.
- [ ] Favicon, 404 e página de privacidade (se coletar dados).
- [ ] Imagens otimizadas (WebP/AVIF) e com dimensões.
- [ ] Revisado na URL de preview da Vercel/Lovable, não só no localhost.
- [ ] Domínio, HTTPS e redirecionamento www funcionando.

## Entrega ao cliente
- [ ] URL de produção, acessos e o `DESIGN.md` (manual da marca).
- [ ] Prints das 4 larguras.
- [ ] DESIGN.md salvo em `clientes/<nome>/` no repositório Contrutuor-de-site.
