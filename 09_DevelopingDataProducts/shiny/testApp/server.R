library(shiny)

diabetesRisk <- function(glucose) runif(1)

shinyServer(function(input, output) {
  output$prediction <- renderPrint({    
    cat(diabetesRisk(glucose))
  })
})
