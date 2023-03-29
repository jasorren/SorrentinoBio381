####################################
# FUNCTION: statistics
# packages: none
# purpose: conduct a t-test with input dataframe
# input: dataframe
# output: t-test results
# ----------------------------------
statistics <- function(data=0) {
  
  t_test <- t.test(data$number_of_slugs~data$Treatment)
  t_test
}