##Hpothesis Testing 

Cutletsdata = read.csv(choose.files())
View(Cutletsdata)
attach(Cutletsdata)
str(Cutletsdata)

summary(Cutletsdata)
# Chisq test
chisq.test(Cutletsdata) # p vallue = 1
#Hypothesis
t.test(Cutletsdata)
#Alternative Hypothesis (H1 = True Mean is not equal to 0)

#t-test
t.test(Cutletsdata$Unit.A, mu = 0,alternative = "two.sided")
t.test(Cutletsdata$Unit.B, mu = 0,alternative = "two.sided")



boxplot(Cutletsdata)
plot(Cutletsdata)