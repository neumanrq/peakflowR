library(shiny)

shinyServer(function(input, output, session) {
  values <- reactiveValues()

  init.peakflow <- c(600, 650, 670)
  init.comments <- c("A", "B", "C")

  values$df <- data.frame(peakflow = init.peakflow, comments = init.comments)

  observeEvent(input$addRow, {
    newLine <- isolate(c(input$pf.value, input$pf.comment))
    isolate(values$df <- rbind(as.matrix(values$df), unlist(newLine)))
  })

  output$table <- renderTable({values$df}, include.rownames = F)
})
