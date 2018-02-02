library(shiny)


# Define UI for application that draws a histogram
shinyUI(fluidPage(
  headerPanel('MPG vs Displacement for different number of Cylinders and Carburetors'),
  sidebarPanel(
    selectInput('cyl', 'Select # Cylinders (Graph in Cylinders Tab)', as.numeric(unique(mtcars$cyl))),
    selectInput('carb', 'Select # Carburetors (Graph in Carburetors Tab)', as.numeric(unique(mtcars$carb)))
  ),
  mainPanel(
    tabsetPanel(type = "tabs",
                tabPanel("Cylinders", br(), plotOutput('plot1')),
                tabPanel("Carburetors", br(), plotOutput('plot2'))
                )
    
  )
))