
library(shiny)
# Define UI for application that do the units conversion
shinyUI(fluidPage(
  # Application title
  titlePanel("Simple Units Converter"),
  # Sidebar with selectInput for units and numeric input for value
  sidebarLayout(
    sidebarPanel(
          selectInput("funit","The unit you want to convert From:",
                      c("","Pound","Kilogram","Mile","Kilometer","Fahrenheit","Celsius"),
                      selected = "Pound"),
          selectInput("tunit","The unit you want to convert To:",
                      c("","Pound","Kilogram","Mile","Kilometer","Fahrenheit","Celsius"),
                      selected = "Kilogram"),
          numericInput("val","The value you want to convert:",value=1)
    ),
    # Show a equation of the conversion
    mainPanel(
          h5("only for Pound/Kilogram, Mile/Kilometer and Fahrenhei/Celsius"),
          h3(textOutput("text1"))
    )
  )
))
