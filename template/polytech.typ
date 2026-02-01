#let conf() = {
  show raw.where(block: true): it => {
    set par(justify: false)
    grid(
      columns: (100%, 100%),
      column-gutter: -100%,
      place(
        block(width: 100%, inset: 1em, for (i, line) in it.text.split("\n").enumerate() {
          box(width: 0pt, align(right, str(i + 1) + h(2em)))
          hide(line)
          linebreak()
        }),
        dx: -measure("0").width - 1em,
      ),
      block(radius: 1em, fill: luma(246), width: 100%, inset: 1em, it),
    )
  }
}

#let tableofcontents = (
  outline(title: text("Table des matières"))
)

#let titlepage(logo: none, title: none, authors: none) = {
  if (logo != none) {
    align(right, box(width: 80pt, logo))
    v(5em)
  }
  text(size: 2em, weight: 900, title)
  linebreak()
  if (authors != none) {
    v(0.5em)
    for author in authors {
      text(size: 1.5em, author)
      linebreak()
    }
  }

  pagebreak()

  tableofcontents

  pagebreak()
}

#let rounded-table(header, content) = align(center)[
  #block(radius: 5pt, stroke: gray, clip: true, table(
    fill: (x, y) => if (calc.rem(y, 2) == 1) { luma(230) } else { white },
    columns: header.len(),
    stroke: (x, y) => (
      top: if y > 0 { gray },
      left: if x > 0 { gray },
    ),
    table.header(..header.map(h => text(weight: 700, h))),
    ..content.flatten()
  ))
]

#let rounded-image(image_file, caption: none, size: 100%) = {
  figure(
    caption: caption,
    gap: 1em,
  )[
    #rect(box(image_file, radius: 7pt, clip: true), stroke: luma(200), radius: 10pt, width: size)
  ]
}

#let block-left(title: none, body, stroke-color: luma(200)) = (
  context pad(top: 1em)[
    #let label = rect(stroke: stroke-color, radius: 50%, fill: white)[#title]
    #rect(stroke: stroke-color, radius: 10%, width: 100%, {
      place(
        dy: -measure(label).height,
        dx: 5pt,
        label,
      )
      pad(body, 0.6em, top: 1em)
    })
  ]
)

#let block-right(title: none, body, stroke-color: luma(200)) = (
  context pad(top: 1em)[
    #let label = rect(stroke: stroke-color, radius: 50%, fill: white)[#title]
    #rect(stroke: stroke-color, radius: 10%, width: 100%, {
      place(
        dy: -measure(label).height,
        dx: 100% - 5pt - measure(label).width,
        label,
      )
      pad(body, 0.6em, top: 1em)
    })
  ]
)

#let block-full(title: none, body, stroke-color: luma(200)) = (
  context block(stroke: stroke-color, radius: 10%, width: 100%, {
    if (title != none) {
      place(title, dx: 5pt, dy: measure(title).height / 2)
      pad(line(length: 100%, stroke: stroke-color), top: measure(title).height + 1em)
    }
    pad(body, 1em, top: if (title != none) { 0em } else { 0.6em })
  })
)

#let c(content) = align(center)[#content]
