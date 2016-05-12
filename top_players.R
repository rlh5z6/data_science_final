#Plot top tweets for Daniel Murphy from 10/12/15 - 11/5/15
murphy <- read.csv("~/Desktop/murphy.csv")
View(murphy)

murphy$Date <- paste(murphy$theMonth, murphy$theDay, sep = "-" )
murphy2015 <- subset(murphy, theYear == 2015)
murphy_post <- subset(murphy2015, (theMonth == 10 & theDay >= 12) | (theMonth == 11 & theDay <= 5))
View(murphy_post)

df <- data.frame(murphy_post$Date, murphy_post$X2BCount, murphy_post$GoatCount, murphy_post$HumanCount, murphy_post$DudaCount, murphy_post$X4Count)
df <- rename(df, c("murphy_post.Date"="date", "murphy_post.X2BCount"="2B", "murphy_post.GoatCount"="Goat", "murphy_post.HumanCount"="Human", "murphy_post.DudaCount"="Duda", "murphy_post.X4Count"="4"))
View(df)

df_long <- melt(df, id="date") 
View(df_long)

ggplot(df_long, aes(x=date, y=value, colour=variable, group = 1)) + 
  geom_point() + 
  ylab("Number of Tweets") +
  ggtitle("Tweet Volume vs. Date for Murphy")

#Plot top tweets for Madison Bumgarner from 10/12/14 - 11/5/14
bumgarner <- read.csv("~/Desktop/bumgarner.csv")
View(bumgarner)

bumgarner$Date <- paste(bumgarner$theMonth, bumgarner$theDay, sep = "-" )
bumgarner2014 <- subset(bumgarner, theYear == 2014)
bumgarner_post <- subset(bumgarner2014, (theMonth == 10 & theDay >= 12) | (theMonth == 11 & theDay <= 5))
View(bumgarner_post)

df <- data.frame(bumgarner_post$Date, bumgarner_post$ShutoutCount, bumgarner_post$ERACount, bumgarner_post$HistoryCount, bumgarner_post$AceStatusCount, bumgarner_post$MVPCount)
df <- rename(df, c("bumgarner_post.Date"="date", "bumgarner_post.ShutoutCount"="Shutout", "bumgarner_post.ERACount"="ERA", "bumgarner_post.HistoryCount"="History", "bumgarner_post.AceStatusCount"="#AceStatus", "bumgarner_post.MVPCount"="MVP"))
View(df)

df_long <- melt(df, id="date") 
View(df_long)

ggplot(df_long, aes(x=date, y=value, colour=variable, group = 1)) + 
  geom_point() + 
  ylab("Number of Tweets") +
  ggtitle("Tweet Volume vs. Date for Bumgarner")


#Plot top tweets for Hunter Pence from 10/12/14 - 11/5/14
pence <- read.csv("~/Desktop/pence.csv")
View(pence)

pence$Date <- paste(pence$theMonth, pence$theDay, sep = "-" )
pence2014 <- subset(pence, theYear == 2014)
pence_post <- subset(pence2014, (theMonth == 10 & theDay >= 12) | (theMonth == 11 & theDay <= 5))

df <- data.frame(pence_post$Date, pence_post$RBICount, pence_post$SandovalCount, pence_post$HomeAloneCount, pence_post$TieCount, pence_post$BeltCount)
df <- rename(df, c("pence_post.Date"="date", "pence_post.RBICount"="RBI", "pence_post$SandovalCount"="Sandoval", "pence_post.HomeAloneCount"="Home Alone", "pence_post.TieCount"="Tie", "pence_post.BeltCount"="Signs"))
View(df)

df_long <- melt(df, id="date") 
View(df_long)

ggplot(df_long, aes(x=date, y=value, colour=variable, group = 1)) + 
  geom_point() + 
  ylab("Number of Tweets") +
  ggtitle("Tweet Volume vs. Date for Pence")


volquez <- read.csv("~/Desktop/volquez.csv")
#View(murphy)

volquez$Date <- paste(volquez$theMonth, volquez$theDay, sep = "-" )
volquez2015 <- subset(volquez, theYear == 2015)
volquez_post <- subset(volquez2015, (theMonth == 10 & theDay >= 12) | (theMonth == 11 & theDay <= 5))

df <- data.frame(volquez_post$Date, volquez_post$CuetoCount, volquez_post$FatherCount, volquez_post$DadCount, volquez_post$HeartCount, volquez_post$KnowingCount)
df <- rename(df, c("volquez_post.Date"="date", "volquez_post.CuetoCount"="Cueto", "volquez_post.FatherCount"="Father", "volquez_post.DadCount"="Dad", "volquez_post.HeartCount"="Heart", "volquez_post.KnowingCount"="Knowing"))
View(df)

df_long <- melt(df, id="date") 
View(df_long)

ggplot(df_long, aes(x=date, y=value, colour=variable, group = 1)) + 
  geom_point() + 
  ylab("Number of Tweets") +
  ggtitle("Tweet Volume vs. Date for Volquez")


#Plot top tweets for Matt Harvey from 10/12/15 - 11/5/15
harvey <- read.csv("~/Desktop/harvey.csv")
View(harvey)

harvey$Date <- paste(harvey$theMonth, harvey$theDay, sep = "-" )
harvey2015 <- subset(harvey, theYear == 2015)
harvey_post <- subset(harvey2015, (theMonth == 10 & theDay >= 12) | (theMonth == 11 & theDay <= 5))

df <- data.frame(harvey_post$Date, harvey_post$MoundCount, harvey_post$NinthCount, harvey_post$CollinsCount, harvey_post$HarveyDayCount, harvey_post$HeroCount)
df <- rename(df, c("harvey_post.Date"="date", "harvey_post.MoundCount"="Mound", "harvey_post.NinthCount"="Ninth", "harvey_post.CollinsCount"="Collins", "harvey_post.HarveyDayCount"="#HarveyDay", "harvey_post.HeroCount"="Hero"))
View(df)

df_long <- melt(df, id="date") 
View(df_long)

ggplot(df_long, aes(x=date, y=value, colour=variable, group = 1)) + 
  geom_point() + 
  ylab("Number of Tweets") +
  ggtitle("Tweet Volume vs. Date for Harvey")
