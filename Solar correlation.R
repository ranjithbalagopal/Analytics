
library(corrplot)
solar1 =  read.csv("C:/Users/Ranjithbalagopal/Downloads/Data Analytics Works1.csv",check.names = FALSE,fileEncoding="UTF-8-BOM")



m = cor(solar1)
corrplot(m,method = "color",addCoef.col=1,cl.cex = .8,tl.cex = .8,number.cex = 0.65)



indxTrain <- createDataPartition (y = solar$Interest.in.solar.purchase , p=0.75, list=FALSE) 


library(DMwR)
training$Interest.in.solar.purchase <- as.factor(training$Interest.in.solar.purchase)

Smote.data <- SMOTE(Interest.in.solar.purchase ~ .,training,perc.over = 400,perc.under = 120)

