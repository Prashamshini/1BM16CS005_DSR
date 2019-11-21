library(visualize)
library(BSDA)
rural <- read.csv("Rural.csv")
urban <- read.csv("Urban.csv")
xrbar=mean(rural)
xrbar
xurbar=mean(urban)
xurbar
var(rural)
sd(rural)
var(urban)
sd(urban)

# Obtaining t-calculated value
t.test(x=rural,y=urban,var.equal = TRUE,conf.level = 0.95)

# Obtain t value for two sided test at 0.05 significance levels
# From t distribution table or t-significant,t-critical
qt(p=0.05/2,df=18,lower.tail = FALSE)
visualize.t(stat=c(-2.9886,2.9886),df=18,section="tails")
visualize.t(stat=c(-2.100922,2.100922),df=18,section="tails")
