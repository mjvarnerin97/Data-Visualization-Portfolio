shinyServer(function(input, output){

    output$scatterPlot <- renderPlot({
      if(input$Race == "All Races at Once" & input$Regression == "Yes"){
        ggplot(RiskData,
               aes_string(x = RiskData$Age,
                          y = RiskData[[input$`Time Frame`]])
               )+
          geom_point(aes_string(x = RiskData$Age, 
                                y = RiskData[[input$`Time Frame`]], 
                                fill = RiskData$Race, 
                                color = RiskData$Race), 
                     na.rm = T)+
          geom_smooth(se = 0, aes_string(x = RiskData$Age, 
                                                      y = RiskData[[input$`Time Frame`]], 
                                                      fill = RiskData$Race,
                                                      color = RiskData$Race))+
          labs(x = "Current Age", y = "Diagnosis Chance", fill = "Race", color = "Race")+
          theme_classic()}
      
      else if(input$Race == "All Races at Once" & input$Regression == "No"){
        ggplot(RiskData,
               aes_string(x = RiskData$Age,
                          y = RiskData[[input$`Time Frame`]])
               )+
          geom_point(aes_string(x = RiskData$Age,
                                y = RiskData[[input$`Time Frame`]], 
                                fill = RiskData$Race, 
                                color = RiskData$Race), 
                     na.rm = T)+
          labs(x = "Current Age", y = "Diagnosis Chance", fill = "Race", color = "Race")+
          theme_classic()}
      
      else if(input$Race != "All Races at Once" & input$Regression == "Yes"){
        RiskData <- filter(RiskData, Race == input$Race)
        ggplot(RiskData,
               aes_string(x = RiskData$Age,
                          y = RiskData[[input$`Time Frame`]])
               )+
          geom_point(aes_string(x = RiskData$Age, 
                                y = RiskData[[input$`Time Frame`]], 
                                fill = RiskData[[input$Race]], 
                                color = RiskData[[input$Race]]), 
                     na.rm = T)+
          geom_smooth(se = 0, aes_string(x = RiskData$Age, 
                                                      y = RiskData[[input$`Time Frame`]]))+
          labs(x = "Current Age", y = "Diagnosis Chance (%)")+
          theme_classic()}
      
      else{
        RiskData <- filter(RiskData, Race == input$Race)
        ggplot(RiskData,
               aes_string(x = RiskData$Age,
                          y = RiskData[[input$`Time Frame`]])
               )+
          geom_point(aes_string(x = RiskData$Age, 
                                y = RiskData[[input$`Time Frame`]], 
                                fill = RiskData[[input$Race]], 
                                color = RiskData[[input$Race]]), 
                     na.rm = T)+
          labs(x = "Current Age", y = "Diagnosis Chance (%)")+
          theme_classic()}
  })
})