#Server logic that implements different aglorithms
library(igraph)

server <- function(input, output) {
  
  # Simulate binomial random network (Erdos-Renyi)

  # Plot output
  output$distPlot <- renderPlot({
  # Initialize values
  N <- 10
  p <- .1
  g <- erdos.renyi.game(N,p)
  kvec <- degree(g)
  x <- kvec
  bins <- seq(min(x), max(x), length.out = input$bins + 1)

  hist(x, breaks= bins, col="#75AADB", border ="white",
       xlab="Degree", ylab="frequency", main ="Degree histogram of Erdos-Renyi Network")
  })
}
