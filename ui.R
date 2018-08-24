# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.

library(shiny)

# Define UI for application
shinyUI(fluidPage(
  
  # title
  titlePanel("Customer Scoring Engine"),
  
  # Sidebar with input variables 
  sidebarLayout(
    sidebarPanel(
       numericInput(inputId="SumAssured", label="Sum Assured", 
                    value=0,min=0, max=10000000),
       numericInput(inputId="TotalPremiumPayable", label="Total Premium Payable", 
                    value=0,min=0, max=10000000),
       selectInput(inputId="PayMode", label="Payment Mode", 
                    choices = list("Cash deposit"="0","Check off"="1","Direct debit"="2","Cheque"="3","EFT"="4","M-PESA"="5")),
       numericInput(inputId="Age", label="Age", 
                    value=0,min=0, max=120),
       selectInput(inputId = "Gender", label="Gender", 
                   choices = list("Female"="2","Male"="1")),
       selectInput(inputId="MaritalStatus", label="Marital Status", 
                   choices = list("Null"="0","Married"="1","Engaged"="4","Divorced"="3","Single"="2")),
       numericInput(inputId="Term", label="Term", 
                    value=10,min=0, max=50)
      ),
    
    # get prediction
    mainPanel(
      actionButton("Enter", "Get Score"),
      htmlOutput(""),
      htmlOutput("text")
      
    )
  )
))

#runApp('C:/Users/walkerro/Desktop/opiyo')
