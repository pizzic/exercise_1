DROP TABLE AverageEffectiveCare;

CREATE TABLE AverageEffectiveCare 
AS SELECT ProviderID, avg(Score) AS average_score
FROM EffectiveCare2 GROUP BY ProviderID;

DROP TABLE AverageReadmissions;

CREATE TABLE AverageReadmissions 
AS SELECT ProviderID, avg(Score) AS average_score 
FROM Readmissions2 GROUP BY ProviderID;


SELECT 
  corr(average_score, OverallRatingAP)
FROM AverageEffectiveCare 
INNER JOIN surveyresponses2 
ON AverageEffectiveCare.providerid = surveyresponses2.providerid; 

SELECT 
  corr(average_score, OverallRatingAP)
FROM AverageReadmissions 
INNER JOIN surveyresponses2 
ON AverageReadmissions.providerid = surveyresponses2.providerid; 

