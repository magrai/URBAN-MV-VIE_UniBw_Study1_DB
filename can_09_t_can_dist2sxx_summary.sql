DROP TABLE IF EXISTS t_can_dist2sxx_summary CASCADE;
CREATE TABLE t_can_dist2sxx_summary AS

SELECT
subid,
round,
--
max(s01_time_s_min) as s01_time_s_min,
max(s02_time_s_min) as s02_time_s_min,
max(s03_time_s_min) as s03_time_s_min,
max(s04_time_s_min) as s04_time_s_min,
max(s05_time_s_min) as s05_time_s_min,
max(s06_time_s_min) as s06_time_s_min,
max(s07_time_s_min) as s07_time_s_min,
max(s08_time_s_min) as s08_time_s_min,
max(s09_time_s_min) as s09_time_s_min,
max(s10_time_s_min) as s10_time_s_min,
max(s11_time_s_min) as s11_time_s_min,
max(s12_time_s_min) as s12_time_s_min,
max(s13_time_s_min) as s13_time_s_min,
max(s14_time_s_min) as s14_time_s_min,
max(s15_time_s_min) as s15_time_s_min,
max(s16_time_s_min) as s16_time_s_min,
max(s17_time_s_min) as s17_time_s_min,
max(s18_time_s_min) as s18_time_s_min,
max(s99_time_s_min) as s99_time_s_min,
--
max(s01_dist_m_min) as s01_dist_m_min,
max(s02_dist_m_min) as s02_dist_m_min,
max(s03_dist_m_min) as s03_dist_m_min,
max(s04_dist_m_min) as s04_dist_m_min,
max(s05_dist_m_min) as s05_dist_m_min,
max(s06_dist_m_min) as s06_dist_m_min,
max(s07_dist_m_min) as s07_dist_m_min,
max(s08_dist_m_min) as s08_dist_m_min,
max(s09_dist_m_min) as s09_dist_m_min,
max(s10_dist_m_min) as s10_dist_m_min,
max(s11_dist_m_min) as s11_dist_m_min,
max(s12_dist_m_min) as s12_dist_m_min,
max(s13_dist_m_min) as s13_dist_m_min,
max(s14_dist_m_min) as s14_dist_m_min,
max(s15_dist_m_min) as s15_dist_m_min,
max(s16_dist_m_min) as s16_dist_m_min,
max(s17_dist_m_min) as s17_dist_m_min,
max(s18_dist_m_min) as s18_dist_m_min,
max(s99_dist_m_min) as s99_dist_m_min

FROM
t_can_dist2sxx

GROUP BY
subid,
round

ORDER BY
subid,
round