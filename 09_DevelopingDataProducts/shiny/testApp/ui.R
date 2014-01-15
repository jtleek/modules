library(shiny)

shinyUI(pageWithSidebar(
  
  headerPanel("Glucose prediction"),
  
  sidebarPanel(),
  
  mainPanel()
))

#    h3('Results of prediction'),
#    verbatimTextOutput("prediction")
