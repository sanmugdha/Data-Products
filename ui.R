#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/


library(shiny)

# Define UI for application that draws a histogram
shinyUI(pageWithSidebar(
  headerPanel("Calculate your Age in days,months,years"),
  sidebarPanel(
    dateInput("date1", "Date:", value = "2001-01-01"),
    submitButton('Calculate The Age Parts!')
  ),
  mainPanel(
    h3('Your Age Details are as follows:'),
    h4('Age in Year'),
    verbatimTextOutput("years"),
    h4('Age in Months'),
    verbatimTextOutput("months"),
    h4('Age in Days'),
    verbatimTextOutput("days")
  )
)
)