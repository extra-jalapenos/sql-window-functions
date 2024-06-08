SELECT
	count(distinct bike_number) as nr_bikes,
	count(distinct trip_id) as nr_trips,
	count(distinct trip_id)/count(distinct bike_number) as avg_trips_bike,
	EXTRACT(month from start_date) as month
FROM `sql-sandbox-20240505.DataAnalytics.sf_bikeshare_2015`
GROUP BY EXTRACT(month from start_date)
ORDER BY avg_trips_bike DESC

-- August, with 53.801011804384487 trips per bike
