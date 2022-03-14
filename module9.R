#packages
library(ggplot2)
require(arulesViz)
library(lattice)

#data input
smoking <- read.csv('data/pharmacoSmoking.csv', header = TRUE, sep = ",")

#data frame cleaning/sorting
smoking <- smoking[,-1]
smoking <- subset(smoking, select = -ageGroup2)
smoking <- subset(smoking, select = -ageGroup4)
smoking <- subset(smoking, select = -grp)
smoking <- subset(smoking, select = -id)

#aRules graph
smokingrulestemp <- apriori(smoking, parameter = list(support = 0.1, confidence = 0.4))
smokingruleslift <- smokingrulestemp[quality(smokingrulestemp)$lift > 2.8]
smokingrules <- smokingruleslift[quality(smokingruleslift)$support > 0.01]
plot(smokingrules, method="graph", max = 10)

#ggplot2 graph
ggplot(smoking, aes(x=yearsSmoking, y=priorAttempts, color=relapse)) +
  geom_point() +
  labs(title = "Attempts to Stop Smoking", x="# of years spent smoking", y="# of attempts to quit")

#lattice graph
xyplot(age ~ yearsSmoking, data = smoking,
       main = "Age and Years Spent Smoking")