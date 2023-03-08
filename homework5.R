# Question 1
n_dims <- sample(size=1,x=3:10)
n_dims_vec <- seq(from=1,to=(n_dims)^2)
shuf_vec <- sample(x=n_dims_vec,size=length(n_dims_vec),replace=FALSE)
m <- matrix(data=shuf_vec,nrow=sqrt(length(shuf_vec)))
print(m)
m <- t(m)
print(m)
sum(m[1,])
mean(m[1,])
sum(m[sqrt(length(shuf_vec)),])
m <- eigen(m)
typeof(m$values) # data type of m$values is "complex"
typeof(m$vectors) # data type of m$vectors is "complex"

# Question 2
my_matrix <- matrix(data=runif(n=16),nrow=4)
my_logical <- seq(1:100)
my_logical <- my_logical<50
my_letters <- letters
my_letters <- sample(x=letters,size=26,replace=FALSE)
my_list <- list(my_matrix,my_logical,my_letters)
new_list <- list(my_matrix[2,2],my_logical[2],my_letters[2])
typeof(new_list[[1]])
typeof(new_list[[2]])
typeof(new_list[[3]])
new_vector <- c(new_list[[1]],new_list[[2]],new_list[[3]])
typeof(new_vector)

# Question 3
my_unis <- runif(n=26,min=0,max=10)
my_letters <- LETTERS
my_letters <- sample(size=26,x=my_letters)
dFrame <- data.frame(my_unis,my_letters)
dFrame[sample(size=4,x=1:26),1] <- NA
which(!complete.cases(dFrame))
print(dFrame)
dFrame[order(dFrame$my_letters),]
print(dFrame)
mean(dFrame[which(complete.cases(dFrame)),1])
