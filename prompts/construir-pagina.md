# Prompts: construir e revisar uma página

## No Claude Code (Taste Skill + Impeccable)

```xml
<prompt>
  <papel>Você é design engineer sênior construindo o site de um cliente real.</papel>

  <contexto>
    <arquivos>briefing.md, DESIGN.md e CLAUDE.md na raiz.</arquivos>
    <pagina>NOME_DA_PAGINA (ex.: home)</pagina>
    <acao_principal>AÇÃO (ex.: agendar visita pelo WhatsApp)</acao_principal>
  </contexto>

  <tarefa>
    <passo>Use a skill taste-skill para planejar as seções a partir do trabalho que a página precisa fazer, não de um modelo de landing.</passo>
    <passo>Construa SÓ o hero primeiro. Tire print em 1440 e 390px, mostre e espere meu ok.</passo>
    <passo>Depois do ok, construa o resto, uma ideia por seção.</passo>
    <passo>Ao terminar, rode /impeccable critique na página e corrija o que aparecer.</passo>
  </tarefa>

  <restricoes>
    <item>Todos os valores visuais vêm do DESIGN.md.</item>
    <item>Sem dados inventados: use [MATERIAL DO CLIENTE] onde faltar conteúdo.</item>
  </restricoes>
</prompt>
```

## No Lovable (com o DESIGN.md colado no Knowledge)

```xml
<prompt>
  <contexto>O Knowledge deste projeto tem o DESIGN.md do cliente. Ele é obrigatório.</contexto>
  <tarefa>Crie a página NOME com as seções: LISTA_DE_SEÇÕES. A ação principal é AÇÃO.</tarefa>
  <restricoes>
    <item>Configure as cores, fontes, raios e espaçamentos do DESIGN.md no tema do Tailwind e nas variáveis do shadcn antes de criar qualquer componente.</item>
    <item>Não use o tema padrão do shadcn, a fonte Inter, gradiente roxo, glow nem emoji como ícone.</item>
    <item>Não use o esqueleto eyebrow em caixa alta + título + 3 cards com ícone em círculo.</item>
    <item>Não invente números nem depoimentos.</item>
  </restricoes>
</prompt>
```

## Resgatar um projeto antigo com cara de template

```xml
<prompt>
  <tarefa>Use a skill unslop nesta pasta. Primeiro liste o que deixa a interface com cara de IA, depois proponha uma direção visual com personalidade para este cliente (CLIENTE, RAMO) e aplique, mantendo todo o conteúdo, links e formulários funcionando.</tarefa>
  <saida>Antes e depois em print, mais a lista do que mudou.</saida>
</prompt>
```
