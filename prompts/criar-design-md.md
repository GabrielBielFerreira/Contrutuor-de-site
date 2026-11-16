# Prompt: criar o DESIGN.md de um cliente a partir de referências

Cole no Claude Code dentro da pasta do projeto do cliente, depois de preencher `briefing.md`. Precisa do designlang instalado.

```xml
<prompt>
  <papel>Você é diretor de arte e design engineer sênior.</papel>

  <contexto>
    <briefing>Leia briefing.md nesta pasta.</briefing>
    <referencias>
      <site>URL_REFERENCIA_1</site>
      <site>URL_REFERENCIA_2</site>
      <site>URL_REFERENCIA_3</site>
    </referencias>
    <marca>Logo e cores existentes em ./marca (se houver).</marca>
  </contexto>

  <tarefa>
    <passo>Rode /extract em cada referência com o designlang e salve em ./referencias.</passo>
    <passo>Compare as referências: o que cada uma faz bem em tipografia, ritmo de espaçamento, grid, cor e componentes.</passo>
    <passo>Monte um sistema NOVO para o cliente misturando o melhor de cada uma, com a cor e o logo da marca. Não copie a combinação exata de cores e fontes de nenhuma referência.</passo>
    <passo>Escreva DESIGN.md no formato do modelo templates/DESIGN.md (especificação google-labs-code/design.md), com Overview, Colors, Typography, Layout, Elevation, Shapes, Components e Do's and Don'ts.</passo>
    <passo>Rode npx @google/design.md lint DESIGN.md e corrija até zerar erros e passar o contraste WCAG AA.</passo>
  </tarefa>

  <restricoes>
    <item>Nada de Inter, gradiente roxo, glow ou emoji como ícone, salvo se for da marca.</item>
    <item>Não reaproveite logo, texto, foto ou ilustração das referências.</item>
    <item>Explique em 5 linhas as escolhas principais e de qual referência veio cada ideia.</item>
  </restricoes>

  <saida>DESIGN.md validado na raiz do projeto e um resumo curto das escolhas.</saida>
</prompt>
```
