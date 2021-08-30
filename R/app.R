library(shiny)

C_P3_P4_Scores <- c("Missing", "C.i", "C.co", "C.oc", "Cr.5", "Cr.75", "Cr.c",
                    "R.i", "R.25", "R.5", "R.75", "R.c", "A.5")

M1_M2_M3_Scores <- c("Missing","C.i", "C.co", "C.oc", "Cr.5", "Cr.75", "Cr.c",
                     "R.i", "Cl.i", "R.25", "R.5", "R.75", "R.c", "A.5")

############################################################################

ui <- fluidPage(
  fluidRow(
    column(2, selectInput("sex", label = "Sex", choices = c("Female", "Male")))
  ),
  
  fluidRow(    
    column(2,
           selectInput("Canine", label = "Canine", choices = C_P3_P4_Scores,
                       selected = "Missing")),
    
    column(2,
           selectInput("P3", label = "P3", choices = C_P3_P4_Scores,
                       selected = "Missing")),
    column(2,
           selectInput("P4", label = "P4", choices = C_P3_P4_Scores,
                       selected = "Missing")),
    
    column(2,
           selectInput("M1", label = "M1", choices = C_P3_P4_Scores,
                       selected = "Missing")),
    
    column(2,
           selectInput("M2", label = "M2", choices = C_P3_P4_Scores,
                       selected = "Missing")),
    
    column(2,
           selectInput("M3", label = "M3", choices = C_P3_P4_Scores,
                       selected = "Missing"))
  )
  
  # fluidRow(
  #   column(12,
  #          plotOutput("plot", height = "600px", width = "100%")
  #   )
  # )
  
)

server <- function(input, output, session) {
  

}

# Run the application 
shinyApp(ui = ui, server = server)
