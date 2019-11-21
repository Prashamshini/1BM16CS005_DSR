bankdata <- read.delim("Bankdata.csv")
bankdata
newCol <- vector(mode = "numeric", length = length(bankdata$income))
bankdata$num <- seq.int(nrow(bankdata))
write.table(bankdata, file = "Bankdatav2.tsv", sep"\t", row.names = F)
