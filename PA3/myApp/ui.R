library(shiny)
library(plotly)

shinyUI(fluidPage(
  titlePanel("What factors Affect the Number of Harmed Passengers in Great Britain?"),
  sidebarLayout(
    sidebarPanel(
      
      h3("Data Description"), 
      helpText("The Seatbelts dataset was employed to create this app. It provides 
               information on the monthly totals of car drivers in Great Britain 
               killed or seriously injured from Jan 1969 to Dec 1984."), 
      
      h3("Documentation"), 
      helpText("The variables plotted include: "), 
      helpText("1. kms: Distance travelled (km)"), 
      helpText("2. front: Number of front-seat passengers killed/injured"), 
      helpText("3. rear: Number of rear-seat passengers killed/injured"), 
      helpText("Each point's size is proportional to the month's petrol price"), 
      p("Select a variable below to see its distribution across the plot!"), 
      
      selectInput("col_var", "Variable by colour:", 
                  c("Seatbelt law in effect"="law", 
                    "Number of car drivers killed"="DriversKilled",
                    "Number of harmed car drivers"="drivers",
                    "Number of harmed van drivers"="VanKilled")), 
      
      h3("Source"), 
      helpText("Harvey, A. C. and Durbin, J. (1986). The effects of seat belt legislation on British road casualties: A case study in structural time series modelling. Journal of the Royal Statistical Society series A, 149, 187-227.") ), 
    
    mainPanel(
      h3(textOutput("graph_title")),
      plotlyOutput("scatterplot", width="500px", height="500px")))))
      h4(textOutput("caption"))
