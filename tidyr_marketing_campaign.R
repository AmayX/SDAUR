#spread() command
View(marketing_campaign)
d1 = spread(marketing_campaign, Marital_Status, Income)
View(d1)

#gather() command
d2 = gather(marketing_campaign, "Type", "Purchases", 16:19)
View(d2)

#separate() command
d3 = separate(marketing_campaign, Dt_Customer, c("Day","Month","Year"), sep="-")
View(d3)

#unite() command
d4 = unite(d3, Dt_Customer, c("Day","Month","Year"), sep="/")
View(d4)
