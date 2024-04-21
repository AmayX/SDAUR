#Q1. Collect information of all academic performance
d1 = select(Placement_Data_Full_Class, -gender, -workex, -status, -salary)
View(d1)

#Q2. Find performance of HSC and SSC gender-wise
temp = select(Placement_Data_Full_Class, gender, ssc_p, hsc_p)
View(temp)
d2 = group_by(temp, gender)
View(d2)
d3 = summarize(d2, SSC_avg = mean(ssc_p), HSC_avg = mean(hsc_p))
View(d3)

#Q3. Find average salaries as per specialization of MBA
temp2 = select(Placement_Data_Full_Class, sl_no, specialisation, salary)
View(temp2)
temp2 = filter(temp2, salary!="NA")
View(temp2)
d4 = group_by(temp2, specialisation)
d5 = summarize(d4, avg_salary=mean(salary))
View(d5)

#Q4. Find average salaries as per gender
temp3 = select(Placement_Data_Full_Class, sl_no, gender, salary)
View(temp3)
temp3 = filter(temp3, salary!="NA")
d6 = group_by(temp3, gender)
d7 = summarize(d6, avg_salary=mean(salary))
View(d7)

#Q5. Find average percentage of MBA per specialization  

#Q6. Filter the data for the placed students
d8 = filter(Placement_Data_Full_Class, status=="Placed")
View(d8)

#Q7. Sort the data in ascending order
d9 = arrange(d8, salary)
View(d9)

#Q8. Create a dataset with salary greater than 4 lakh.
d10 = filter(d9, salary>=400000)
View(d10)

#Q9. Spread the data of salary as per the specialization of MBA
d11 = spread(d9, specialisation, salary)
View(d11)

#Q10. Merge the data created in Q9
d12 = gather(d11, "Specialization", "Salary", 14:15)
View(d12)

#Q11. Add a new column that has the average of HSC and SSC marks 
d13 = mutate(Placement_Data_Full_Class, Average = (hsc_p+ssc_p)/2)
View(d13)
