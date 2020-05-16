library(shiny)


ui <- fluidPage(
    theme = shinythemes::shinytheme("flatly"),

    titlePanel("Scan input dataset to make sure the bot actually came up with that"),

    sidebarLayout(
        sidebarPanel(
            tags$head(tags$script(src = "enter_button.js")), 
            textInput("search", "Search string:"),
            actionButton("go", "Go!")
        ),

        mainPanel(
           verbatimTextOutput("possible")
        )
    )
)

server <- function(input, output) {
    input_data <- readLines("input_dataset.txt")
    
    newSearch <- eventReactive(input$go, {
        agrep(input$search, input_data, ignore.case = TRUE, value = TRUE)
    })

    output$possible <- renderText({
        if (length(newSearch()) == 0) {
            return("Nada! Zilch! Bupkis!")
        } else {
            paste0(newSearch(), collapse = "\n")
        }
    })
}

shinyApp(ui = ui, server = server)
