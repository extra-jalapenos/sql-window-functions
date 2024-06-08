WITH temp_query AS (
  SELECT COUNT(*) as Count, bike_number
  FROM `sql-sandbox-20240505.DataAnalytics.sf_bikeshare_2015`
  GROUP BY bike_number
  ORDER BY Count DESC
)

SELECT AVG(Count) As AVG_NUM_RIDES
FROM temp_query

-- 528.62900763358778 rides per bike on average
