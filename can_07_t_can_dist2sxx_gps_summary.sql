DROP TABLE IF EXISTS t_can_dist2sxx_gps_summary CASCADE;
CREATE TABLE t_can_dist2sxx_gps_summary AS

SELECT
subid,
round,
--
min(s01_gps_dist_m) as s01_gps_dist_m_min,
min(s02_gps_dist_m) as s02_gps_dist_m_min,
min(s03_gps_dist_m) as s03_gps_dist_m_min,
min(s04_gps_dist_m) as s04_gps_dist_m_min,
min(s05_gps_dist_m) as s05_gps_dist_m_min,
min(s06_gps_dist_m) as s06_gps_dist_m_min,
min(s07_gps_dist_m) as s07_gps_dist_m_min,
min(s08_gps_dist_m) as s08_gps_dist_m_min,
min(s09_gps_dist_m) as s09_gps_dist_m_min,
min(s10_gps_dist_m) as s10_gps_dist_m_min,
min(s11_gps_dist_m) as s11_gps_dist_m_min,
min(s12_gps_dist_m) as s12_gps_dist_m_min,
min(s13_gps_dist_m) as s13_gps_dist_m_min,
min(s14_gps_dist_m) as s14_gps_dist_m_min,
min(s15_gps_dist_m) as s15_gps_dist_m_min,
min(s16_gps_dist_m) as s16_gps_dist_m_min,
min(s17_gps_dist_m) as s17_gps_dist_m_min,
min(s18_gps_dist_m) as s18_gps_dist_m_min,
min(s99_gps_dist_m) as s99_gps_dist_m_min
--
FROM
t_can_dist2sxx_gps

GROUP BY
subid,
round

ORDER BY
subid,
round