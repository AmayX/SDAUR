#Case Study: Loan_Sanction_Test
View(loan_sanction_test)
#Q1. Find which applicants based on gender are more?
#Use Bar Graph
plot1 = ggplot(loan_sanction_test, aes(x=Gender)) + geom_bar()
print(plot1)
#Male Applicants are higher in frequency

#Q2. Draw a graph including gender based variations in property area
plot2 = ggplot(loan_sanction_test, aes(x=Gender,fill=Property_Area)) + geom_bar(pos="dodge")  
print(plot2)

#Used for comparison of frequencies
plot3 = ggplot(loan_sanction_test, aes(x=Gender,fill=Property_Area)) + geom_bar(pos="fill")  
print(plot3)

#Q3. What are the mean of loan amount sanctioned based on categories under Self_Employed? Summarize these categories tot find the total loan sanctioned.
d3 = na.omit(loan_sanction_test)
View(d3)
d1 = group_by(d3, Self_Employed)
View(d1)
d2 = summarize(d1, avg_amount_sanctioned=mean(LoanAmount))
View(d2)

#Q4. If co-applicant's income is zero then find the mean of the loan amount and loan amount term. And compare to that if the co-applicant's income is not zero
d4 = filter(na.omit(loan_sanction_test), CoapplicantIncome==0)
View(d4)
d6 = summarise(d4, mean_loan_amount=mean(LoanAmount), mean_loan_amount_term=mean(Loan_Amount_Term))
View(d6)

d5 = filter(na.omit(loan_sanction_test), CoapplicantIncome!=0)
View(d5)
d7 = summarise(d5, mean_loan_amount=mean(LoanAmount), mean_loan_amount_term=mean(Loan_Amount_Term))
View(d7)
#Therefore, if Co-Applicants income is not zero then the mean loan amount is higher.

#Q5. Find the boxplots/frequency plots/ histograms, for loan amount according to education column and gender
plot3 = ggplot(na.omit(loan_sanction_test), aes(x=LoanAmount, color=Education)) + geom_boxplot() + facet_wrap(~Gender)
print(plot3)
