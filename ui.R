library(shiny)

ui <- fluidPage(
        titlePanel("Blood pressure assessment"),
        
        fluidRow(
                column(3,
                       h3("Systolic BP"),
                       h4("The first/top number"),
                       sliderInput("x1", label = "mm Hg", min = 90, max = 200,
                                   value = 90, animate = TRUE)),
                column(3,
                       h3("Diastolic BP"),
                       h4("The second/bottom number"),
                       sliderInput("x2", label = "mm HG", min = 50, max = 120, 
                                   value = 50, animate = TRUE))),
        column(3,
               h4("Your range"),
               verbatimTextOutput("ranges")),
        column(3,
               br(),
               actionButton("submit", "Submit")))

