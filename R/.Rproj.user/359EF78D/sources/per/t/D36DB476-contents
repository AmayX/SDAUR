library(pastecs)
View(iris)

# Gives first 6 observations of dataset
head(iris)
head(iris,19) # gives first 19 rows of data set

# Returns the structure of dataset
str(iris)

min(iris$Petal.Length)
range(iris$Petal.Length)

min(iris$Sepal.Length)
median(iris$Sepal.Length)

quantile(iris$Sepal.Length, 0.25)
quantile(iris$Sepal.Length, 0.75)
sd(iris$Sepal.Length)
var(iris$Sepal.Length)

# Gives summary of the dataset
summary(iris)

# It provides the summary of data as per the all Species
by(iris, iris$Species, summary)

stat.desc(iris)

lapply(iris[,1:4], sd) # or lapply(iris[1:4], sd)

# ---------------------------------------------------------------------------- #
library(summarytools)

descr(iris, headings = FALSE) # or descr(iris)

#-----------------------------------------------------------------------------
library(dplyr)
Temp = select(iris, -Species)
cor(Temp)

library(corrplot)
df = cor(Temp)
corrplot(df)
corrplot(df, method = "number")
corrplot(df, method = "pie")

# ------------------------------------------------------------------------------
# For placement dataset
t = filter(Placement_Data_Full_Class, status=="Placed")
d = select(t,1,3,5,8,11,13,15)
View(d)
descr(d)
cor(d)
