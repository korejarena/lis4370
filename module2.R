assignment2 <- c(16, 18, 14, 22, 27, 17, 19, 17, 17, 22, 20, 22)
myMean <- function(assignment2) 
{ 
return(sum(assignment2)/length(assignment2)) 
}
#This function essentially gives the same output as the mean() function, as shown below
myMean(assignment2)
mean(assignment2)
#This function works because it pulls the values from the assignment2 vector and runs the command accordingly. It would not work if we did the following code
myMean