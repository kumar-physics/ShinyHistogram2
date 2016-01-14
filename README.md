# ShinyHistogram
Chemical shift histogram of various atoms in the BMRB database

Required R libraries

1. plotly
2. shiny
3. htr
4. reshape2
5. ggplot2

If the abve packages are not installed in your system, then you may install those packages using the follwing command in your R

install.packages(c('shiny','ggvis','httr','reshape2','ggplot2','plotly'))

Once you have all the necessary packages in your system, you may use the following commands to run the visualization

library(shiny)
runGitHub("ShinyHistogram2","uwbmrb")

