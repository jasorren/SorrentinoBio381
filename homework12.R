df <- read.csv("combinedslugdata.csv")

library(ggplot2)

p1 <- ggplot(data=df) +
  aes(x=Location,y=number_of_slugs) +
  geom_boxplot() + 
  labs(x="Sampling location",
       y="Number of slugs per sample")
p1 + theme_classic(base_size=12.5,base_family="Courier")

p2 <- ggplot(data=df) +
  aes(x=number_of_slugs,
      y=total_slug_dry_mass) +
  geom_point(size=1) +
  geom_smooth(method="lm",color="black") +
  labs(x="Number of slugs per sample",
       y="Total slug mass per sample (g)")
p2 + theme_classic(base_size=12.5,base_family="Courier")

p3 <- ggplot(data=df) +
  aes(x=number_of_slugs,
      y=mean_slug_dry_mass) +
  geom_point(size=1) +
  geom_smooth(method="lm",color="black") +
  labs(x="Number of slugs per sample",
       y="Mean slug mass per sample (g)")
p3 + theme_classic(base_size=12.5,base_family="Courier")

p4 <- ggplot(data=df) + 
  aes(x=Type,
      y=number_of_slugs) +
  geom_boxplot() +
  labs(x="Spotted lanternfly status",
       y="Number of slugs per sample")
p4 + theme_classic(base_size=12.5,base_family="Courier")
