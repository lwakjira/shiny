library(shiny)
library(ggplot2)

ed_levl<-read.csv("data/USEdLevelbyState.csv",sep=",")


shinyServer(
  function(input, output) {
    output$oState <- renderPrint({input$State})
    output$oEdLvl<-renderPrint({input$EdLvl})
    state1 <- reactive({ed_levl[ed_levl$State.Abbr %in% input$State,]})
    
    output$ohigh<-renderPrint({paste(state1()$High.school.graduate.or.more,"%")})
    output$obach<-renderPrint({paste(state1()$Bachelor.s.degree.or.more,"%")})
    output$oadv<-renderPrint({paste(state1()$Advanced.degree.or.more,"%")})
  }
)
