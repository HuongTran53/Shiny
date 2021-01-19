#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#
library(shiny)
library(datasets)
data(cars)


# 1st step: pass inches to cm

# linear model
model <- lm(dist ~ speed, data = cars)

shinyServer(function(input, output) {
    output$pText <- renderText({
        paste("Speed is: ", input$speed , "mile/hour")
    })
    
    output$pred <- renderText({
        df <- data.frame(speed = input$speed)
        pred <- predict(model, newdata = df)
        paste("The distance taken to stop is: ", round(pred, 3), "miles")
    })
    
        
})
