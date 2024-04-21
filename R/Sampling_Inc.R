#Sampling 
df = data.frame(a=c(1,2,3,4,5,6,7,8,9,10))
obtain_sys = function (N,n) {
  k = ceiling(N/n)
  r = sample(1:k,1)
  seq(r, r+k*(n-1),k)
}
sys_sample_df = df[obtain_sys(nrow(df),5)]

#for supermarket dataset

sys_sample = supermarket_sales[obtain_sys(10,4)]
View(sys_sample)

#Stratified Sampling
str_A = subset(supermarket_sales,Branch=="A") 
View(str_A)
str_B = subset(supermarket_sales,Branch=="B") 
View(str_B)
str_C = subset(supermarket_sales,Branch=="C") 
View(str_C)

s1 = popsamp(30, str_A)
View(s1)
s2 = popsamp(30, str_B)
View(s2)
s3 = popsamp(30, str_C)
View(s3)

sample_final = rbind(s1,s2,s3)
View(sample_final)

#Diamond dataset
View(diamonds)
#Randomly select a sample of 100 from the diamond dataset
sys_sample = popsamp(100, diamonds)
View(sys_sample)