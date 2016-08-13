library(shiny)
df <- read.csv("data.csv", stringsAsFactors = F)
#proper=function(x) paste0(toupper(substr(x, 1, 1)), tolower(substring(x, 2)))

shinyUI(pageWithSidebar(
  #Application title
  headerPanel("Transportation in Numbers by State"),
  
  sidebarPanel(
    
    selectInput('stateInp', 'Select State', df$State),
    submitButton('Submit')
    
  ),
  mainPanel(
  
    plotOutput('geo_chart'),
    h4('STATISTICS'),
    tableOutput('trans_stats'),
    h6('* Public Road Length is in miles'),
    h6('* Population, Employment, Licensed Drivers, Registered Vehicles, No. of Workers - are in millions per unit '),
    h6('* All figures are based on 2013 data'),
    br(),
    h4('HOW RESIDENTS GET TO WORK (in percentage %)'),
    tableOutput('get_to_work'),
    br(),
    h4('Mean Travel time to work (in minutes)'),
    textOutput('text1')
    )
))