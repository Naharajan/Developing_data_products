bmi_calculator <- function(height, weight) {
  (weight/(height^2))
  }

 shinyServer(
   function(input, output){
  output$heights<- renderPrint({input$height})
  output$weights<-renderPrint({input$weight})
  bmi_output<-reactive({bmi_calculator(input$height, input$weight)})
  output$bmi<-renderPrint({bmi_output()})
  #output$bmi_status<-renderPrint({bmi_output$bmi_status})
  #output$bmi_status<- renderPrint({ifelse (bmi_calculator(input$height, input$weight)> 30, "Obese", ifelse(bmi_calculator(input$height, input$weight)<18.5, "Underweight", "Normal"))})
  output$bmi_status<- renderPrint({ifelse (bmi_output() > 30, "Obese", 
                                           ifelse(bmi_output()<18.5, "Underweight", 
                                                  ifelse(bmi_output()<29.9 & bmi_output()>25, 
                                                         "Overweight", "Normal")))})
   }
)