treatment1Data <- round(abs(rnorm(n=150,mean=2,sd=1)))
treatment2Data <- round(abs(rnorm(n=150,mean=10,sd=15)))

treatment1Dataframe <- data.frame(1:150,treatment1Data)
names(treatment1Dataframe) <- list("Treatment","number_of_slugs")
treatment1Dataframe["Treatment"][treatment1Dataframe["Treatment"] >= 1] <- "treatment_1"

treatment2Dataframe <- data.frame(1:150,treatment2Data)
names(treatment2Dataframe) <- list("Treatment","number_of_slugs")
treatment2Dataframe["Treatment"][treatment2Dataframe["Treatment"] >= 1] <- "treatment_2"

fullDataframe <- rbind(treatment1Dataframe,treatment2Dataframe)

fullDataframe$Treatment <- as.factor(fullDataframe$Treatment)

t_test <- t.test(fullDataframe$number_of_slugs~fullDataframe$Treatment)
t_test

library(ggplot2)
plot1 <- ggplot(fullDataframe,aes(x=Treatment,y=number_of_slugs))+geom_boxplot()
print(plot1)
