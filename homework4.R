# QUESTION 1

x <- 1.1 # create variable
a <- 2.2 # create variable
b <- 3.3 # create variable
# part a
z <- x^a^b # arithmetic operation
print(z)
# part b
z <- (x^2.2)^3.3 # arithmetic operation
print(z)
# part c
z <- (3*x^3)+(2*x^2)+1 # arithmetic operation
print(z)

# QUESTION 2

# part a
z <- c(seq(1,8),seq(7,1)) # sequence 1 to 8 followed by a sequence in reverse 7 to 1
print(z)
# part b
z <- c(rep(1,1),rep(2,2),rep(3,3),rep(4,4),rep(5,5)) # repeating 1 once, 2 twice, etc. 
print(z)
# part c
z <- c(rep(5,1),rep(4,2),rep(3,3),rep(2,4),rep(1,5)) # repeating 5 once, 4 twice, etc.
print(z)

# QUESTION 3

cart_coords <- runif(2)
print(cart_coords)
r <- sqrt(cart_coords[1]^2+cart_coords[2]^2) # operation to find hypotenuse
theta <- atan2(cart_coords[2], cart_coords[1]) # arctan to find theta (angle) using the original x and y values
polar_coords <- c(r, theta) # reformatting of hypotenuse and theta into polar coordinates
print(polar_coords)

# QUESTION 4

queue <- c("sheep","fox","owl","ant") # creation of queue
print(queue)
# part a
queue <- c(queue,"serpent") # addition of serpent to queue
print(queue)
# part b
queue <- c(queue[2],queue[3],queue[4],queue[5]) # removal of sheep from queue
print(queue)
# part c
queue <- c("donkey",queue) # placement of donkey at front of queue
print(queue)
# part d
queue <- c(queue[1],queue[2],queue[3],queue[4]) # removal of serpent from queue
print(queue)
# part e
queue <- c(queue[1],queue[2],queue[4]) # removal of owl from queue
print(queue)
# part f
queue <- c(queue[1],queue[2],"aphid",queue[3]) # placement of aphid ahead of ant
print(queue)
# part g
match("aphid", queue) # find where the element "aphid" is in the vector 'queue'

# QUESTION 5

z <- seq(1,100) # sequence of integers 1 to 100
z <- which(!z%%2==0&!z%%3==0&!z%%7==0) # remove integers for which division by two, three, or seven results in a remainder of zero
print(z)