CREATE DATABASE VICTIMSOFRAPECASE;
USE VICTIMSOFRAPECASE;

CREATE TABLE VICTIMS (
State_Name VARCHAR(50),
Year INT,
Subgroup VARCHAR(50),
Case_Reported INT,
Victims_Above_50 INT,
Victims_Between_10to14 INT,
Victims_Between_14to18 INT,
Victims_Between_18to30 INT,
Victims_Between_30to50 INT,
Victims_of_Total INT,
Victims_Upto_10 INT
);

Select * from VICTIMS;

Select * from VICTIMS LIMIT 10;

Select COUNT(*) AS Total_Rows from VICTIMS;

Select DISTINCT Year from VICTIMS ORDER BY Year;

Select DISTINCT Subgroup FROM VICTIMS;

Select Year, SUM(Case_Reported) AS Total_Cases
from VICTIMS
GROUP BY Year
ORDER BY Year;

SELECT 
  Year,
  SUM(Victims_Upto_10) AS Upto_10,
  SUM(Victims_Between_10to14) AS Between_10_14,
  SUM(Victims_Between_14to18) AS Between_14_18,
  SUM(Victims_Between_18to30) AS Between_18_30,
  SUM(Victims_Between_30to50) AS Between_30_50,
  SUM(Victims_Above_50) AS Above_50
from VICTIMS
GROUP BY Year
ORDER BY Year;

Select Year, SUM(Victims_of_Total) AS Total_Victims
from VICTIMS
WHERE Subgroup = 'Total Rape Victims'
GROUP BY Year
ORDER BY Year;

select * 
from VICTIMS 
WHERE Victims_Above_50 >0;

Select Year, SUM(Case_Reported) AS Total_Cases
from VICTIMS
GROUP BY Year
HAVING SUM(Case_Reported) > 5
ORDER BY Year;

