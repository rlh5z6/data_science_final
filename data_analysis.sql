SELECT * FROM tweet WHERE job_id = 2577 LIMIT 20;

SELECT COUNT(*) FROM tweet WHERE job_id = 2577;

SELECT MAX(created_at) FROM tweet WHERE job_id = 2577;

SELECT MIN(created_at) FROM tweet WHERE job_id = 2577;

SELECT MONTH(created_at) AS theMonth, WEEK(created_at) AS theWeek, DAY(created_at) AS theDay, YEAR(created_at) AS theYear, COUNT(*) AS counter
FROM tweet WHERE job_id = 2577 
GROUP BY theYear, theMonth, theWeek, theDay;

DESCRIBE tweet

SELECT MONTH(created_at) AS theMonth, WEEK(created_at) AS theWeek, DAY(created_at) AS theDay, YEAR(created_at) AS theYear,
    COUNT(*) total,
    SUM(CASE WHEN text LIKE '%#WorldSeries%' THEN 1 ELSE 0 END) WorldSeriesCount,
    SUM(CASE WHEN text LIKE '%#Royals%' THEN 1 ELSE 0 END) RoyalsCount,
    SUM(CASE WHEN text LIKE '%#TakeTheCrown%' THEN 1 ELSE 0 END) TakeTheCrownCount,
    SUM(CASE WHEN text LIKE '%#LGM%' THEN 1 ELSE 0 END) LGMCount,
SUM(CASE WHEN text LIKE '%#SFGiants%' THEN 1 ELSE 0 END) SFGiantsCount
FROM tweet
WHERE job_id = 2577
GROUP BY theYear, theMonth, theDay;

SELECT MONTH(created_at) AS theMonth, WEEK(created_at) AS theWeek, DAY(created_at) AS theDay, YEAR(created_at) AS theYear,
    COUNT(*) total,
    SUM(CASE WHEN LOWER(text) LIKE '%game%' THEN 1 ELSE 0 END) MLBCount,
    SUM(CASE WHEN LOWER(text) LIKE '%win%' THEN 1 ELSE 0 END) RoyalsCount,
    SUM(CASE WHEN LOWER(text) LIKE '%first%' THEN 1 ELSE 0 END) MLBFanCaveCount,
    SUM(CASE WHEN LOWER(text) LIKE '%chance%' THEN 1 ELSE 0 END) MetsCount,
	SUM(CASE WHEN LOWER(text) LIKE '%joe%' THEN 1 ELSE 0 END) SFGiantsCount
FROM tweet
WHERE job_id = 2577
GROUP BY theYear, theMonth, theDay;

SELECT MONTH(created_at) AS theMonth, WEEK(created_at) AS theWeek, DAY(created_at) AS theDay, YEAR(created_at) AS theYear,
    COUNT(*) total,
    SUM(CASE WHEN LOWER(text) LIKE '%@MLB%' THEN 1 ELSE 0 END) MLBCount,
    SUM(CASE WHEN LOWER(text) LIKE '%@Royals%' THEN 1 ELSE 0 END) RoyalsCount,
    SUM(CASE WHEN LOWER(text) LIKE '%@MLBFanCave%' THEN 1 ELSE 0 END) MLBFanCaveCount,
    SUM(CASE WHEN LOWER(text) LIKE '%@Mets%' THEN 1 ELSE 0 END) MetsCount,
	SUM(CASE WHEN LOWER(text) LIKE '%@SFGiants%' THEN 1 ELSE 0 END) SFGiantsCount
FROM tweet
WHERE job_id = 2577
GROUP BY theYear, theMonth;

SELECT MONTH(created_at) AS theMonth, WEEK(created_at) AS theWeek, DAY(created_at) AS theDay, YEAR(created_at) AS theYear, HOUR(created_at) AS theHour, text
FROM tweet
WHERE job_id = 2577
AND LOWER(text) LIKE '%pence%';

SELECT MONTH(created_at) AS theMonth, WEEK(created_at) AS theWeek, DAY(created_at) AS theDay, YEAR(created_at) AS theYear,
    COUNT(*) total,
    SUM(CASE WHEN LOWER(text) LIKE '%bumgarner%' THEN 1 ELSE 0 END) Bumgarner,
    SUM(CASE WHEN LOWER(text) LIKE '%murphy%' THEN 1 ELSE 0 END) Murphy,
    SUM(CASE WHEN LOWER(text) LIKE '%harvey%' THEN 1 ELSE 0 END) Harvey,
	SUM(CASE WHEN LOWER(text) LIKE '%pence%' THEN 1 ELSE 0 END) Pence,
	SUM(CASE WHEN LOWER(text) LIKE '%volquez%' THEN 1 ELSE 0 END) Volquez
FROM tweet
WHERE job_id = 2577
GROUP BY theYear, theMonth;


