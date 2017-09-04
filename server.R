#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#
library(shiny)
ageDetails <- function(date1)  as.integer(Sys.Date()-as.Date(date1))
shinyServer(
  function(input, output) {
    output$years <- renderPrint({as.numeric(ageDetails(input$date1))/365})
    output$months <- renderPrint({as.numeric(ageDetails(input$date1))/12})
    output$days <- renderPrint({as.numeric(ageDetails(input$date1))})
  }
)
