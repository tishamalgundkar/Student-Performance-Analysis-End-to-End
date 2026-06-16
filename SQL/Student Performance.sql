USE Studentperformance;
 
-- Query 1: View All Records
SELECT *
FROM StudentPerformanceFactors;

-- Query 2: Students Scoring Above 90
SELECT *
FROM StudentPerformanceFactors
WHERE Exam_Score > 90;

-- Query 3: Students Studying More Than 15 Hours
SELECT *
FROM StudentPerformanceFactors
WHERE Hours_Studied > 15;

-- Query 4: Female Students Scoring Above 85
SELECT *
FROM StudentPerformanceFactors
WHERE Gender = 'Female'
AND Exam_Score > 85;

-- Query 5: High Motivation and Excellent Performance
SELECT *
FROM StudentPerformanceFactors
WHERE Motivation_Level = 'High'
AND Performance_Category = 'Excellent';

-- Query 6: Count Students by Gender
SELECT Gender,
       COUNT(*) AS Total_Students
FROM StudentPerformanceFactors
GROUP BY Gender;

-- Query 7: Count Students by Motivation Level
SELECT Motivation_Level,
       COUNT(*) AS Total_Students
FROM StudentPerformanceFactors
GROUP BY Motivation_Level;

-- Query 8: Count Students by Performance Category
SELECT Performance_Category,
       COUNT(*) AS Total_Students
FROM StudentPerformanceFactors
GROUP BY Performance_Category;

-- Query 9: Top 10 Highest Scoring Students
SELECT TOP 10 *
FROM StudentPerformanceFactors
ORDER BY Exam_Score DESC;

-- Query 10: Students with Attendance Above 90
SELECT *
FROM StudentPerformanceFactors
WHERE Attendance > 90;

-- Query 11: Students with Low Parental Involvement
SELECT *
FROM StudentPerformanceFactors
WHERE Parental_Involvement = 'Low';

-- Query 12: Count Students in Extracurricular Activities
SELECT 
 CASE
 WHEN Extracurricular_Activities = 1 THEN 'Yes'
 ELSE 'No'
END AS Participation,
COUNT(*) AS Total_Students
FROM StudentPerformanceFactors
GROUP BY Extracurricular_Activities;

-- Query 13: Motivation Level of High Scorers
SELECT Motivation_Level,
COUNT(*) AS High_Scorers
FROM StudentPerformanceFactors
WHERE Exam_Score >= 80
GROUP BY Motivation_Level;
  
-- Query 14: Average Attendance by Motivation Level
SELECT Motivation_Level,
AVG(Attendance) AS Avg_Attendance
FROM StudentPerformanceFactors
GROUP BY Motivation_Level;

-- Query 15: Excellent Students by Gender
SELECT Gender,
COUNT(*) AS Excellent_Students
FROM StudentPerformanceFactors
WHERE Performance_Category = 'Excellent'
GROUP BY Gender; 

-- Query 16: Average Exam Score by Family Income
SELECT Family_Income,
AVG(Exam_Score) AS Avg_Exam_Score
FROM StudentPerformanceFactors
GROUP BY Family_Income
ORDER BY Avg_Exam_Score DESC;


-- Query 17: Students Scoring Above Average
SELECT *
FROM StudentPerformanceFactors
WHERE Exam_Score >
(
 SELECT AVG(Exam_Score) 
 FROM StudentPerformanceFactors
);


-- Query 18: School Type vs Performance Category
SELECT School_Type,
Performance_Category,
COUNT(*) AS Total_Students
FROM StudentPerformanceFactors
GROUP BY School_Type, Performance_Category
ORDER BY School_Type;