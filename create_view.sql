DROP VIEW IF EXISTS taxi_trips_joined;

CREATE VIEW taxi_trips_joined AS
SELECT
    t.*,
    z.borough,
    z.zone,
    z.service_zone
FROM taxi_trips t
LEFT JOIN taxi_zones z
ON t.pulocationid = z.locationid;