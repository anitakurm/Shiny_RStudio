
#all stats and computations here, make it foundable for shiny using shinyServer function


library(shiny)

##################################### RADIOBUTTONS ###############################
# shinyServer(
#   
#   function(input, output) {
#     output$myname <- renderText({
#       # paste("My Name is :", input$name)
#       input$name
#     })
#     output$myage <- renderText({
#       # paste("My Age is : ", input$age)
#       input$age
#     })
#     
#     output$mygender <- renderText({
#       #paste("My Age is : ", input$gender)
#       input$gender
#     })
#   }
# )
# 
# 

############################ SelectInput###############################

# shinyServer(
#   
#   function(input,output){
#   output$state <- renderText(input$statenames)
#   }
# )


################################Reactive plots ##################################3

data(iris) # Load the iris dataset


shinyServer(
  
  
  function(input, output) {
    
    # Creating the reactive function so that the expression inside this function is reactive
    #also the value of the evaluated expression could be used by other render statements,
    #avoiding evaluation of expression multiple times.
    
    #reactive(x, env, quoted,label, domain)
    colm <- reactive({
      as.numeric(input$var) #as.numeric of the input of question 1: Select a quantative measure
      
    })
    
    output$text1 <- renderText({ 
      # colm = as.numeric(input$var) # commented , this expression is actually part of the reactive function
      paste("Data set variable/column name is", names(iris[colm()]))
      
    })
    
    output$text2 <- renderText({ 
      paste("Color of histogram is", input$colour)
    })
    
    output$text3 <- renderText({ 
      paste("Number of histogram BINs is", input$bin)
    })
    
    output$myhist <- renderPlot(
      
      {
        # colm = as.numeric(input$var) # commented , this expression is actually part of the reactive function. 
        hist(iris[,colm()], col =input$colour, xlim = c(0, max(iris[,colm()])), main = "Histogram of Iris dataset", breaks = seq(0, max(iris[,colm()]),l=input$bin+1), xlab = names(iris[colm()]))}
      
    )    
  }
)
