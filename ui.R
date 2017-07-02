library(shiny)

shinyUI(pageWithSidebar(
  headerPanel('Peakflow Analysis'),

  sidebarPanel(
    numericInput("pf.value", label="Value measured in L/min", value=""),
    textInput("pf.comment", label="Optional comment", value="Enter optional comments here"),
    actionButton("addRow", "Add")
  ),

  mainPanel(
    tableOutput("table")
  )
))
