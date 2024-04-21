#ggplot
View(diamonds)
#We can save a particular generated graphs using the "Export" option in Plots Tab.

#Bar Graph
ggplot(diamonds, aes(x=cut)) + geom_bar()
#      Dataset   aesthetics    grammar of geometry (type of graph you want)    

#Bar Graph with border color
ggplot(diamonds, aes(x=cut)) + geom_bar(color="Red")

#Bar Graph with border color and fill color
ggplot(diamonds, aes(x=cut)) + geom_bar(color="Black", fill="Cyan")

#Bar Graph with border color and fill color and border width
#Usage of size attribute was deprecated in ggplot2 3.4.0, use linewidth instead
ggplot(diamonds, aes(x=cut)) + geom_bar(color="Black", fill="Cyan", linewidth=1.5)

#linewidth requires the color attribute to be set a to a particular value
ggplot(diamonds, aes(x=cut)) + geom_bar(fill="Cyan", linewidth=2)

#Dot Plot
ggplot(diamonds, aes(x=depth,y=price)) + geom_point()

View(CO2)
ggplot(CO2, aes(x=conc,y=uptake)) + geom_point()
d1 = arrange(CO2, conc)
View(d1)
ggplot(d1, aes(x=conc,y=uptake)) + geom_point()
ggplot(d1, aes(x=conc,y=uptake)) + geom_point(size=2)
ggplot(d1, aes(x=conc,y=uptake)) + geom_point(size=2, color="Red")

#Histogram
ggplot(d1, aes(x=uptake)) + geom_histogram(binwidth = 1.5)
#                                          Bin Size
ggplot(d1, aes(x=uptake)) + geom_histogram(binwidth = 1.5, color="Black", fill="Cyan")

#Box Plot
ggplot(d1, aes(x=uptake)) + geom_boxplot()
