# Import required packages
library(shiny)
library(plotly)

# Load and preprocess data
accidents <- data.frame(Seatbelts)
accidents$law <- factor(accidents$law)

# Define the server functions
shinyServer(function(input, output) {
  
  # Text output
  output$graph_title <- reactive({ paste("Scatter plot of Seatbelts dataset colored by", input$col_var) })
  
  # Plot the graph
  output$scatterplot <- renderPlotly({ 
    graph <- plot_ly(x=accidents$kms, y=accidents$front, z=accidents$rear, type="scatter3d", 
            color=accidents[, input$col_var], size=accidents$PetrolPrice, mode="markers")
    graph <- graph %>% layout(scene=list(
      xaxis=list(title="Distance driven (km)"), 
      yaxis=list(title="Front passengers killed"), 
      zaxis=list(title="Rear passengers killed")))
    graph
    })
  })

