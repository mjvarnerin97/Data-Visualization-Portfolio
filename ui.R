shinyUI(fluidPage(
  
  titlePanel("Risk of Cancer Development within a Number of Years from Current Age by Race"),
  
  sidebarLayout(
    sidebarPanel(
      h4("ScatterPlot Options"),
      selectInput("Race", "Select a Race to Visualize", c("All Races at Once", "All Races", "White", "Black", "Asian/Pacific Islander", "American Indian/Alaska Native", "Hispanic")),
      selectInput("Time Frame", "Select a Time Frame to Visualize", 
                  list("Within 10 Years of Current Age" = "Diagnosis10Yrs", "Within 20 Years of Current Age" = "Diagnosis20Yrs", "Within 30 Years of Current Age" = "Diagnosis30Yrs", "Eventually" = "DiagnosisEventually")),
      selectInput("Regression", "Show Regression Curves?", c("Yes", "No"))
            ),
    
    mainPanel(
      plotOutput("scatterPlot", click = "click"),
      h5("The above scatterplot shows the risk of being diagnosed with cancer within a certain time frame from a person's current age. For example, this graph can show the likelihood of a 20 year old Hispanic person being diagnosed with Cancer within the next 20 years of their life. This scatterplot is able to display a person's cancer diagnosis risk 10, 20, and 30 years from the person's current age, in addition to their overall eventual chance of being diagnosed with cancer. Furthermore, it is possible to choose a specific race to visualize in order to see possible trends in diagnosis risks by race.")
    )
  )
))