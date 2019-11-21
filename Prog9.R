library("rpart")
library("rpart.plot")

dt <- read.csv("C:/Users/Dell/Desktop/7th SEM/DSR/Lab/DT.csv")
mydata <- data.frame(dt)
colnames(mydata) <- c("play", "outlook", "Temperature", "Humidity", "Wind")
head(mydata)

fit<-rpart(play ~ .,method="class",data=mydata,control=rpart.control(minsplit=1),parms=list(split='information'))
fit
str(fit)
rpart.plot(fit,type=4,extra=1, main = "CS005")
rpart.plot(fit,type=4,extra=2,clip.right.labs=FALSE,varlen=0,faclen=0, main = "CS005")
