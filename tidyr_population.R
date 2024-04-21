#spread() command
View(population)
d1 = spread(population, year, population)
View(d1)

#gather() command
d2 = gather(d1, "year", "population", 2:20)
View(d2)

