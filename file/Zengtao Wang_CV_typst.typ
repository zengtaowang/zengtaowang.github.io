#show heading.where(level: 2): it => block(
  width: 100%,
  above: 1em,
  below: 0.45em,
  inset: (bottom: 0.24em),
  stroke: (bottom: 0.8pt + rgb("#167c80")),
  sticky: true,
)[
  #set text(size: 10pt, weight: "bold", fill: rgb("#14324a"))
  #it.body
]
