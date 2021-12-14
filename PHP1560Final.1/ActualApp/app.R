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
    titlePanel("Austin Real Estate Price Estimator 2017-2021"),

    sidebarLayout(
      sidebarPanel(
        helpText("Find an estimated price of a property using its characteristics below."),

        numericInput("propTRInput", "Property Tax Rate", value = 0, min = 0, max = 3),
        numericInput("garageSpacesInput", "Number of Garage Spaces", value = 0, min = 0, max = 100),
        numericInput("hasCoolingInput", "If property has air conditioning or not (1 for yes, 0 for no", value = 0, min = 0, max = 1),
        numericInput("hasGarageInput", "If property has garage or not (1 for yes, 0 for no", value = 0, min = 0, max = 1),
        numericInput("hasAssociationInput", "If property has homeowner's association or not (1 for yes, 0 for no", value = 0, min = 0, max = 1),
        numericInput("hasHeatingInput", "If property has heating or not (1 for yes, 0 for no", value = 0, min = 0, max = 1),
        numericInput("hasSpaInput", "If property has spa or not (1 for yes, 0 for no", value = 0, min = 0, max = 1),
      ),

      mainPanel(
        textOutput("propTROutput"),
        textOutput("min_max")
      )
    )
  )

  server <- function(input, output) {

    output$propTROutput <- renderText({
      paste("You have selected", input$propTRInput)
    })


  }
shinyApp(ui, server)