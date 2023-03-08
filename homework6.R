library(dplyr)
library(tidyverse)
data(iris)

# Question 1
# 150 observations, 5 variables

# Question 2
iris1 <- filter(iris,!Species=="setosa",Sepal.Length>6,Sepal.Width>2.5)
# 56 observations, 5 variables

# Question 3
iris2 <- select(iris1,Species,Sepal.Length,Sepal.Width)
# 56 observations, 3 variables

# Question 4
iris3 <- arrange(iris2,by=desc(Sepal.Length))
head(iris3)

# Question 5
iris4 <- mutate(iris3,Sepal.Area=Sepal.Length*Sepal.Width)
# 56 observations, 4 variables

# Question 6
iris5 <- summarize(iris4,Average.Sepal.Length=mean(Sepal.Length),Average.Sepal.Width=mean(Sepal.Width),Sample.Size=n())
print(iris5)

# Question 7
iris4Species <- group_by(iris4,Species)
iris6 <- summarize(iris4Species,Average.Sepal.Length=mean(Sepal.Length),Average.Sepal.Width=mean(Sepal.Width),Sample.Size=n())
print(iris6)

# Question 8
irisFinal <- iris %>%
  filter(!Species=="setosa",Sepal.Length>6,Sepal.Width>2.5) %>%
  select(Species,Sepal.Length,Sepal.Width) %>%
  arrange(by=desc(Sepal.Length)) %>%
  mutate(Sepal.Area=Sepal.Length*Sepal.Width) %>%
  group_by(Species) %>%
  summarize(Average.Sepal.Length=mean(Sepal.Length),Average.Sepal.Width=mean(Sepal.Width),Sample.Size=n())

# Question 9
irisLonger <- iris %>%
  pivot_longer(cols=Sepal.Length:Sepal.Width:Petal.Length:Petal.Width,names_to="Measure",values_to="Value")
