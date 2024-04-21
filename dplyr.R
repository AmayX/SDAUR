View(mtcars)

#select() command
d1 = select(mtcars, mpg:drat)
View(d1)
d2 = select(mtcars, -drat)
View(d2)

#filter command
d3 = filter(mtcars, wt>5)
View(d3)

#slice command
d4 = slice(mtcars,1:10)
View(d4)

#arrange command
d5 = arrange(mtcars, mpg)
View(d5)
d6 = arrange(mtcars, gear, wt)
View(d6)

#group_by + summarize()
d7 = group_by(mtcars, gear)
View(d7) 
d8 = summarize(d7,average=mean(wt))
View(d8)

# %>% Operator
d9 = mtcars %>% select(1:9) %>% filter(wt>=3) %>% arrange(cyl) %>% slice(1:5)
View(d9)

data()
View(storms)

#Q1. Remove the columns with NA from storms
d10 = select(storms, -category, -tropicalstorm_force_diameter, -hurricane_force_diameter)
View(d10)

#Q2. Sort the data daywise and hour-wise
d11 = arrange(storms, day, hour)
View(d11)

#Q3. Extract the data for tropical storm
d12 = filter(storms, status=="tropical storm")
View(d12)
