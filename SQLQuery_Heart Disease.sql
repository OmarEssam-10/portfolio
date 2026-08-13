SELECT * FROM heart_disease

SELECT CAST( AVG ( CAST ([target] AS float ))*100 AS DECIMAL(10,1)) AS Disease_Rate FROM heart_disease

SELECT COUNT (*) AS Total_Patients FROM heart_disease

SELECT COUNT (*) AS Males_Patients FROM heart_disease
WHERE sex = 1

SELECT COUNT (*) AS Females_Patients FROM heart_disease
WHERE sex = 0




SELECT 
       CASE
            WHEN age <40 THEN 'UNDER 40'
            WHEN age BETWEEN 40 AND 49 THEN '40-49'
            WHEN age BETWEEN 50 AND 59 THEN '50-59'
            WHEN age BETWEEN 60 AND 69 THEN '60-69'
            ELSE '70+'
        END AS Age_Group , 

                             COUNT(*) AS Total_Patients , 
                             CAST ( AVG (CAST ([target] AS FLOAT ))*100 AS DECIMAL (10,2)) AS Disease_Rate

From heart_disease
GROUP BY 
          CASE
            WHEN age <40 THEN 'UNDER 40'
            WHEN age BETWEEN 40 AND 49 THEN '40-49'
            WHEN age BETWEEN 50 AND 59 THEN '50-59'
            WHEN age BETWEEN 60 AND 69 THEN '60-69'
            ELSE '70+'
          END
     
ORDER BY Disease_Rate DESC     




Select sex, 
             COUNT(*) AS Total_Patients,
             CAST (AVG (CAST ([target] AS FLOAT))*100 AS DECIMAL(10,2)) AS Disease_Rate

FROM heart_disease
GROUP BY sex





SELECT cp ,
            COUNT(*) AS Total_Patients,
            CAST (AVG (CAST ([target] AS FLOAT))*100 AS DECIMAL(10,2)) AS Disease_Rate
FROM heart_disease
GROUP BY cp
ORDER BY Disease_Rate DESC





SELECT ca,
            COUNT(*) AS Total_Patients,
            CAST (AVG (CAST ([target] AS FLOAT))*100 AS DECIMAL(10,2)) AS Disease_Rate
FROM heart_disease
GROUP BY ca
ORDER BY Disease_Rate DESC





SELECT thal ,
            COUNT(*) AS Total_Patients,
            CAST (AVG (CAST ([target] AS FLOAT))*100 AS DECIMAL(10,2)) AS Disease_Rate
FROM heart_disease
GROUP BY thal
ORDER BY Disease_Rate DESC





SELECT slope ,
            COUNT(*) AS Total_Patients,
            CAST (AVG (CAST ([target] AS FLOAT))*100 AS DECIMAL(10,2)) AS Disease_Rate
FROM heart_disease
GROUP BY slope
ORDER BY Disease_Rate DESC







SELECT 
       CASE 
            WHEN age <40 THEN 'UNDER 40'
            WHEN age BETWEEN 40 AND 49 THEN '40-49'
            WHEN age BETWEEN 50 AND 59 THEN '50-59'
            WHEN age BETWEEN 60 AND 69 THEN '60-69'
            ELSE '70+'
        END AS Age_Group , 

                               COUNT (*)      AS Total_Patients,
                               AVG (chol)     AS Avg_Cholesterol,
                               AVG (trestbps) AS Avg_trestbps,
                               AVG (thalach)  AS Avg_thalach,
                              CAST( AVG (oldpeak) AS DECIMAL(10,2))  AS Avg_oldpeak
FROM heart_disease
GROUP BY 
                 CASE 
            WHEN age <40 THEN 'UNDER 40'
            WHEN age BETWEEN 40 AND 49 THEN '40-49'
            WHEN age BETWEEN 50 AND 59 THEN '50-59'
            WHEN age BETWEEN 60 AND 69 THEN '60-69'
            ELSE '70+'
        END 





