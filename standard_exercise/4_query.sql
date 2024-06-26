with temp_query As (
  SELECT count(distinct bike_number) as nr_bikes,
  count(distinct trip_id) as nr_trips,
  count(distinct trip_id)/count(distinct bike_number) as avg_trips_bike,
  EXTRACT(month from start_date) as month
  FROM `sql-sandbox-20240505.DataAnalytics.sf_bikeshare_2015`
  GROUP BY EXTRACT(month from start_date)
  ORDER BY avg_trips_bike DESC
)

SELECT AVG(avg_trips_bike) AS AVG_PER_MONTH_AND_BIKE
FROM temp_query

-- 48.047 trips per bike
