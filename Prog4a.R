library(ggplot2)
library(gcookbook)
cabbage_exp
ggplot(cabbage_exp, aes(X = Date, y = Weight, fill = Cultivar)) +
  geombar(stat = "identity", position = "dodge") +
  geomtext(aes(label = weight), vjust = 1.5, column = "white", position = position_dodge(,9), size = 3)
