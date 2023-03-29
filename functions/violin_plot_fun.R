####################################
# FUNCTION: violin_plot
# packages: ggplot2
# purpose: create violin plot
# input: dataframe
# output: violin plot
# ----------------------------------
violin_plot <- function(data=0) {
  
  library(ggplot2)
  plot1 <- ggplot(data,aes(x=Treatment,y=number_of_slugs)) + 
    geom_violin()
  print(plot1)
}

