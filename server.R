library(shiny)

shinyServer(function(input, output, session) {

  values <- reactiveValues()

  init.peakflow <- c(600, 650, 670)
  init.comments <- c("A", "B", "C")

  values$df <- data.frame(peakflow = init.peakflow, comments = init.comments)

  observe({

    if(input$addButton > 0) {
      # create the new line to be added from your inputs
      newLine <- isolate(c(input$pf.value, input$pf.comment))

      # note the unlist of newLine, this prevents a
      # bothersome warning message that the rbind will return regarding
      # rownames because of using isolate.
      isolate(values$df <- rbind(as.matrix(values$df), unlist(newLine)))
    }
  })

  output$table <- renderTable({values$df}, include.rownames=F)
})
