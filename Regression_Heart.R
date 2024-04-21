#Whether heart disease is normally distributed
df = select(heart, biking, smoking, heart.disease)
View(df)
summary(df)

#Whether dependent variable is normally distributed
plot = ggplot(df, aes(x=heart.disease)) + geom_boxplot()
print(plot)
plot = ggplot(df, aes(x=heart.disease)) + geom_histogram()
print(plot)

#Find relationship between dependent and independent variables
plot = ggplot(df, aes(x=biking,heart.disease)) + geom_point()
print(plot) #Strong negative correlation
plot = ggplot(df, aes(x=smoking,heart.disease)) + geom_point()
print(plot) #Weak positive correlation

#Find correlation matrix
cor(df)
#There are strong negative effects of biking habits on heart disease
#There are weak positive effects of smoking habits on heart disease

#Multi_Linear Regression for Heart Disease Data
model1 = lm(heart.disease~biking+smoking, data = df)
model1

# heart.disease = (-0.2001) * biking + (0.1783) * smoking + 14.9847
summary(model1)
#Therefore our model is significant
