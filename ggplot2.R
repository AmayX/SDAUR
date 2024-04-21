View(Placement_Data_Full_Class)

#To understand the relationship between 2 variables, use geom_point()
plot1 = ggplot(Placement_Data_Full_Class, aes(mba_p, salary)) + geom_point()
print(plot1)

plot2 = ggplot(Placement_Data_Full_Class, aes(ssc_p, hsc_p)) + geom_point()
print(plot2)

#Third variable (categorical) using color attribute
plot3 = ggplot(Placement_Data_Full_Class, aes(mba_p, salary, color=gender)) + geom_point()
print(plot3)

#Fourth variable (categorical) using shape attribute
#In scatterplot two numerical and two categorical variables are mapped.
plot4 = ggplot(Placement_Data_Full_Class, aes(mba_p, salary, color=gender, shape=specialisation)) + geom_point()
print(plot4)

#Q1. Find relationship between ssc_p and hsc_p as per gender and hsc_board
plot5 = ggplot(Placement_Data_Full_Class, aes(ssc_p, hsc_p, color=gender, shape=ssc_b)) + geom_point()
print(plot5)
#Therefore, hsc_p and ssc_p are having positive co-relationship

#Boxplot for Univariate Data
plot6 = ggplot(Placement_Data_Full_Class, aes(mba_p)) + geom_boxplot()
print(plot6)

plot7 = ggplot(Placement_Data_Full_Class, aes(mba_p,specialisation)) + geom_boxplot() + geom_point()
print(plot7)

plot8 = ggplot(Placement_Data_Full_Class, aes(mba_p,specialisation)) + geom_boxplot() + geom_point()
print(plot8)

#Find the distribution of salaries as per gender and comment on minimum salary and maximum salary
plot9 = ggplot(Placement_Data_Full_Class, aes(salary,gender)) + geom_boxplot()
print(plot9)
summary(Placement_Data_Full_Class)
#min_salary (M+F) = 2e+05
#max_salary (M) = 
str(Placement_Data_Full_Class)
#facet_warp()
plot10 = ggplot(Placement_Data_Full_Class, aes(salary,gender)) + geom_boxplot() + facet_wrap(~specialisation)
print(plot10)
