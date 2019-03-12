library(shiny)

#Define UI for app
ui <- fluidPage(
  # App title
  titlePanel("Network Intellisense"),
  
  # Sidebar layour for input values
  sidebarLayout(
    sidebarPanel(
      sliderInput(inputId = "bins","Please Select Bin Size: ",
                  min = 1, max=50, value= 30)
    ),
    
    # Main panel for displaying output
    mainPanel(
      #Output : different visualizations that implements different algorithms from network theory  
      plotOutput(outputId = "distPlot")
    )
  )
)


