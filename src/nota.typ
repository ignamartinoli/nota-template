#let nota(
  right_logo: "aeti.jpg",
  left_logo: "utn.svg",
  city: "Córdoba",
  date: datetime.today(),
  ref: "Pedido",
  to: "Al Consejo Departamental de Sistemas de Información",
  salutation: "S___/___D",
  body,
) = {
  assert.eq(type(date), datetime)

  set text(lang: "es", size: 11pt)

  let header = {
    grid(
      align: center,
      columns: (auto, 1fr, auto),
      rows: (auto, 5pt),
      image(right_logo),
      [
        *UNIVERSIDAD TECNOLÓGICA NACIONAL*

        *FACULTAD REGIONAL CÓRDOBA*

        *CONSEJEROS DE SISTEMAS AETI*
      ],
      image(left_logo),
      grid.cell(colspan: 3)[
        #line(length: 100%, stroke: (thickness: 0.6pt, paint: black))
      ],
    )
  }

  let footer = {
    line(length: 100%, stroke: 0.6pt)
    align(center)[
      *AETI*

      *Agrupación de Estudiantes Tecnológicos Independientes*
    ]
  }

  set page(
    header: header,
    // header-ascent: 15% + 0pt,
    footer: footer,
  )

  align(
    right,
    [#city, #date.display("[day] de [month] de [year]")],
  )

  v(8mm)

  text(weight: "bold")[Ref.: #ref]
  linebreak()
  to
  linebreak()
  salutation

  // v(8mm)

  body
}