SELECT 
        CASE 
              WHEN chol BETWEEN 100 AND 199 THEN '100-199'
              WHEN chol BETWEEN 200 AND 299 THEN '200-299'
              WHEN chol BETWEEN 300 AND 399 THEN '300-399'
              WHEN chol BETWEEN 400 AND 499 THEN '400-499'
              ELSE '500+'
         END AS chol_group ,
                               
                               COUNT (*)      AS Total_Patients ,
                               CAST (AVG (CAST ([target] AS FLOAT))*100 AS DECIMAL(10,2)) AS Disease_Rate
                                
FROM heart_disease
GROUP BY 
        CASE 
              WHEN chol BETWEEN 100 AND 199 THEN '100-199'
              WHEN chol BETWEEN 200 AND 299 THEN '200-299'
              WHEN chol BETWEEN 300 AND 399 THEN '300-399'
              WHEN chol BETWEEN 400 AND 499 THEN '400-499'
              ELSE '500+'
         END
ORDER BY Disease_Rate DESC

 





 SELECT 
        CASE 
              WHEN trestbps BETWEEN 90 AND 119 THEN '90-119'
              WHEN trestbps BETWEEN 120 AND 149 THEN '120-149'
              WHEN trestbps BETWEEN 150 AND 179 THEN '150-179'
              ELSE '180-200'
             
         END AS trestbps_group ,
                               
                               COUNT (*)      AS Total_Patients ,
                               CAST (AVG (CAST ([target] AS FLOAT))*100 AS DECIMAL(10,2)) AS Disease_Rate
                                
FROM heart_disease
GROUP BY 
         CASE 
              WHEN trestbps BETWEEN 90 AND 119 THEN '90-119'
              WHEN trestbps BETWEEN 120 AND 149 THEN '120-149'
              WHEN trestbps BETWEEN 150 AND 179 THEN '150-179'
              ELSE '180-200'
         END
ORDER BY Disease_Rate DESC





SELECT exang ,
            COUNT(*) AS Total_Patients,
            CAST (AVG (CAST ([target] AS FLOAT))*100 AS DECIMAL(10,2)) AS Disease_Rate
FROM heart_disease
GROUP BY exang
ORDER BY Disease_Rate DESC





SELECT fbs ,
            COUNT(*) AS Total_Patients,
            CAST (AVG (CAST ([target] AS FLOAT))*100 AS DECIMAL(10,2)) AS Disease_Rate
FROM heart_disease
GROUP BY fbs
ORDER BY Disease_Rate DESC






SELECT restecg ,
            COUNT(*) AS Total_Patients,
            CAST (AVG (CAST ([target] AS FLOAT))*100 AS DECIMAL(10,2)) AS Disease_Rate
FROM heart_disease
GROUP BY restecg
ORDER BY Disease_Rate DESC







SELECT 
        CASE 
              WHEN oldpeak >=0 AND oldpeak <1 THEN '0-0.9'
              WHEN oldpeak >=1 AND oldpeak <2 THEN '1-1.9'
              WHEN oldpeak >=2 AND oldpeak <3 THEN '2-2.9'
              WHEN oldpeak >=3 AND oldpeak <4 THEN '3-3.9'
              WHEN oldpeak >=4 AND oldpeak <5 THEN '4-4.9'
              ELSE '5+'
         END AS oldpeak_group ,
                               
                               COUNT (*)      AS Total_Patients ,
                               CAST (AVG (CAST ([target] AS FLOAT))*100 AS DECIMAL(10,2)) AS Disease_Rate
                                
FROM heart_disease
GROUP BY 
        CASE 
              WHEN oldpeak >=0 AND oldpeak <1 THEN '0-0.9'
              WHEN oldpeak >=1 AND oldpeak <2 THEN '1-1.9'
              WHEN oldpeak >=2 AND oldpeak <3 THEN '2-2.9'
              WHEN oldpeak >=3 AND oldpeak <4 THEN '3-3.9'
              WHEN oldpeak >=4 AND oldpeak <5 THEN '4-4.9'
              ELSE '5+'
         END
ORDER BY Disease_Rate DESC

