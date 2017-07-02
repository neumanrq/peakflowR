library(shiny)

shinyServer(function(input, output, session) {
  values    <- reactiveValues()
  values$df <- read.csv(file = "data/peakflow.csv", header = TRUE)

  observeEvent(input$addRow, {
    currentTime <- as.character(Sys.time())
    newRow      <- c(input$pf.value, input$pf.comment, currentTime)
    values$df   <- rbind(as.matrix(values$df), unlist(newRow))

    write.csv(values$df,
              file      = "data/peakflow.csv",
              row.names = FALSE)
  })

  output$table <- renderTable({values$df}, include.rownames = TRUE)
})
