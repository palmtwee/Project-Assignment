library(shiny)

shinyUI(fluidPage(
  titlePanel("Body Mass Index Calculator"),
  sidebarLayout(
    sidebarPanel(
        h1("Height in Centimeters"),
        sliderInput("height","Height", 60, 250, 162),
        h1("Weight in Kilograms"),
        sliderInput("weight","Weight",10,300,65),
        h1("Show Weight Goal"),
        checkboxInput("showGoal", "Show/Hide Goal", value=TRUE)
    ),
    mainPanel(
        h1("Body Mass Index:"),
        h3(textOutput("text1")),
        h3(textOutput("text2")),
        h1("_____"),
        h2("Your Target Weight for Your Height in kg is:"),
        h3(textOutput("text3"))
    )
  )
))
