SELECT 
  State, 
  avg(Score) AS average_score, 
  sum(score) AS cum_score, 
  variance(score) AS var_score 
FROM effectivecare2 
GROUP BY State 
ORDER BY average_score DESC 
LIMIT 10;

SELECT 
  State, 
  avg(Score) AS average_score, 
  sum(score) AS cum_score, 
  variance(score) AS var_score 
FROM readmissions2 
GROUP BY State 
ORDER BY average_score 
LIMIT 10;
