server <- function(input, output) {
  
  output$Leader_Main <- DT::renderDataTable(D_Combine_Data)
  
  output$coorplot <- renderPlot({
    plot(D_Combine_Data$WEIGHT, D_Combine_Data[[input$Variables]],
         xlab = "Weight",
         ylab = "Your Variable")
  })
  
}


# Run the application 
shinyApp(ui = ui, server = server)
