firstdata <- data.frame(
  Freq=c(0.6, 0.3, 0.4, 0.4, 0.2, 0.6, 0.3, 0.4, 0.9, 0.2),
  bloodp=c(103, 87, 32, 42, 59, 109, 78, 205, 135, 176),
  first=c(1, 1, 1, 1, 0, 0, 0, 0, NA, 1),
  second=c(0, 0, 1, 1, 0, 0, 1, 1, 1, 1),
  finaldecision=c(0, 1, 0, 1, 0, 1, 0, 1, 1, 1))

boxplot(firstdata$bloodp~firstdata$first)

#labels for boxplots
boxplot(firstdata$bloodp~firstdata$first, main="Blood Pressure w/ General Doctor",
        xlab="First Checkup", ylab="Blood Pressure", names=c("Good", "Bad"))

boxplot(firstdata$bloodp~firstdata$second, main="Blood Pressure w/ External Doctor",
        xlab="Second Checkup", ylab="Blood Pressure", names=c("Good", "Bad"))

boxplot(firstdata$bloodp~firstdata$finaldecision, main="Head of Unit's Decision for Immediate Care",
        xlab="Decision", ylab="Blood Pressure", names=c("Low Need", "High Need"))


hist(firstdata$bloodp, main="Blood Pressure of Patients at Local Hospital",
     xlab="Blood Pressure", ylab="Frequency of Visits")