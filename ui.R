library(shiny)

shinyUI(
  fluidPage(

    fluidRow(

      column(12,
        column(4,
          titlePanel('Peak Flow Analysis')
        )
      ),

      column(12,
        column(4,
          p("Fill in the information that describes your current situation",
            em("right now."),
            "Medicine consumption refers to the time span since last entry."
          ),

          wellPanel(
            numericInput("pf.value", label = "Current peakflow (l/min) 🌬️ ", value = 600),
            selectInput('pf.cough', 'Cough', c('None', 'some', 'much')),
            selectInput('pf.breathlessness', 'Breathlessness', c('None', 'some', 'much')),
            textInput("pf.comment", label = "Optional comment", value = ""),
            br(),
            checkboxInput('pf.pollen', 'I seem to struggle from pollen flying around   🌼   '),
            checkboxInput('pf.vacation', 'I am on vacation right now 🏖️ '),
            br(),
            numericInput("pf.regularMedicine", label = "Number of hubs (regular meds) 💊 ", value = 0),
            numericInput("pf.emergencyMedicine", label = "Number of hubs (emergency meds) 🆘", value = 0),
            actionButton("addRow", "Add this to dataset")
          )
        ),

        column(8,
          tabsetPanel(
            tabPanel(
              "Nice graphs"
            ),
            tabPanel(
              "Raw data", tableOutput("table")
            )
          )
        )
      )
    )
  )
)
