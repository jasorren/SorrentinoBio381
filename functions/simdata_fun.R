####################################
# FUNCTION: modeldata
# packages: none
# purpose: create simulated dataframe
# input: none
# output: dataframe
# ----------------------------------
simdata <- function(number1=0,
                    number2=0,
                    average1=0,
                    average2=0,
                    var1=0,
                    var2=0) {
  
  data1 <- round(abs(rnorm(n=number1,mean=average1,sd=var1)))
  dataframe1 <- data.frame(1:number1,data1)
  names(dataframe1) <- list("Treatment","number_of_slugs")
  dataframe1["Treatment"][dataframe1["Treatment"] >= 1] <- "treatment_1"
  
  data2 <- round(abs(rnorm(n=number2,mean=average2,sd=var2)))
  dataframe2 <- data.frame(1:number2,data2)
  names(dataframe2) <- list("Treatment","number_of_slugs")
  dataframe2["Treatment"][dataframe2["Treatment"] >= 1] <- "treatment_2"
  
  fulldataframe <- rbind(dataframe1,dataframe2)
}