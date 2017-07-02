library(shiny)

shinyUI(
  fluidPage(
    titlePanel('Peakflow Analysis'),

    fluidRow(
      column(6,
        wellPanel(
          numericInput("pf.value", label = "l/min", value = 600),
          textInput("pf.comment", label = "Optional comment", value = ""),
          actionButton("addRow", "Add")
        )
      ),
      column(12,
        mainPanel(
          tableOutput("table")
        )
      )
    )
  )
)
