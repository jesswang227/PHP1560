#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# # Define UI for application that draws a histogram
# ui <- fluidPage(
#   numericInput("num", "Number one", value = 0, min = 0, max = 100),
#   textInput("name", "What's your name?"),
#   passwordInput("password", "What's your password?"),
#   textAreaInput("story", "Tell me about yourself", rows = 3)
#         )
# 
# server <- function(input, output, session) {
#   output$text <- renderText("Hello friend!")
#   output$code <- renderText(paste(input$num))
# }
# 
# # Run the application 
# shinyApp(ui = ui, server = server)




# 
# ui <- fluidPage(
#   titlePanel("censusVis"),
#   
#   sidebarLayout(
#     sidebarPanel(
#       helpText("Create demographic maps with 
#                information from the 2010 US Census."),
# 
#       numericInput("num", "Number one", value = 0, min = 0, max = 100)
#     ),
#     
#     mainPanel(
#       textOutput("selected_var"),
#       textOutput("min_max")
#     )
#   )
# )
# 
# server <- function(input, output) {
#   
#   output$selected_var <- renderText({ 
#     paste("You have selected", input$num)
#   })
# 
#   
# }



ui <- fluidPage(
    titlePanel("censusVis"),

    sidebarLayout(
      sidebarPanel(
        helpText("Create demographic maps with
                 information from the 2010 US Census."),

        numericInput("num", "Number one", value = 0, min = 0, max = 100)
      ),

      mainPanel(
        textOutput("selected_var"),
        textOutput("min_max")
      )
    )
  )

  server <- function(input, output) {

    output$selected_var <- renderText({
      paste("You have selected", input$num)
    })


  }
shinyApp(ui, server)