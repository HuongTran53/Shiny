#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#


library(shiny)

shinyUI(fluidPage(
    titlePanel("Prediction of travel distance"),
    sidebarLayout(
        sidebarPanel(
            helpText("Prediction distance based on car'speed"),
            helpText("Parameters:"),
            sliderInput(inputId = "speed",
                        label = "Speed",
                        value = 2,
                        min = 2,
                        max = 25,
                        step = 1),
        ),
        
        mainPanel(
            htmlOutput("pText"),
            htmlOutput("pred"),
            plotOutput("Plot", width = "50%")
        )
    )
))
