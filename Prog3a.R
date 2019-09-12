# Prog2
buff.tail <- c(10,1,37,5,12)
garden.bee <- c(8,3,9,6,4)
red.tail <- c(18,9,12,4,-1)
carder.bee <- c(8,27,6,32,23)
honey.bee <- c(12,13,16,9,10)
bees.frame <- data.frame(buff.tail, garden.bee, red.tail, carder.bee, honey.bee)
bees.frame
rownames(bees.frame) <- c("Thistle", "Vipers", "Golden Rain", "Yellowalfala", "Blackberry")
bees.frame

# create matrix object from data in Prog2
bees.mat <- data.matrix(bees.frame)
bees.mat

#  make a List using the plant names to include in the list along with the original data
bees.list <- list(rownames(bees.frame), bees.mat)
