DROP TABLE IF EXISTS t_can_dist2sxx_gps CASCADE;
CREATE TABLE t_can_dist2sxx_gps AS

SELECT * FROM v_can_dist2sxx_gps
ORDER BY rownr