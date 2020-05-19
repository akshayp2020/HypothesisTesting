#CostomerOreder


CostomerOreder = read.csv(choose.files())
View(CostomerOreder)
attach(CostomerOreder)
str(CostomerOreder) # compactly display the internal sturcuture

#Create Dummy Variable for the categorical data
library(caret)

copy1 <- dummyVars("~.",data = `CostomerOreder`,fullRank = F)

cof <- data.frame(predict(copy1, newdata = `CostomerOreder`))
str(cof)
View(cof)

######Chi Square Test
chisq.test(cof)
#P Value is 1 which is greater than 0.05 , so we accept null hypothesis

#####T-Test
t.test(cof)
#mean of x 0.5
#95 percent confidence interval:
#0.4799819 0.5200181
#alternative hypothesis: true mean is not equal to 0
