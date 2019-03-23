#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

# Load the shiny package
library(shiny)

##################################### RADIOBUTTONS ###############################
# 
# # Define UI for the shiny application here
# shinyUI(fluidPage(
#   # fluid pages scale their components in realtime to fill all available browser width.
#   # Header Panel : Create a header panel containing an application title.
#   titlePanel(title = "The title for my first shiny app with calculus"),
#   # SidebarLayout():It creates a layout with a sidebar and main area. 
#   sidebarLayout(
#     # Sidebar panel
#     sidebarPanel(h2("Enter your personal details"),
#                  
#                  #textInput(inputId, label, value)
#                  textInput("name", "Enter your name", ""),
#                  textInput("age", "Enter your age", ""),
#                  
#                  #radioButtons(inputId, label, choices, selected, inline) 
#                  radioButtons("gender", "Select Gender", list("Male", "Female", "Prefer not to answer"), "")
# 
#     ),
#     # Main Panel
#     mainPanel(h4("Personal Information"),
#               textOutput("myname"),
#               textOutput("myage"),
#               textOutput("mygender")
#               
#     )
#   )
# )
# )



############################ SelectInput###############################
# shinyUI(fluidPage(
#   titlePanel("Demostration of the selectInput UI widget in shiny"),
#   sidebarLayout(
#     sidebarPanel(
#       #selectInput(inputId, label, choices, selected, multiple, selectize, width, size) (also selectizeInput())
#       selectInput("statenames", "Select the state", c("California", "Florida", "Texas","New York", "Arizona"), selected = "")
#     ),
#     mainPanel(
#       textOutput("state")
#     )
#   ))
#   )
# 
# 

################################Reactive plots ##################################3
# Define UI for application
shinyUI(fluidPage(
  
  # Header or title Panel 
  titlePanel(h4('Demostration of the renderPlot() - A Histogram with iris dataset', align = "center")),
  # Sidebar panel
  sidebarPanel(
    
    
    #selectInput(inputId, label, choices, selected, multiple, selectize, width, size) (also selectizeInput())
    selectInput("var", label = "1. Select the quantitative Variable", 
                choices = c("Sepal.Length" = 1, "Sepal.Width" = 2, "Petal.Length" = 3, "Petal.Width"=4),
                selected = 3), 
    
    
    #sliderInput(inputId, label, min, max,value, step, round, format, locale,ticks, animate, width, sep, pre, post)
    sliderInput("bin", "2. Select the number of histogram BINs by using the slider below", min=5, max=25, value=15),
    
    #radioButtons(inputId, label, choices, selected, inline) 
    radioButtons("colour", label = "3. Select the color of histogram",
                 choices = c("Green", "Red",
                             "Yellow"), selected = "Green")
  ),
  
  # Main Panel
  mainPanel(
    textOutput("text1"),
    textOutput("text2"),
    textOutput("text3"),
    plotOutput("myhist")
    
  )
  
)
)