SELECT MONTH(created_at) AS theMonth, WEEK(created_at) AS theWeek, DAY(created_at) AS theDay, YEAR(created_at) AS theYear,
    COUNT(*) total,
    SUM(CASE WHEN LOWER(text) LIKE '%2b%' THEN 1 ELSE 0 END) 2BCount,
    SUM(CASE WHEN LOWER(text) LIKE '%goat%' THEN 1 ELSE 0 END) GoatCount,
    SUM(CASE WHEN LOWER(text) LIKE '%human%' THEN 1 ELSE 0 END) HumanCount,
	SUM(CASE WHEN LOWER(text) LIKE '%duda%' THEN 1 ELSE 0 END) DudaCount,
	SUM(CASE WHEN LOWER(text) LIKE '%4%' THEN 1 ELSE 0 END) 4Count
FROM tweet
WHERE job_id = 2577
AND LOWER(text) LIKE '%murphy%'
GROUP BY theYear, theMonth, theDay;



SELECT MONTH(created_at) AS theMonth, WEEK(created_at) AS theWeek, DAY(created_at) AS theDay, YEAR(created_at) AS theYear,
    COUNT(*) total,
    SUM(CASE WHEN LOWER(text) LIKE '%shutout%' THEN 1 ELSE 0 END) ShutoutCount,
    SUM(CASE WHEN LOWER(text) LIKE '%era%' THEN 1 ELSE 0 END) ERACount,
    SUM(CASE WHEN LOWER(text) LIKE '%history%' THEN 1 ELSE 0 END) HistoryCount,
	SUM(CASE WHEN text LIKE '%#AceStatus%' THEN 1 ELSE 0 END) AceStatusCount,
	SUM(CASE WHEN LOWER(text) LIKE '%MVP%' THEN 1 ELSE 0 END) MVPCount
FROM tweet
WHERE job_id = 2577
AND LOWER(text) LIKE '%bumgarner%'
GROUP BY theYear, theMonth, theDay;


SELECT MONTH(created_at) AS theMonth, WEEK(created_at) AS theWeek, DAY(created_at) AS theDay, YEAR(created_at) AS theYear,
    COUNT(*) total,
    SUM(CASE WHEN LOWER(text) LIKE '%rbi%' THEN 1 ELSE 0 END) RBICount,
    SUM(CASE WHEN LOWER(text) LIKE '%sandoval%' THEN 1 ELSE 0 END) SandovalCount,
    SUM(CASE WHEN LOWER(text) LIKE '%home alone%' THEN 1 ELSE 0 END) HomeAloneCount,
	SUM(CASE WHEN LOWER(text) LIKE '%tie%' THEN 1 ELSE 0 END) TieCount,
	SUM(CASE WHEN LOWER(text) LIKE '%signs%' THEN 1 ELSE 0 END) BeltCount
FROM tweet
WHERE job_id = 2577
AND LOWER(text) LIKE '%pence%'
GROUP BY theYear, theMonth, theDay;


SELECT MONTH(created_at) AS theMonth, WEEK(created_at) AS theWeek, DAY(created_at) AS theDay, YEAR(created_at) AS theYear,
    COUNT(*) total,
    SUM(CASE WHEN LOWER(text) LIKE '%cueto%' THEN 1 ELSE 0 END) CuetoCount,
    SUM(CASE WHEN LOWER(text) LIKE '%father%' THEN 1 ELSE 0 END) FatherCount,
    SUM(CASE WHEN LOWER(text) LIKE '%heavy%' THEN 1 ELSE 0 END) HeavyCount,
	SUM(CASE WHEN LOWER(text) LIKE '%dad%' THEN 1 ELSE 0 END) DadCount,
	SUM(CASE WHEN LOWER(text) LIKE '%heart%' THEN 1 ELSE 0 END) HeartCount,
	SUM(CASE WHEN LOWER(text) LIKE '%knowing%' THEN 1 ELSE 0 END) KnowingCount
FROM tweet
WHERE job_id = 2577
AND LOWER(text) LIKE '%volquez%'
GROUP BY theYear, theMonth, theDay;


SELECT MONTH(created_at) AS theMonth, WEEK(created_at) AS theWeek, DAY(created_at) AS theDay, YEAR(created_at) AS theYear,
    COUNT(*) total,
    SUM(CASE WHEN LOWER(text) LIKE '%mound%' THEN 1 ELSE 0 END) MoundCount,
    SUM(CASE WHEN LOWER(text) LIKE '%ninth%' THEN 1 ELSE 0 END) NinthCount,
    SUM(CASE WHEN LOWER(text) LIKE '%collins%' THEN 1 ELSE 0 END) CollinsCount,
	SUM(CASE WHEN text LIKE '%#HarveyDay%' THEN 1 ELSE 0 END) HarveyDayCount,
	SUM(CASE WHEN LOWER(text) LIKE '%hero%' THEN 1 ELSE 0 END) HeroCount
FROM tweet
WHERE job_id = 2577
AND LOWER(text) LIKE '%harvey%'
GROUP BY theYear, theMonth, theDay;