#Amay: Investigate how employment length (emp_length) affects loan approval rates and interest rates.

#Exploratory Data Analysis
summary(loan_working_copy)

plot1 = ggplot(loan_working_copy, aes(x=emp_length)) + geom_bar()
print(plot1)
#Inference: People with 10+ years of experience take the loans maximum number of loans.

plot2 = ggplot(loan_working_copy, aes(x=int_rate)) + geom_boxplot()
print(plot2)
#Inference: The median amount of interest rate for all applicants is 11.99

plot3 = ggplot(loan_working_copy, aes(x=loan_status)) + geom_bar()
print(plot3)
#Inference: Maximum amount of people are currently in the process of paying the loan.

plot4 = ggplot(na.omit(loan_working_copy), aes(x=annual_inc, y=loan_amnt, shape=loan_status)) + geom_point()
print(plot4)
#Inference: People with lower incomes tend to take loans more
#Inference: People with higher incomes tend to pay off their loans faster

plot5 = ggplot(na.omit(loan_working_copy), aes(x=emp_length,y=int_rate)) + geom_point()
print(plot5)

plot6 = ggplot(na.omit(loan_working_copy), aes(x=int_rate)) + geom_boxplot() + facet_wrap(~emp_length)
print(plot6)
