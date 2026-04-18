SELECT borough, COUNT(*) AS trip_count
FROM taxi_trips_joined
WHERE borough IS NOT NULL
GROUP BY borough
ORDER BY trip_count DESC;

SELECT borough, SUM(total_amount) AS revenue
FROM taxi_trips_joined
GROUP BY borough
ORDER BY revenue DESC;

SELECT borough, AVG(trip_distance) AS avg_distance
FROM taxi_trips_joined
GROUP BY borough
ORDER BY avg_distance DESC;

SELECT EXTRACT(HOUR FROM tpep_pickup_datetime) AS hour,
       COUNT(*) AS trip_count
FROM taxi_trips_joined
GROUP BY hour
ORDER BY hour;
