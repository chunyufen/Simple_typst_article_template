// ----------
// ---------- This file is generated by Typst, 
// ----------

// ----------
// ---------- metadata for title and header,
// ---------- change paper title at line 11,
// ----------

#let title = [
  Journey to the West
]
// ----------
// ---------- global: page size, margin, header,
// ---------- change paper size at line 19,
// ---------- change margin at line 21,
// ----------

#set page(
  paper: "a4",
  margin: (x: 2.54cm, y: 2.54cm),
  header: align(
    right + horizon,
    title,
  ),
  columns: 2,
  numbering: "1",
)

// ----------
// ---------- we have already set global 2 columns at line 26,
// ---------- title, authors and abstract will be subjected to the global rule of 2 columns,
// ---------- use function 'place' to put title, authors and abstract in 1 column at the top,
// ---------- if you have only 1 author, than delete 2 additional "1fr" from "columns",
// ---------- and delete the 2 additional authors from "align" function,

#place(
  top + center,
  float: true,
  scope: "parent",
  clearance: 2em,
)[
  #align(center, text(17pt)[
  *#title*
  ])
  #grid(
    columns: (1fr, 1fr, 1fr),
    align(center)[
      Nezha Li \
      Flaming Mountain Institute \
      #link("mailto:nezha@flaming.edu")
    ],
    align(center)[
      Muzha Li \
      Flaming Mountain Institute \
      #link("mailto:muzha@flaming.edu")
    ],
    align(center)[
      Jizha Li \
      Flaming Mountain Institute \
      #link("mailto:jizha@flaming.edu")
    ]
  )
  #par(justify: false)[
    *Abstract* \
    #lorem(80)
  ]
]

// ----------
// ---------- this is global setting for justified text,
// ---------- at line 79 by "true"
// ---------- 

#set par(
  justify: true,
  first-line-indent: 1em,
  )

// ----------
// ---------- this sets the global font at line 88 and 89,
// ---------- line 88 is for English and line 89 is for Chinese,
// ---------- you can check what fonts have been installed on your computer,
// ---------- by command line : "typst --fonts",
// ---------- lines 94 and 95 are alternatives for English and Chinese,
// ---------- 
 

#set text(
  font: (
    "Libertinus Serif",
    "STFangsong",
  ),
  // lang: "cn",
  lang: "en",
  region: "ca",
  size: 10pt,
  hyphenate: auto,
)

// ----------
// ---------- first and second level headings,
// ---------- numbering system at line 105,
// ----------  

#set heading(numbering: "1.1. ")

#show heading: it => [
  #set align(center)
  #set text(13pt, weight: "regular")
  #block(smallcaps(it))
]

#show heading.where(
  level: 2
): it => text(
  size: 11pt,
  weight: "regular",
  style: "italic",
  it
)

// ----------
// ---------- numbering system for Appendix at line 129,
// ----------
// ----------

#let appendix(body) = {
  set heading(numbering: "A.", supplement: [Appendix])
  counter(heading).update(0)
  body
}

// ----------
// ---------- bibliography style at line 140,
// ----------


#set bibliography(
  style: "american-psychological-association",
)


// ---------- 
// ---------- starting Table of contests at line 149,
// ---------- starting List of Figures at line 152,
// ---------- starting List of Tables at line 155,
// ---------- 

#outline(
  indent: auto,
)

#outline(target: figure.where(kind: image), title: "List of Figures")

#outline(target: figure.where(kind: table), title: "List of Tables")



#outline(target: heading.where(supplement: [Appendix]), title: [List of Appendices])

// ---------- 
// ---------- main text
// ---------- 

= Introduction

#lorem(50)

#lorem(50)

#lorem(50)

== Summary

#lorem(50)

The risk has been estimated to be $10^6$ to $10^7$ per year @guoValidationVerificationComputer2009.

#lorem(50)

= Literature review

#lorem(50)

It is accepted by @holtCybercrimeDigitalForensics2015 that the use of artificial intelligence (AI) in cybercrime detection has been increasing in recent years.

#lorem(50)

#lorem(50)

#lorem(50)

== Summary

#lorem(50)

#figure(
  image("/images/AI_goddess_of_justice.jpg"),
  caption: [Goddess AI],
) <goddess>

= Methods

#lorem(50)

the methods were developed by @garfinkelDigitalForensicsResearch2010 and @fukamiNewModelForensic2021.

#lorem(50)

#figure(
  table(
    columns: (1fr, auto, auto),
    inset: 10pt,
    align: horizon,
    table.header(
      [], [*Volume*], [*Parameters*],
    ),
    image("/images/cylinder.svg"),
    $ pi h (D^2 - d^2) / 4 $,
    [
      $h$: height \
      $D$: outer radius \
      $d$: inner radius
    ],
    image("/images/dodecahedron.svg"),
    $ sqrt(2) / 12 a^3 $,
    [$a$: edge length],
  ),
  caption: [Table of volumes XYXY],
) <table-volumes>

#lorem(50)

#lorem(50)

#lorem(50)

The first methods was further explained in @app1. The calculations were set out in @app2.

= Results

#show table.cell.where(y: 0): set text(weight: "bold")
#figure(
  table(
    columns: 4,
    stroke: none,

    table.header[Test Item][Specification][Test Result][Compliance],
    // table.hline(),
    [Voltage], [220V ± 5%], [218V], [Pass],
    [Current], [5A ± 0.5A], [4.2A], [Fail],
  ),
  caption: [Probe results for design A],
) <probe-a>

The result of @probe-a is consistent with the findings in @netwok2020 and comparable with @table-volumes. The concept is represented by @goddess.

#lorem(50)

#lorem(50)

#lorem(50)

#lorem(50)

== Summary

#lorem(50)

#lorem(50)

= Conclusion

#lorem(50)

#lorem(50)

== Way forward

#lorem(50)

The way forward is to develop a new model for AI forensic analysis of cybercrime @frowisSafeguardingEvidentialValue2020.

#lorem(50)

#lorem(50)


// ---------- 
// ---------- start to print bibliography at line 299,
// ---------- but need to sent no indent for bibliography at line 296,
// ----------

#set par(
  first-line-indent: 0em,
)

#bibliography("ref.bib")

// ---------- 
// ---------- start to print appendix at line 315,
// ---------- but need to reset back to global indenxt at line 308,
// ----------


#set par(
  first-line-indent: 1em,
)

// ---------- 
// ---------- start to print Appendix A at line 317,
// ----------

#show: appendix

= Tables and Data<app1>

#lorem(50)

#lorem(50)

// ---------- 
// ---------- start to print Appendix A at line 328,
// ----------


= Additional Listings<app2>

#lorem(50)

#lorem(50)



