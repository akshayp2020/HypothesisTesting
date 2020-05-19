Buyer Ratio
BuyerRatio = read.csv(choose.files())
View(BuyerRatio)

buyer <- BuyerRatio[,-1]
View(buyer)

#Chi-Square Test count data
chisq.test(buyer)# X-squared value = 1.595, df= 3,P- Value = 0.6603
mean(BuyerRatio[,2])#mean = 242.5

mean(BuyerRatio[,3])#mean = 832.5

##T-Test
t.test(BuyerRatio[,-1],alternative = "two.sided",conf.level = 0.95,correct = TRUE,Data=buyr)
#alternative hypothesis: true mean is not equal to 0
#p-value = 0.03285 > 0.05 Reject The Null Hypothesis

