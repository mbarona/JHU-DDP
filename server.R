library(shiny)
library(maps)
df <- read.csv("data.csv", stringsAsFactors = F)

namevec <- map(database = "state", col = "blue",fill=T, namesonly=TRUE)


shinyServer(
  function(input, output){
    
    output$trans_stats <- renderTable({subset(df[,1:8], State == input$stateInp)}, include.rownames = F)
    output$geo_chart <- renderPlot({map(database = "state",col = c("white", "blue")[1+(namevec %in% tolower(input$stateInp) )],fill=T)})
    
   
    output$get_to_work <- renderTable({df[df$State == input$stateInp,9:14]}, include.rownames = F)

    output$text1 <- renderText({df[df$State == input$stateInp,15]})
    
    
    })
    
  
