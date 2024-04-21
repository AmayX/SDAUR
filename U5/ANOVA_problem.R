###########One way ANOVA###############

# form a data frame and merge it to get sumaary for ANOVA#######
Front<-c(82, 83, 97, 93, 55, 67, 53)
Moddle<-c(83, 78, 68, 61, 77, 54, 69, 51, 63)
Back<-c(38, 59, 55, 66, 45, 52, 52, 61)

or 

####Import a data and apply following steps############

View(CO2)
####Get summary of variable along three samples#######
library(dplyr)
d1 = group_by(CO2, Treatment) %>%
  summarise(
    count = n(),
    mean = mean(conc, na.rm = TRUE),
    sd = sd(uptake, na.rm = TRUE)
  )
d1
########plot a boxplot##################
boxplot(conc ~ uptake, data = CO2,
        xlab = "uptake", ylab = "conc",
        frame = FALSE, col = c("#00AFBB", "#E7B800", "#FC4E07"))


############apply ANOVA command##########################
res.aov <- aov(conc ~ uptake, data = CO2)

#Get a summary
summary(res.aov)

##Print the result of ANOVA test
print(res.aov)


#####Import a data and select a sample including three or more level
View(marketing_campaign)
table1<-table(marketing_campaign$Marital_Status) ####apply one way anova and see the result
####here random sampling is needed