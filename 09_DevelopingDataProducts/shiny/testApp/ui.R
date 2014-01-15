library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Hello Shiny!"),
  sidebarPanel(
    numericInput("glucose", "Glucose level mg/dL", 
                 80, min = 60, max =  140, step = 5 ),
    
  ),
  mainPanel(
    h3('Results of simulation'),
    verbatimTextOutput("prediction")
    )
))