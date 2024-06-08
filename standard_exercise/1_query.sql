CREATE TABLE `sql-sandbox-20240505.DataAnalytics.sf_bikeshare_2015` AS (
  Select * from `bigquery-public-data.san_francisco.bikeshare_trips` WHERE EXTRACT(year from start_date) = 2015
)
