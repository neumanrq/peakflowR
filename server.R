library(shiny)

shinyServer(function(input, output, session) {
  values    <- reactiveValues()
  values$df <- read.csv(file = "data/peakflow.csv", header = TRUE)

  observeEvent(input$addRow, {
    currentTime <- as.character(Sys.time())
    newRow      <- c(currentTime,
                     input$pf.value,
                     input$pf.cough,
                     input$pf.breathlessness,
                     input$pf.pollen,
                     input$pf.vacation,
                     input$pf.regularMedicine,
                     input$pf.emergencyMedicine)
    values$df   <- rbind(as.matrix(values$df), unlist(newRow))

    write.csv(values$df,
              file      = "data/peakflow.csv",
              row.names = FALSE)
  })

  output$table <- renderTable({values$df}, include.rownames = TRUE)
})
