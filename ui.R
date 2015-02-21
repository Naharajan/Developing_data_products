

shinyUI(fluidPage(theme = "bootstrap.css",
  pageWithSidebar(
    
    #Application title
    headerPanel("Body Mass Index Calculator"), 
    
    sidebarPanel(
      numericInput("height", "Input your Height in metres", 1.78, min = 1.0, max = 5.0),
      numericInput("weight", "Input your Weight in kg", 85,  min = 30, max = 250),
      submitButton("My BMI!") 
    ),
    
    mainPanel(
      h3("BMI calculation: Body mass index (BMI) is a measure of relative size based on the mass and height of an individual."),
      h3("This simple Shiny app calculates a person's BMI based on their height (in metres) and weight (in kilograms) 
         information and assigns to the following BMI categories."),
      h5("BMI less than 18.5        :- Underwieght"), 
      h5("BMI between 18.5 and 24.9 :- Normal"),
      h5("BMI between 25 and 29.9   :- Overweight"),
      h5("BMI greater than 30       :- Obese"),
      h4("Your height in metres"),
      verbatimTextOutput("heights"), 
      h4("Your weight in kilograms"),
      verbatimTextOutput("weights"),
      h4("Your Body Mass Index (BMI)"),
      verbatimTextOutput("bmi"),
      h4("Your BMI Status"),
      verbatimTextOutput("bmi_status")
    )
  )
  )
)