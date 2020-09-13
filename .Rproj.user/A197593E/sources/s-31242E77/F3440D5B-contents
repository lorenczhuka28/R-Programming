
data(cars) # load dataframe

# plot is short for scatterplot
plot(cars) # since cars has only 2 variables, first column x , second column y
plot(x = cars$speed, y = cars$dist) # makes sense
plot (x = cars$dist, y = cars$speed) # does not make sense

plot(x= cars$speed, y = cars$dist, xlab = "Speed")
plot(x = cars$speed, y = cars$dist, ylab = "Stopping Distance")
plot(x = cars$speed, y = cars$dist, xlab = "Speed", ylab = "Stopping Distance")
plot(cars, main = "My Plot") # graph title
plot(cars, sub = "My Plot Subtitle") # graph subtitle
plot(cars, col = 2) # red plotted points
plot(cars, xlim = c(10,15)) # limit x axis from 10 to 15
plot(cars, pch = 2) # triangle plotting points
# ?points - change shape of the symbols

data(mtcars)
boxplot(formula = mpg ~ cyl, data = mtcars) # plot cyl(x) and mpg(y)
hist(mtcars$mpg) # histogram
# study the ggplot2 package