var<-read.csv("C:/Users/Dell/Desktop/7th SEM/DSR/Lab/Mult_Reg_Yield.csv")
head(var)
set.seed(1234)
ind<-sample(2,nrow(var),replace=TRUE,prob=c(0.7,0.3))
ind
length(ind)
training<-var[ind==1,]
testing<-var[ind==2,]

model<-lm(X.Yield ~ Time +Temperature,data=training)
model
summary(model)
plot(X.Yield ~ Time,training, main = "CS005")
abline(model,col="red")
modelnew<-lm(X.Yield ~ Time,data=training)
modelnew
summary(modelnew)
plot(X.Yield ~ Time,training, main= "CS005")
abline(modelnew,col="blue")

newypred<-fitted(modelnew)                   
newypred
pred<-predict(modelnew,training)             
pred
testpred<-predict(modelnew,testing)
testpred
predict(model,data.frame(Time=200,Temperature=240))
predict(modelnew,data.frame(Time=200,Temperature=240))
plot(modelnew,which=1, main="CS005")  
