---
version: alpha
name: <Nome do Cliente>
description: <Uma frase sobre a identidade visual do cliente>
colors:
  primary: "#1F2A24"
  on-primary: "#FFFFFF"
  secondary: "#5B6B61"
  accent: "#C2532E"
  on-accent: "#FFFFFF"
  surface: "#F6F3EE"
  on-surface: "#1F2A24"
  muted: "#E7E1D7"
typography:
  display:
    fontFamily: Fraunces
    fontSize: 3.5rem
    fontWeight: 600
    lineHeight: 1.05
    letterSpacing: -0.02em
  h2:
    fontFamily: Fraunces
    fontSize: 2.25rem
    fontWeight: 600
    lineHeight: 1.15
  body-md:
    fontFamily: Source Sans 3
    fontSize: 1.0625rem
    lineHeight: 1.6
  label:
    fontFamily: Source Sans 3
    fontSize: 0.875rem
    fontWeight: 600
rounded:
  sm: 4px
  md: 10px
  lg: 18px
spacing:
  xs: 4px
  sm: 8px
  md: 16px
  lg: 32px
  xl: 64px
  section: 120px
components:
  button-primary:
    backgroundColor: "{colors.accent}"
    textColor: "{colors.on-accent}"
    rounded: "{rounded.sm}"
    padding: 14px
    typography: "{typography.label}"
  button-primary-hover:
    backgroundColor: "{colors.primary}"
  card:
    backgroundColor: "{colors.surface}"
    textColor: "{colors.on-surface}"
    rounded: "{rounded.md}"
    padding: 32px
---

<!--
  MODELO. Troque todos os valores pelos do cliente.
  Formato oficial: https://github.com/google-labs-code/design.md
  Validar:  npx @google/design.md lint DESIGN.md
  Ponto de partida: valores extraídos com "npx designlang <site-de-referencia>".
-->

## Overview

<Descreva a personalidade em 3 a 5 frases, como um diretor de arte falaria.
Ex.: "Acolhedor e sóbrio, como uma biblioteca de bairro bem cuidada. Papel quente,
tinta escura e um único acento terracota que só aparece onde há ação.">

Referências usadas: <site 1> (escala tipográfica), <site 2> (ritmo de seções).
Nada de marca, texto ou imagem dessas referências é reaproveitado.

## Colors

- **Primary (#1F2A24):** <para que serve>.
- **Accent (#C2532E):** a única cor de ação. Só em botões e links principais.
- **Surface (#F6F3EE):** fundo da página, mais quente que o branco puro.

## Typography

- **Display/H2 em <fonte de título>:** <por que essa fonte combina com o cliente>.
- **Texto em <fonte de texto>:** <legibilidade, público>.
- Proibido: Inter, Roboto ou Poppins como fonte principal sem motivo de marca.

## Layout

- Grid de 12 colunas, conteúdo máximo de 1200px, margens iguais à esquerda e à direita.
- Uma ideia por seção. Espaço entre seções: `{spacing.section}` no desktop, metade no celular.
- Testar em 1440, 1024, 768 e 390px.

## Elevation & Depth

<Ex.: quase sem sombra. Separação por cor de fundo e linhas de 1px, não por sombras borradas.>

## Shapes

<Ex.: cantos pequenos (4px) em botões, 10px em cards. Nada de pill em tudo.>

## Components

<Regras de botões, cards, formulários, navegação e rodapé que não cabem nos tokens.>

## Do's and Don'ts

- ✅ Usar fotos reais do cliente, com crédito quando forem de banco aberto.
- ✅ Um único CTA principal por tela.
- ❌ Eyebrow em caixa alta + título + 3 cards com ícone em círculo (esqueleto de landing de IA).
- ❌ Gradiente roxo/azul, brilho (glow), emoji como ícone, sombra borrada em todo card.
- ❌ Números, depoimentos ou logos de clientes inventados.
