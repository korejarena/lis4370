library(data.table)
library(plyr)

indata <- read.csv("~/lis4370/data/Assignment 6 Dataset.txt")
indata


studentAvg <- ddply(indata, "Sex", transform, Grade.Average = mean(Grade))


remap_sex <- as.numeric(as.factor(indata$Sex))
df_remap <- data.frame(remap_sex, indata$Sex)

mean_df <- mean(as.numeric(remap_sex))
head(df_remap$indata.Sex[df_remap$remap_sex==round(mean_df)], 1)



i_students <- subset(studentAvg, grepl("i", studentAvg$Name, ignore.case = T))
write.table(studentAvg, "~/lis4370/data/avgGender.csv", sep = ",", row.names = F, col.names = T)
write.table(i_students, "~/lis4370/data/avgGenderIstudents.csv", sep = ",", row.names = F, col.names = T)