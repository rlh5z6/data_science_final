#Exports the world series data where the job_id = 2577
SELECT * FROM tweet WHERE job_id = 2577;

#1. How many tweets are in the collection? 2525687 rows (tweets) returned
SELECT COUNT(*) FROM tweet WHERE job_id = 2577;

#2. When do they start? 2014-10-16 00:40:05
SELECT MIN(created_at) FROM tweet WHERE job_id = 2577;

#3. When do they end? 2016-04-21 20:40:53
SELECT MAX(created_at) FROM tweet WHERE job_id = 2577;

#4. What is the trend for tweet volume?
SELECT MONTH(created_at) AS theMonth, WEEK(created_at) AS theWeek, DAY(created_at) AS theDay, YEAR(created_at) AS theYear, COUNT(*) AS counter
FROM tweet WHERE job_id = 2577 
GROUP BY theYear, theMonth, theWeek, theDay;