# make five simple numeric vectors
buff.tail <- c(10,1,37,5,12)
garden.bee <- c(8,3,9,6,4)
red.tail <- c(18,9,12,4,-1)
carder.bee <- c(8,27,6,32,23)
honey.bee <- c(12,13,16,9,10)

# join the vectors to make dataframe
bees.frame <- data.frame(buff.tail, garden.bee, red.tail, carder.bee, honey.bee)
bees.frame

# create row labels for the data frame
rownames(bees.frame) <- c("Thistle", "Vipers", "Golden Rain", "Yellowalfala", "Blackberry")
bees.frame
