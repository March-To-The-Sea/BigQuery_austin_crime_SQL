WITH crime AS  
  (SELECT DISTINCT description, Count(description) AS occurence_value
  FROM bigquery-public-data.austin_crime.crime
  GROUP BY description
  ORDER BY occurence_value DESC)

SELECT *
FROM crime