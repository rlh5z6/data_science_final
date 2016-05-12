baseball <- read.csv("~/Desktop/baseball_tweet_volume.csv")
View(baseball)
baseball_2014 <- subset(baseball, theYear == 2014)
baseball_2015 <- subset(baseball, theYear == 2015)
baseball_2016 <- subset(baseball, theYear == 2016)


library(ggplot2)
qplot(baseball_2014$theWeek, baseball_2014$counter, xlab = "Week", ylab="Number of Tweets", main="Volume of Tweets in 2014", geom="smooth")
qplot(baseball_2015$theWeek, baseball_2015$counter, xlab = "Week", ylab="Number of Tweets", main="Volume of Tweets in 2015", geom="smooth")
qplot(baseball_2016$theWeek, baseball_2016$counter, xlab = "Week", ylab="Number of Tweets", main="Volume of Tweets in 2016", geom="smooth")