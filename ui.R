
library(shiny)


shinyUI(fluidPage(

    # Application title
    titlePanel("Swiss Data"),
    checkboxInput("show_values", "Show/Hide Actual Slope & Intercept values", value = FALSE),
    
    sidebarLayout(
        sidebarPanel(
            h3("Slope"),
            textOutput("slopeOut"),
            h3("Intercept"),
            textOutput("intOut")
        ),

        # Show a the required plot
        mainPanel(
            plotOutput("plot1", brush = brushOpts(id = "brush1"))
        )
    )
))
