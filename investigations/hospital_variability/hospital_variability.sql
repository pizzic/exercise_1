SELECT 
  MeasureName, 
  avg(Score) AS average_score, 
  sum(score) AS cum_score, 
  variance(score) AS var_score 
FROM effectivecare2 
GROUP BY MeasureName 
ORDER BY var_score DESC 
LIMIT 10;

SELECT 
  MeasureName, 
  avg(Score) AS average_score, 
  sum(score) AS cum_score, 
  variance(score) AS var_score 
FROM readmissions2 
GROUP BY MeasureName
ORDER BY var_score DESC
LIMIT 10;
