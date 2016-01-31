library(shiny)
library(ggplot2)

st<- c("AL","AK","AZ","AR","CA","CO","CT","DE","DC","FL","GA","HI","ID","IL","IN","IA","KS","KY","LA","ME","MD","MA","MI","MN","MS","MO","MT","NE","NV","NH","NJ","NM","NY","NC","ND","OH","OK","OR","PA","RI","SC","SD","TN","TX","UT","VT","VA","WA","WV","WI","WY")
shinyUI(pageWithSidebar(

titlePanel("Comparison of your Education Level to Education attainment of your State",windowTitle=""),

sidebarPanel(
selectInput('EdLvl','Select your highest education level',as.list(c("High school graduate or more",	"Bachelor's degree or more",	"Advanced degree or more"))),
selectInput('State','Select State you live in',as.list(st)),
submitButton('submit')
),


mainPanel(
h4('For your Education Level,you entered'),
verbatimTextOutput("oEdLvl"),
h4('For your State,you entered'),
verbatimTextOutput("oState"),
h3("Your State's Education Attainment Level for high school or more is"),
verbatimTextOutput("ohigh"),
h3("Your State's Education Attainment Level for Bachelor's Degree or more is"),
verbatimTextOutput("obach"),
h3("Your State's Education Attainment Level for Advanced Degree or more is"),
verbatimTextOutput("oadv")
)
))
