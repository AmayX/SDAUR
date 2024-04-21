df = data.frame(A=c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20),B=c(1,4,9,16,25,36,49,64,81,100,121,144,169,196,225,256,289,324,361,400))
View(df)

#B is dependent variable and A is independent variable
#To get Regression Line, B = m    *    A +  C
#                            slope          intercept

model = lm(B~A, data = df)
model
# B = 21 * A - 77
# Let A = 12
pred = 21 * 12 - 77
pred
summary(model)
#If p < 0.05, then there exists a relation between A and B and the regression model is significant
#R^2 presents accuracy of the model, R^2 = 0.9435