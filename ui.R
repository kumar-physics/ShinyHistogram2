library(plotly)

shinyUI(fluidPage(
  br(),
  titlePanel(img(src="logo_bmrb.jpg",height=120,width=120,align="left")),
  titlePanel(h1("Biological Magnetic Resonance Data Bank",align="center")),
  titlePanel(h2("Chemical shift histogram of various atoms in BMRB",align="center",style = "color:black")),
  br(),
  br(),
  #titlePanel(h1("BMRB statistics",align="center",style = "color:coral")),
  fluidRow(column(10, plotlyOutput("plot1"
                                 )
  )
           #column(6, plotOutput("plot2"))
  ),
  #p("Zoom in: Select the region and double click inside the region,Zoom out: Double click indide the plot without any selction",align="center",style = "color:black"),
  fluidRow(
    #column(4,
    #       checkboxGroupInput("aa",
    #                   label=h3("Amino acid"),
    #                   choices = amino_acids,
    #                   selected = unlist(amino_acids))),
    #column(4,
    #       checkboxGroupInput("atm",
    #                   label=h3("Atoms"),
    #                   choices = all_atoms,
    #                   selected = "CB")),
    column(6,
           selectInput("aa",label = h3("Amino acids"),choices = amino_acids,multiple = T,selected = "ALA")),
    column(6,
           selectInput("atm",label = h3("Atoms"),choices = all_atoms,multiple = T,selected = "CA"))
    #column(4,actionButton("goButton",label=strong("Update")))
  )
))

