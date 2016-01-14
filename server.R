library(plotly)

dat=read.csv('http://www.bmrb.wisc.edu/ftp/pub/bmrb/relational_tables/nmr-star3.1/Atom_chem_shift.csv',header=T)
shinyServer(function(input, output, session) {

  # You can access the value of the widget with input$select, e.g.




 
  output$plot1<-renderPlotly({
    input$goButton
    gg<-ggplot(subset(dat,Comp_ID %in% input$aa & Atom_ID %in% input$atm))+
      geom_histogram(aes(x=Val,
                         color=Atom_ID,
                         fill=Comp_ID
                         #linetype=Atom_ID
                         ),binwidth=0.1,position='identity',alpha=0.5)+
      theme(legend.position="bottom")
      #coord_cartesian(xlim = ranges$x)
    p<-ggplotly(gg)
    p
  })
 



  #output$plot2<-renderPlot({
   # ggplot(subset(dat,Comp_ID %in% input$aa & Atom_ID %in% input$atm &
    #                Val < max(ranges$x) & Val > min(ranges$x)))+
     # geom_density(aes(x=Val,color=Atom_ID,fill=Comp_ID),alpha=0.5)
  #})


})

