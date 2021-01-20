#
# Final Project for Data Projects Course
#

#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("Height Predictions"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            helpText("Prediction of the child's height based on gender and parent's height"),
            helpText("Parameters:"),
            sliderInput(inputId = "inFh",
                        label = "Father's height (in):",
                        value = 69,
                        min = 50,
                        max = 90,
                        step = 1),
            sliderInput(inputId = "inMh",
                        label = "Mother's height (in):",
                        value = 64,
                        min = 50,
                        max = 80,
                        step = 1),
            radioButtons(inputId = "inGen",
                         label = "Child's gender: ",
                         choices = c("Female"="female", "Male"="male"),
                         inline = TRUE)
        ),
        
        mainPanel(
            htmlOutput("pText"),
            htmlOutput("pred"),
            plotOutput("Plot", width = "50%")
        )
    )
))
