library(shiny)


shinyUI(pageWithSidebar(
  headerPanel('Peakflow Analysis'),

  sidebarPanel(
    numericInput("pf.value", label = "L/min", value = 600),
    textInput("pf.comment", label = "Optional comment", value = ""),
    actionButton("addRow", "Add")
  ),

  mainPanel(
    tableOutput("table")
  )
))
