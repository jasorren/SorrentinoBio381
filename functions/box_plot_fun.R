####################################
# FUNCTION: box_plot
# packages: ggplot2
# purpose: create box plot
# input: dataframe
# output: box plot
# ----------------------------------
box_plot <- function(data=0) {
  
  library(ggplot2)
  plot1 <- ggplot(data,aes(x=Treatment,y=number_of_slugs))+geom_boxplot()
  print(plot1)
}