SELECT bike_number,
count(distinct trip_id) as nr_trips
FROM `sql-sandbox-20240505.DataAnalytics.sf_bikeshare_2015`
GROUP BY bike_number
ORDER BY nr_trips DESC

-- nr. 508 with 1094 trips
