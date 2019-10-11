
library(shiny)
# Define server logic for unit conversion
shinyServer(function(input, output) {
      output$text1 = renderText({
            f<- input$funit
            t<- input$tunit
            va<- input$val
            out <-1
            if (f=="Pound" & t=="Kilogram"){
                  out<- round(va*0.45359237,2)
            } else if(f=="Kilogram" & t=="Pound"){
                  out <- round(va*2.20462262,2)
            }else if(f=="Mile" & t=="Kilometer"){
                  out<- round(va*1.609344,2)
            }else if(f=="Kilometer" & t=="Mile"){
                  out<- round(va*0.621371192,2)
            }else if(f=="Fahrenheit" & t=="Celsius"){
                  out<- round((va-32)/1.8,2)
            }else if(f=="Celsius" & t=="Fahrenheit"){
                  out<- round(1.8*va+32,2)
            }else if(f==t){
                  out<-va
            }else{
                  out<- "Too complicated for me!"
            }
            paste(va, " ",f," = ",out, " ",t)
            })
      
})
