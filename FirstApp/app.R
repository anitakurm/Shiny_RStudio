#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#
# 
# library(rsconnect)
# library(shiny)
# 
# #Define UI for application that draws sentiment analysis visualizations
# ui <- fluidPage( 
#   #Layer tabPanels on top of each other and navigate between them
#   navlistPanel(
#     tabPanel("Mean sentiment over time",
#              sidebarLayout(
#                      sidebarPanel(
#                         sliderInput("bins",
#                                     "Number of bins:",
#                                     min = 1,
#                                     max = 50,
#                                     value = 30)
#                      ),
# 
#                      # Show a plot of the generated distribution
#                      mainPanel(
#                         plotOutput("distPlot")
#                      )),
#     tabPanel("tab 2", "contents"),
#     tabPanel("tab 3", "contents"))
#   
#   ))
# 
# # Define server logic required to draw SA visualizations
# server <- function(input, output) {
#     data=read.csv('C:/Users/JARVIS/Desktop/Uni/Thesis/data scraping/BachelorProject/useformodelling.csv')
#    output$distPlot <- renderPlot({
#       # generate bins based on input$bins from ui.R
#       x    <- data$proximityH
#       #bins <- seq(min(x), max(x), length.out = input$bins + 1)
# 
#       # draw the histogram with the specified number of bins
#       hist(x, breaks = bins, col = 'darkgray', border = 'white')
#    })
# }

# # Define UI for application that draws a histogram
# ui <- fluidPage(
#    
#    # Application title
#    titlePanel("Sentiment analysis"),
#    
#    
#    
#    
#    # Sidebar with a slider input for number of bins 
#    sidebarLayout(
#       sidebarPanel(
#          sliderInput("bins",
#                      "Number of bins:",
#                      min = 1,
#                      max = 50,
#                      value = 30)
#       ),
#       
#       # Show a plot of the generated distribution
#       mainPanel(
#          plotOutput("distPlot")
#       )
#    )
# )
# 
# # Define server logic required to draw a histogram
# server <- function(input, output) {
#    
#    output$distPlot <- renderPlot({
#       # generate bins based on input$bins from ui.R
#       x    <- faithful[, 2] 
#       bins <- seq(min(x), max(x), length.out = input$bins + 1)
#       
#       # draw the histogram with the specified number of bins
#       hist(x, breaks = bins, col = 'darkgray', border = 'white')
#    })
# }

# Run the application 
shinyApp(ui = ui, server = server)

# #deploy app to the server
# rsconnect::deployApp('C:/Users/JARVIS/Desktop/Uni/self-development/Shiny_RStudio')
