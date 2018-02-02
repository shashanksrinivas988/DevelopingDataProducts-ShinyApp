library(shiny)
library(ggplot2)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  data_cyl <- reactive({mtcars[mtcars$cyl == input$cyl,]})
  data_carb <- reactive({mtcars[mtcars$carb == input$carb,]})
  
  output$plot1 <- renderPlot({
    
      ggplot(data_cyl(), aes(x = mpg, y = disp))+
        geom_point()+
        labs(x = "MPG")+
        labs(y = "Displacement")
  })
    
    output$plot2 <- renderPlot({
      
      
      ggplot(data_carb(), aes(x = mpg, y = disp))+
        geom_point()+
        labs(x = "MPG")+
        labs(y = "Displacement")
    
  })
})