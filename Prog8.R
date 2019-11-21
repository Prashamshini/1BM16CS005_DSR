library(e1071)
b<-read.csv("C:/Users/Dell/Desktop/7th SEM/DSR/Lab/samplebayes.csv")
head(b)
class(b)
testset<-data.frame(Age="<=30",Income="Medium",JobSatisfaction="No",Desire="Fair",Enrolls="")
testset
b<-rbind(b,testset)
head(b)
traindata <- as.data.frame(b[1:14,])
testdata <- as.data.frame(b[15,])
head(traindata)
testdata

bayesmodel <- naiveBayes(Enrolls ~ Age+Income+JobSatisfaction+Desire,traindata)
bayesmodel
results <- predict (bayesmodel,testdata)
results

modelnew = naiveBayes(Enrolls ~ ., traindata, laplace=.01)
modelnew
resultsnew<-predict(modelnew,testdata)
resultsnew
