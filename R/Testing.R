#T test
View(diamonds)

#Sample of size 1000
s1 = popsamp(1000, diamonds)
View(s1)

print(mean(s1$price))
print(mean(diamonds$price))

# average of population = 3932.8
# average of sample = 3875.816

#Apply t-test for one sample
#H_not (Null Hypothesis) = Average price of diamonds is 3875.816
#H (alternate hypothesis) = Average price of diamonds is not 3875.816

#mu = mean of the sample
t.test(diamonds$price, mu = 3875.816)

#As conf.level increases the interval decreases and vice versa
t.test(diamonds$price, mu = 3875.816, conf.level = 0.9)

#2 sample t-test
View(Placement_Data_Full_Class)
data = na.omit(Placement_Data_Full_Class)
plt = ggplot(data, aes(x=salary, color=gender)) + geom_boxplot()
print(plt)
#In 2 sample t-test, you will check whether there is significant difference between average of 2 samples,
#This test can be applied on 2 independent samples.
#H_not = No difference between average salaries of male and female.
#H = Difference between average salaries of male and female.
t.test(data$salary~data$gender)
#Conclusion: H_not is rejected as p-value < 0.05.

#Paired t-test on a paired dataset
df = data.frame(x=c(100,12,33,44,55,64,72,28,92,120),y=c(100,120,130,90,80,70,40,10,90,10))
View(df)
#H_not = x and y are dependent.
#H = x and y are independent.
t.test(df$x, df$y, paired = TRUE)
#Conclusion: Since p > 0.05, variables are dependent on each other