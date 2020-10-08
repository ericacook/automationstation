#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
ui <- fluidPage(

    # Application title
    titlePanel("Poopie Parser"),
    mainPanel(
        tabsetPanel(
            tabPanel("Welcome Tab",
                img(src = "Image from iOS (2).jpg", height = "50%", width = "50%"),
                "This is a work in progress by: Erica Cook, Jonathan Patzke, Emily Garcia",
            ),
            tabPanel("Samples",
                radioButtons("pgRadio", label = ("Select to Update CSV"),
                             choices = list("Mark sample as Present" = 1, "Mark sample as Ground" = 2),
                             selected = 1
                ),
                textInput("sampleID",
                          label = ("Sample ID to update"),
                          value = "Enter Sample ID..."
                ),
                textOutput("searched_id")
            )
        )
    ),
)

# Define server logic required to draw a histogram
server <- function(input, output) {
    output$searched_id <- renderText({
        paste("You have selected", input$sampleID)
    })

}

# Run the application 
shinyApp(ui = ui, server = server)
