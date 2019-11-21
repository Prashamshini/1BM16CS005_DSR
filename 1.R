path <- "D:/Desktop/DSR"
setwd(path)
data_sample <- read.csv("Realestate.csv")
plot(data_sample$sqfoot, data_sample$price)
