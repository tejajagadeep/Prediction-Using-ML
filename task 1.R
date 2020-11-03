#Predict the percentage of a student based on the no. of study hours
#What will be predicted score if a student studies for 9.25 hrs/ day?

#read file
data=read.csv(file.choose(),header = T)
View(data)
head(data)
summary(data)

#scatterplot
plot(data$Hours,data$Scores)

#correlation
cor(data$Hours,data$Scores)

#simple linear regression
r<-lm(Scores~Hours,data)

#add regression line
abline(r)
summary(r)

#names to access regression object
names(r)

#plot fitted values
plot(data$Hours,r$fitted)

#coefficient
coef(r)

#predicting the score for number of hours
predict(r,data.frame(Hours=9.25))
