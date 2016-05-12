hashtags <- read.csv("~/Desktop/hash.csv")
View(hashtags_2015)

hashtags$Date <- paste(hashtags$theMonth, hashtags$theDay, sep = "-" )

hashtags_2015 <- subset(hashtags, theYear == 2015)
View(hashtags_2015)

#Plot top hashtags from 10/12/14 - 11/5/14
hashtags_post <- subset(hashtags_2015, (theMonth == 10 & theDay >= 12) | (theMonth == 11 & theDay <= 5))
View(hashtags_post)

df <- data.frame(hashtags_post$Date,hashtags_post$RoyalsCount, hashtags_post$TakeTheCrownCount, hashtags_post$LGMCount, hashtags_post$SFGiantsCount)
View(df)

library(plyr)
df <- rename(df, c("hashtags_post.Date"="Date", "hashtags_post.WorldSeriesCount"="#WorldSeries", "hashtags_post.RoyalsCount"="#Royals", "hashtags_post.TakeTheCrownCount"="#TakeTheCrown", "hashtags_post.LGMCount"="#LGM", "hashtags_post.SFGiantsCount"="#SFGiants"))
df <- rename(df, c("hashtags_post.Date"="Date", "hashtags_post.RoyalsCount"="#Royals", "hashtags_post.TakeTheCrownCount"="#TakeTheCrown", "hashtags_post.LGMCount"="#LGM", "hashtags_post.SFGiantsCount"="#SFGiants"))

df_long <- melt(df, id="Date") 
View(df_long)

ggplot(df_long, aes(x=Date, y=value, colour=variable, group = 1)) + 
  geom_point() + 
  ylab("Number of Tweets") +
  ggtitle("Tweet Volume vs. Date")

library(ggplot2)
qplot(hashtags_post$Date, hashtags_post$WorldSeriesCount, xlab = "Month - Date", ylab="Number of Tweets", main="Volume of Tweets Containing #WorldSeries - 2015")
qplot(hashtags_post$Date, hashtags_post$TakeTheCrownCount, xlab = "Month - Date", ylab="Number of Tweets", main="Volume of Tweets Containing #TakeTheCrown - 2015")
qplot(hashtags_post$Date, hashtags_post$RoyalsCount, xlab = "Month - Date", ylab="Number of Tweets", main="Volume of Tweets Containing #Royals - 2015")
qplot(hashtags_post$Date, hashtags_post$LCMCount, xlab = "Month - Date", ylab="Number of Tweets", main="Volume of Tweets Containing #LGM - 2015")
