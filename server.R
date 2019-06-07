library(shiny)

shinyServer(function(input, output) {
        BMI <-reactive({
                input$weight/(input$height/100)^2
        })
  output$text1 <- renderText(BMI())
  
  output$text2 <- renderText({
          
          if ( BMI()<18.5) {
                  text2 <- "You are Underweight"
          } else {
                  
                  if ( BMI()>=18.5 && BMI()<24.9) {
                          text2 <- "You are Normal Weight"
                  } else {
                          
                          if ( BMI()>=18.5 && BMI()<25)  {
                                  text2 <- "You are Normal Weight"  
                          } else {
                                  
                                  if ( BMI()>=25.0 && BMI()<30)  {
                                          text2 <- "You are OverWeight"
                                  } else {
                                          
                                          if ( BMI()>=30)  {
                                                  text2 <-"You are Obese"
                                                  }
                                          }
                                  }
                          }
                  }
  })
  
  Goal <- reactive({
          22*(input$height/100)^2
  })
  
  output$text3 <- renderText({
          
          if ( input$showGoal == TRUE) {
                  text3 <- Goal()
          } else {
                  
                  if ( input$showGoal == FALSE) {
                          text3 <- "You chose not to see your target weight!"
                  }
          }
  })
})
