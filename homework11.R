reg_stats <- function(d=NULL) {
  if(is.null(d)) {
    x_var <- runif(10)
    y_var <- runif(10)
    d <- data.frame(x_var,y_var)
  }
  . <- lm(data=d,d[,2]~d[,1])
  . <- summary(.)
  stats_list <- list(slope=.$coefficients[2,1],
                     p_val=.$coefficients[2,4],
                     r2=.$r.squared)
  return(stats_list)
}

# Global variables
file_folder <- "homework11files/"
n_files <- 3
file_out <- "homework11stats.csv"
file_names <- list.files(path=file_folder)

# Create data frame to hold file summary statistics
ID <- seq_along(file_names)
file_name <- file_names
slope <- rep(NA,n_files)
p_val <- rep(NA,n_files)
r2 <- rep(NA,n_files)
stats_out <- data.frame(ID,file_name,slope,p_val,r2)

for (i in seq_along(file_names)) {
  data <- read.table(file=paste(file_folder,file_names[i],sep=""),
                     sep=",",
                     header=TRUE)
  d_clean <- data[complete.cases(data),]
  . <- reg_stats(d_clean)
  stats_out[i,3:5] <- unlist(.)
}

ggplot(sh, aes(x=number_of_slugs, y=mean_slug_dry_mass)) + geom_point() + geom_smooth(method=lm)
ggplot(cn, aes(x=number_of_slugs, y=mean_slug_dry_mass)) + geom_point() + geom_smooth(method=lm)
ggplot(bca, aes(x=number_of_slugs, y=mean_slug_dry_mass)) + geom_point() + geom_smooth(method=lm)


