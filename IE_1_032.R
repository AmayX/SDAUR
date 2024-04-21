#Name: Amay Chandravanshi
#PRN No: 121B1B032

#Q1. Create the following dataframe
ID <- c(101,102,103,104,105,106)
Age <- c(45,61,34,33,56,73)
Gender <- c("M","F","F","M","M","F")
Aadhar_Card  <- c("YES", "NO", "YES","YES","NO","YES")
Mobile_No <- c(101,102,103,104,105,106)

df = data.frame(ID,Age,Gender, Aadhar_Card,Mobile_No)
View(df)

#Q2:
data()
View(Titanic)
summary(Titanic)
str(Titanic)

#Q3.
#> healthcare_dataset_stroke_data <- read_csv("E:/Third Year/Statistical Data Analysis using R/Datasets/healthcare-dataset-stroke-data.csv", 
#                                             +     col_types = cols(bmi = col_number()))
#> View(healthcare_dataset_stroke_data)

#Q4.
View(healthcare_dataset_stroke_data)
cnt = sum(is.na.data.frame(healthcare_dataset_stroke_data))
if (cnt = 0)
  print("NA values are not present")
print(cnt)
dt1 = filter(healthcare_dataset_stroke_data, !is.na(bmi))
View(dt1)
dt2= is.na(healthcare_dataset_stroke_data)
View(dt2)

#Q5.
d1 = spread(healthcare_dataset_stroke_data, "ever_married","heart_disease")
View(d1)

#Q6.
d2= gather(healthcare_dataset_stroke_data, work_type, stroke, 2:12)
View(d2)

#Q7.
d3 = filter(healthcare_dataset_stroke_data, ever_married=="NO" & work_type=="Private")
View(d3)

#Q8.
d4 = arrange(healthcare_dataset_stroke_data, gender)
View(d4)

#Q9.
d5 = group_by(healthcare_dataset_stroke_data, gender)
d6 = summarise(d5, average_age=mean(age))
View(d6)
