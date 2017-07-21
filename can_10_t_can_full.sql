DROP TABLE IF EXISTS t_can_full;
CREATE TABLE t_can_full AS

SELECT
"public".t_can_dist2sxx.rownr,
"public".t_can_dist2sxx.subid,
"public".t_can_dist2sxx.time_s,
--"public".t_can_dist2sxx.time_s_rnd0,
--"public".t_can_dist2sxx.time_s_rnd1,
--"public".t_can_dist2sxx.dist_m_diff,
"public".t_can_dist2sxx.dist_m,
--"public".t_can_dist2sxx.dist_m_rnd0,
--"public".t_can_dist2sxx.dist_m_rnd1,
"public".t_can_dist2sxx.round,
--

-- Dependend on condition order
CASE 
WHEN "public".t_can_dist2sxx.round = 1 THEN 'intro'
WHEN "public".t_can_dist2sxx.round = "public".t_procedure.round_normal THEN 'normal'
WHEN "public".t_can_dist2sxx.round = "public".t_procedure.round_stress THEN 'stress'
END AS round_txt,
--
--"public".t_can_dist2sxx.round_dist_m,
--"public".t_can_dist2sxx.round_dist_m_rnd0,
--"public".t_can_dist2sxx.round_dist_m_rnd1,
--
"public".t_can_format.gps_lat,
"public".t_can_format.gps_long,
-- "public".t_can_dist2sxx.s01_gps_lat,
-- "public".t_can_dist2sxx.s01_gps_long,
-- "public".t_can_dist2sxx.s02_gps_lat,
-- "public".t_can_dist2sxx.s02_gps_long,
-- "public".t_can_dist2sxx.s03_gps_lat,
-- "public".t_can_dist2sxx.s03_gps_long,
-- "public".t_can_dist2sxx.s04_gps_lat,
-- "public".t_can_dist2sxx.s04_gps_long,
-- "public".t_can_dist2sxx.s05_gps_lat,
-- "public".t_can_dist2sxx.s05_gps_long,
-- "public".t_can_dist2sxx.s06_gps_lat,
-- "public".t_can_dist2sxx.s06_gps_long,
-- "public".t_can_dist2sxx.s07_gps_lat,
-- "public".t_can_dist2sxx.s07_gps_long,
-- "public".t_can_dist2sxx.s08_gps_lat,
-- "public".t_can_dist2sxx.s08_gps_long,
-- "public".t_can_dist2sxx.s09_gps_lat,
-- "public".t_can_dist2sxx.s09_gps_long,
-- "public".t_can_dist2sxx.s10_gps_lat,
-- "public".t_can_dist2sxx.s10_gps_long,
-- "public".t_can_dist2sxx.s11_gps_lat,
-- "public".t_can_dist2sxx.s11_gps_long,
-- "public".t_can_dist2sxx.s12_gps_lat,
-- "public".t_can_dist2sxx.s12_gps_long,
-- "public".t_can_dist2sxx.s13_gps_lat,
-- "public".t_can_dist2sxx.s13_gps_long,
-- "public".t_can_dist2sxx.s14_gps_lat,
-- "public".t_can_dist2sxx.s14_gps_long,
-- "public".t_can_dist2sxx.s15_gps_lat,
-- "public".t_can_dist2sxx.s15_gps_long,
-- "public".t_can_dist2sxx.s16_gps_lat,
-- "public".t_can_dist2sxx.s16_gps_long,
-- "public".t_can_dist2sxx.s17_gps_lat,
-- "public".t_can_dist2sxx.s17_gps_long,
-- "public".t_can_dist2sxx.s18_gps_lat,
-- "public".t_can_dist2sxx.s18_gps_long,
-- "public".t_can_dist2sxx.s99_gps_lat,
-- "public".t_can_dist2sxx.s99_gps_long,
--
-- save data space
-- "public".t_can_dist2sxx.s01_gps_dist_m,
-- "public".t_can_dist2sxx.s02_gps_dist_m,
-- "public".t_can_dist2sxx.s03_gps_dist_m,
-- "public".t_can_dist2sxx.s04_gps_dist_m,
-- "public".t_can_dist2sxx.s05_gps_dist_m,
-- "public".t_can_dist2sxx.s06_gps_dist_m,
-- "public".t_can_dist2sxx.s07_gps_dist_m,
-- "public".t_can_dist2sxx.s08_gps_dist_m,
-- "public".t_can_dist2sxx.s09_gps_dist_m,
-- "public".t_can_dist2sxx.s10_gps_dist_m,
-- "public".t_can_dist2sxx.s11_gps_dist_m,
-- "public".t_can_dist2sxx.s12_gps_dist_m,
-- "public".t_can_dist2sxx.s13_gps_dist_m,
-- "public".t_can_dist2sxx.s14_gps_dist_m,
-- "public".t_can_dist2sxx.s15_gps_dist_m,
-- "public".t_can_dist2sxx.s16_gps_dist_m,
-- "public".t_can_dist2sxx.s17_gps_dist_m,
-- "public".t_can_dist2sxx.s18_gps_dist_m,
-- "public".t_can_dist2sxx.s99_gps_dist_m,
-- --
-- "public".t_can_dist2sxx.s01_gps_dist_m_min,
-- "public".t_can_dist2sxx.s02_gps_dist_m_min,
-- "public".t_can_dist2sxx.s03_gps_dist_m_min,
-- "public".t_can_dist2sxx.s04_gps_dist_m_min,
-- "public".t_can_dist2sxx.s05_gps_dist_m_min,
-- "public".t_can_dist2sxx.s06_gps_dist_m_min,
-- "public".t_can_dist2sxx.s07_gps_dist_m_min,
-- "public".t_can_dist2sxx.s08_gps_dist_m_min,
-- "public".t_can_dist2sxx.s09_gps_dist_m_min,
-- "public".t_can_dist2sxx.s10_gps_dist_m_min,
-- "public".t_can_dist2sxx.s11_gps_dist_m_min,
-- "public".t_can_dist2sxx.s12_gps_dist_m_min,
-- "public".t_can_dist2sxx.s13_gps_dist_m_min,
-- "public".t_can_dist2sxx.s14_gps_dist_m_min,
-- "public".t_can_dist2sxx.s15_gps_dist_m_min,
-- "public".t_can_dist2sxx.s16_gps_dist_m_min,
-- "public".t_can_dist2sxx.s17_gps_dist_m_min,
-- "public".t_can_dist2sxx.s18_gps_dist_m_min,
-- "public".t_can_dist2sxx.s99_gps_dist_m_min,
-- --
-- -- no need for minimum row numbers
-- --
-- "public".t_can_dist2sxx.s01_time_s_min,
-- "public".t_can_dist2sxx.s02_time_s_min,
-- "public".t_can_dist2sxx.s03_time_s_min,
-- "public".t_can_dist2sxx.s04_time_s_min,
-- "public".t_can_dist2sxx.s05_time_s_min,
-- "public".t_can_dist2sxx.s06_time_s_min,
-- "public".t_can_dist2sxx.s07_time_s_min,
-- "public".t_can_dist2sxx.s08_time_s_min,
-- "public".t_can_dist2sxx.s09_time_s_min,
-- "public".t_can_dist2sxx.s10_time_s_min,
-- "public".t_can_dist2sxx.s11_time_s_min,
-- "public".t_can_dist2sxx.s12_time_s_min,
-- "public".t_can_dist2sxx.s13_time_s_min,
-- "public".t_can_dist2sxx.s14_time_s_min,
-- "public".t_can_dist2sxx.s15_time_s_min,
-- "public".t_can_dist2sxx.s16_time_s_min,
-- "public".t_can_dist2sxx.s17_time_s_min,
-- "public".t_can_dist2sxx.s18_time_s_min,
-- "public".t_can_dist2sxx.s99_time_s_min,
-- --
-- "public".t_can_dist2sxx.s01_time_s_min_rnd0,
-- "public".t_can_dist2sxx.s02_time_s_min_rnd0,
-- "public".t_can_dist2sxx.s03_time_s_min_rnd0,
-- "public".t_can_dist2sxx.s04_time_s_min_rnd0,
-- "public".t_can_dist2sxx.s05_time_s_min_rnd0,
-- "public".t_can_dist2sxx.s06_time_s_min_rnd0,
-- "public".t_can_dist2sxx.s07_time_s_min_rnd0,
-- "public".t_can_dist2sxx.s08_time_s_min_rnd0,
-- "public".t_can_dist2sxx.s09_time_s_min_rnd0,
-- "public".t_can_dist2sxx.s10_time_s_min_rnd0,
-- "public".t_can_dist2sxx.s11_time_s_min_rnd0,
-- "public".t_can_dist2sxx.s12_time_s_min_rnd0,
-- "public".t_can_dist2sxx.s13_time_s_min_rnd0,
-- "public".t_can_dist2sxx.s14_time_s_min_rnd0,
-- "public".t_can_dist2sxx.s15_time_s_min_rnd0,
-- "public".t_can_dist2sxx.s16_time_s_min_rnd0,
-- "public".t_can_dist2sxx.s17_time_s_min_rnd0,
-- "public".t_can_dist2sxx.s18_time_s_min_rnd0,
-- "public".t_can_dist2sxx.s99_time_s_min_rnd0,
-- --
-- "public".t_can_dist2sxx.s01_time_s_min_rnd1,
-- "public".t_can_dist2sxx.s02_time_s_min_rnd1,
-- "public".t_can_dist2sxx.s03_time_s_min_rnd1,
-- "public".t_can_dist2sxx.s04_time_s_min_rnd1,
-- "public".t_can_dist2sxx.s05_time_s_min_rnd1,
-- "public".t_can_dist2sxx.s06_time_s_min_rnd1,
-- "public".t_can_dist2sxx.s07_time_s_min_rnd1,
-- "public".t_can_dist2sxx.s08_time_s_min_rnd1,
-- "public".t_can_dist2sxx.s09_time_s_min_rnd1,
-- "public".t_can_dist2sxx.s10_time_s_min_rnd1,
-- "public".t_can_dist2sxx.s11_time_s_min_rnd1,
-- "public".t_can_dist2sxx.s12_time_s_min_rnd1,
-- "public".t_can_dist2sxx.s13_time_s_min_rnd1,
-- "public".t_can_dist2sxx.s14_time_s_min_rnd1,
-- "public".t_can_dist2sxx.s15_time_s_min_rnd1,
-- "public".t_can_dist2sxx.s16_time_s_min_rnd1,
-- "public".t_can_dist2sxx.s17_time_s_min_rnd1,
-- "public".t_can_dist2sxx.s18_time_s_min_rnd1,
-- "public".t_can_dist2sxx.s99_time_s_min_rnd1,
--
-- "public".t_can_dist2sxx.s01_dist_m_min,
-- "public".t_can_dist2sxx.s02_dist_m_min,
-- "public".t_can_dist2sxx.s03_dist_m_min,
-- "public".t_can_dist2sxx.s04_dist_m_min,
-- "public".t_can_dist2sxx.s05_dist_m_min,
-- "public".t_can_dist2sxx.s06_dist_m_min,
-- "public".t_can_dist2sxx.s07_dist_m_min,
-- "public".t_can_dist2sxx.s08_dist_m_min,
-- "public".t_can_dist2sxx.s09_dist_m_min,
-- "public".t_can_dist2sxx.s10_dist_m_min,
-- "public".t_can_dist2sxx.s11_dist_m_min,
-- "public".t_can_dist2sxx.s12_dist_m_min,
-- "public".t_can_dist2sxx.s13_dist_m_min,
-- "public".t_can_dist2sxx.s14_dist_m_min,
-- "public".t_can_dist2sxx.s15_dist_m_min,
-- "public".t_can_dist2sxx.s16_dist_m_min,
-- "public".t_can_dist2sxx.s17_dist_m_min,
-- "public".t_can_dist2sxx.s18_dist_m_min,
-- "public".t_can_dist2sxx.s99_dist_m_min,
-- --
-- "public".t_can_dist2sxx.s01_dist_m_min_rnd0,
-- "public".t_can_dist2sxx.s02_dist_m_min_rnd0,
-- "public".t_can_dist2sxx.s03_dist_m_min_rnd0,
-- "public".t_can_dist2sxx.s04_dist_m_min_rnd0,
-- "public".t_can_dist2sxx.s05_dist_m_min_rnd0,
-- "public".t_can_dist2sxx.s06_dist_m_min_rnd0,
-- "public".t_can_dist2sxx.s07_dist_m_min_rnd0,
-- "public".t_can_dist2sxx.s08_dist_m_min_rnd0,
-- "public".t_can_dist2sxx.s09_dist_m_min_rnd0,
-- "public".t_can_dist2sxx.s10_dist_m_min_rnd0,
-- "public".t_can_dist2sxx.s11_dist_m_min_rnd0,
-- "public".t_can_dist2sxx.s12_dist_m_min_rnd0,
-- "public".t_can_dist2sxx.s13_dist_m_min_rnd0,
-- "public".t_can_dist2sxx.s14_dist_m_min_rnd0,
-- "public".t_can_dist2sxx.s15_dist_m_min_rnd0,
-- "public".t_can_dist2sxx.s16_dist_m_min_rnd0,
-- "public".t_can_dist2sxx.s17_dist_m_min_rnd0,
-- "public".t_can_dist2sxx.s18_dist_m_min_rnd0,
-- "public".t_can_dist2sxx.s99_dist_m_min_rnd0,
-- --
-- "public".t_can_dist2sxx.s01_dist_m_min_rnd1,
-- "public".t_can_dist2sxx.s02_dist_m_min_rnd1,
-- "public".t_can_dist2sxx.s03_dist_m_min_rnd1,
-- "public".t_can_dist2sxx.s04_dist_m_min_rnd1,
-- "public".t_can_dist2sxx.s05_dist_m_min_rnd1,
-- "public".t_can_dist2sxx.s06_dist_m_min_rnd1,
-- "public".t_can_dist2sxx.s07_dist_m_min_rnd1,
-- "public".t_can_dist2sxx.s08_dist_m_min_rnd1,
-- "public".t_can_dist2sxx.s09_dist_m_min_rnd1,
-- "public".t_can_dist2sxx.s10_dist_m_min_rnd1,
-- "public".t_can_dist2sxx.s11_dist_m_min_rnd1,
-- "public".t_can_dist2sxx.s12_dist_m_min_rnd1,
-- "public".t_can_dist2sxx.s13_dist_m_min_rnd1,
-- "public".t_can_dist2sxx.s14_dist_m_min_rnd1,
-- "public".t_can_dist2sxx.s15_dist_m_min_rnd1,
-- "public".t_can_dist2sxx.s16_dist_m_min_rnd1,
-- "public".t_can_dist2sxx.s17_dist_m_min_rnd1,
-- "public".t_can_dist2sxx.s18_dist_m_min_rnd1,
-- "public".t_can_dist2sxx.s99_dist_m_min_rnd1,
--
"public".t_can_dist2sxx.s01_dist_s,
"public".t_can_dist2sxx.s02_dist_s,
"public".t_can_dist2sxx.s03_dist_s,
"public".t_can_dist2sxx.s04_dist_s,
"public".t_can_dist2sxx.s05_dist_s,
"public".t_can_dist2sxx.s06_dist_s,
"public".t_can_dist2sxx.s07_dist_s,
"public".t_can_dist2sxx.s08_dist_s,
"public".t_can_dist2sxx.s09_dist_s,
"public".t_can_dist2sxx.s10_dist_s,
"public".t_can_dist2sxx.s11_dist_s,
"public".t_can_dist2sxx.s12_dist_s,
"public".t_can_dist2sxx.s13_dist_s,
"public".t_can_dist2sxx.s14_dist_s,
"public".t_can_dist2sxx.s15_dist_s,
"public".t_can_dist2sxx.s16_dist_s,
"public".t_can_dist2sxx.s17_dist_s,
"public".t_can_dist2sxx.s18_dist_s,
"public".t_can_dist2sxx.s99_dist_s,
--
-- save data space
-- "public".t_can_dist2sxx.s01_dist_s_rnd0,
-- "public".t_can_dist2sxx.s02_dist_s_rnd0,
-- "public".t_can_dist2sxx.s03_dist_s_rnd0,
-- "public".t_can_dist2sxx.s04_dist_s_rnd0,
-- "public".t_can_dist2sxx.s05_dist_s_rnd0,
-- "public".t_can_dist2sxx.s06_dist_s_rnd0,
-- "public".t_can_dist2sxx.s07_dist_s_rnd0,
-- "public".t_can_dist2sxx.s08_dist_s_rnd0,
-- "public".t_can_dist2sxx.s09_dist_s_rnd0,
-- "public".t_can_dist2sxx.s10_dist_s_rnd0,
-- "public".t_can_dist2sxx.s11_dist_s_rnd0,
-- "public".t_can_dist2sxx.s12_dist_s_rnd0,
-- "public".t_can_dist2sxx.s13_dist_s_rnd0,
-- "public".t_can_dist2sxx.s14_dist_s_rnd0,
-- "public".t_can_dist2sxx.s15_dist_s_rnd0,
-- "public".t_can_dist2sxx.s16_dist_s_rnd0,
-- "public".t_can_dist2sxx.s17_dist_s_rnd0,
-- "public".t_can_dist2sxx.s18_dist_s_rnd0,
-- "public".t_can_dist2sxx.s99_dist_s_rnd0,
-- --
-- "public".t_can_dist2sxx.s01_dist_s_rnd1,
-- "public".t_can_dist2sxx.s02_dist_s_rnd1,
-- "public".t_can_dist2sxx.s03_dist_s_rnd1,
-- "public".t_can_dist2sxx.s04_dist_s_rnd1,
-- "public".t_can_dist2sxx.s05_dist_s_rnd1,
-- "public".t_can_dist2sxx.s06_dist_s_rnd1,
-- "public".t_can_dist2sxx.s07_dist_s_rnd1,
-- "public".t_can_dist2sxx.s08_dist_s_rnd1,
-- "public".t_can_dist2sxx.s09_dist_s_rnd1,
-- "public".t_can_dist2sxx.s10_dist_s_rnd1,
-- "public".t_can_dist2sxx.s11_dist_s_rnd1,
-- "public".t_can_dist2sxx.s12_dist_s_rnd1,
-- "public".t_can_dist2sxx.s13_dist_s_rnd1,
-- "public".t_can_dist2sxx.s14_dist_s_rnd1,
-- "public".t_can_dist2sxx.s15_dist_s_rnd1,
-- "public".t_can_dist2sxx.s16_dist_s_rnd1,
-- "public".t_can_dist2sxx.s17_dist_s_rnd1,
-- "public".t_can_dist2sxx.s18_dist_s_rnd1,
-- "public".t_can_dist2sxx.s99_dist_s_rnd1,
--
"public".t_can_dist2sxx.s01_dist_m,
"public".t_can_dist2sxx.s02_dist_m,
"public".t_can_dist2sxx.s03_dist_m,
"public".t_can_dist2sxx.s04_dist_m,
"public".t_can_dist2sxx.s05_dist_m,
"public".t_can_dist2sxx.s06_dist_m,
"public".t_can_dist2sxx.s07_dist_m,
"public".t_can_dist2sxx.s08_dist_m,
"public".t_can_dist2sxx.s09_dist_m,
"public".t_can_dist2sxx.s10_dist_m,
"public".t_can_dist2sxx.s11_dist_m,
"public".t_can_dist2sxx.s12_dist_m,
"public".t_can_dist2sxx.s13_dist_m,
"public".t_can_dist2sxx.s14_dist_m,
"public".t_can_dist2sxx.s15_dist_m,
"public".t_can_dist2sxx.s16_dist_m,
"public".t_can_dist2sxx.s17_dist_m,
"public".t_can_dist2sxx.s18_dist_m,
"public".t_can_dist2sxx.s99_dist_m,
--
-- save data space
-- "public".t_can_dist2sxx.s01_dist_m_rnd0,
-- "public".t_can_dist2sxx.s02_dist_m_rnd0,
-- "public".t_can_dist2sxx.s03_dist_m_rnd0,
-- "public".t_can_dist2sxx.s04_dist_m_rnd0,
-- "public".t_can_dist2sxx.s05_dist_m_rnd0,
-- "public".t_can_dist2sxx.s06_dist_m_rnd0,
-- "public".t_can_dist2sxx.s07_dist_m_rnd0,
-- "public".t_can_dist2sxx.s08_dist_m_rnd0,
-- "public".t_can_dist2sxx.s09_dist_m_rnd0,
-- "public".t_can_dist2sxx.s10_dist_m_rnd0,
-- "public".t_can_dist2sxx.s11_dist_m_rnd0,
-- "public".t_can_dist2sxx.s12_dist_m_rnd0,
-- "public".t_can_dist2sxx.s13_dist_m_rnd0,
-- "public".t_can_dist2sxx.s14_dist_m_rnd0,
-- "public".t_can_dist2sxx.s15_dist_m_rnd0,
-- "public".t_can_dist2sxx.s16_dist_m_rnd0,
-- "public".t_can_dist2sxx.s17_dist_m_rnd0,
-- "public".t_can_dist2sxx.s18_dist_m_rnd0,
-- "public".t_can_dist2sxx.s99_dist_m_rnd0,
-- --
-- "public".t_can_dist2sxx.s01_dist_m_rnd1,
-- "public".t_can_dist2sxx.s02_dist_m_rnd1,
-- "public".t_can_dist2sxx.s03_dist_m_rnd1,
-- "public".t_can_dist2sxx.s04_dist_m_rnd1,
-- "public".t_can_dist2sxx.s05_dist_m_rnd1,
-- "public".t_can_dist2sxx.s07_dist_m_rnd1,
-- "public".t_can_dist2sxx.s06_dist_m_rnd1,
-- "public".t_can_dist2sxx.s08_dist_m_rnd1,
-- "public".t_can_dist2sxx.s09_dist_m_rnd1,
-- "public".t_can_dist2sxx.s10_dist_m_rnd1,
-- "public".t_can_dist2sxx.s11_dist_m_rnd1,
-- "public".t_can_dist2sxx.s12_dist_m_rnd1,
-- "public".t_can_dist2sxx.s13_dist_m_rnd1,
-- "public".t_can_dist2sxx.s14_dist_m_rnd1,
-- "public".t_can_dist2sxx.s15_dist_m_rnd1,
-- "public".t_can_dist2sxx.s16_dist_m_rnd1,
-- "public".t_can_dist2sxx.s17_dist_m_rnd1,
-- "public".t_can_dist2sxx.s18_dist_m_rnd1,
-- "public".t_can_dist2sxx.s99_dist_m_rnd1,
--
-- CASE 
-- 	WHEN "public".t_can_format.speed_kmh = 0 THEN NULL
-- 	ELSE "public".t_can_dist2sxx.s01_dist_m/("public".t_can_format.speed_kmh/3.6) 
-- END as s01_ttc_s,
-- CASE 
-- 	WHEN "public".t_can_format.speed_kmh = 0 THEN NULL
-- 	ELSE "public".t_can_dist2sxx.s02_dist_m/("public".t_can_format.speed_kmh/3.6) 
-- END as s02_ttc_s,
-- CASE 
-- 	WHEN "public".t_can_format.speed_kmh = 0 THEN NULL
-- 	ELSE "public".t_can_dist2sxx.s03_dist_m/("public".t_can_format.speed_kmh/3.6) 
-- END as s03_ttc_s,
-- CASE 
-- 	WHEN "public".t_can_format.speed_kmh = 0 THEN NULL
-- 	ELSE "public".t_can_dist2sxx.s04_dist_m/("public".t_can_format.speed_kmh/3.6) 
-- END as s04_ttc_s,
-- CASE 
-- 	WHEN "public".t_can_format.speed_kmh = 0 THEN NULL
-- 	ELSE "public".t_can_dist2sxx.s05_dist_m/("public".t_can_format.speed_kmh/3.6) 
-- END as s05_ttc_s,
-- CASE 
-- 	WHEN "public".t_can_format.speed_kmh = 0 THEN NULL
-- 	ELSE "public".t_can_dist2sxx.s06_dist_m/("public".t_can_format.speed_kmh/3.6) 
-- END as s06_ttc_s,
-- CASE 
-- 	WHEN "public".t_can_format.speed_kmh = 0 THEN NULL
-- 	ELSE "public".t_can_dist2sxx.s07_dist_m/("public".t_can_format.speed_kmh/3.6) 
-- END as s07_ttc_s,
-- CASE 
-- 	WHEN "public".t_can_format.speed_kmh = 0 THEN NULL
-- 	ELSE "public".t_can_dist2sxx.s08_dist_m/("public".t_can_format.speed_kmh/3.6) 
-- END as s08_ttc_s,
-- CASE 
-- 	WHEN "public".t_can_format.speed_kmh = 0 THEN NULL
-- 	ELSE "public".t_can_dist2sxx.s09_dist_m/("public".t_can_format.speed_kmh/3.6) 
-- END as s09_ttc_s,
-- CASE 
-- 	WHEN "public".t_can_format.speed_kmh = 0 THEN NULL
-- 	ELSE "public".t_can_dist2sxx.s10_dist_m/("public".t_can_format.speed_kmh/3.6) 
-- END as s10_ttc_s,
-- CASE 
-- 	WHEN "public".t_can_format.speed_kmh = 0 THEN NULL
-- 	ELSE "public".t_can_dist2sxx.s11_dist_m/("public".t_can_format.speed_kmh/3.6)
-- END as s11_ttc_s,
-- CASE 
-- 	WHEN "public".t_can_format.speed_kmh = 0 THEN NULL
-- 	ELSE "public".t_can_dist2sxx.s12_dist_m/("public".t_can_format.speed_kmh/3.6) 
-- END as s12_ttc_s,
-- CASE 
-- 	WHEN "public".t_can_format.speed_kmh = 0 THEN NULL
-- 	ELSE "public".t_can_dist2sxx.s13_dist_m/("public".t_can_format.speed_kmh/3.6) 
-- END as s13_ttc_s,
-- CASE 
-- 	WHEN "public".t_can_format.speed_kmh = 0 THEN NULL
-- 	ELSE "public".t_can_dist2sxx.s14_dist_m/("public".t_can_format.speed_kmh/3.6) 
-- END as s14_ttc_s,
-- CASE 
-- 	WHEN "public".t_can_format.speed_kmh = 0 THEN NULL
-- 	ELSE "public".t_can_dist2sxx.s15_dist_m/("public".t_can_format.speed_kmh/3.6) 
-- END as s15_ttc_s,
-- CASE 
-- 	WHEN "public".t_can_format.speed_kmh = 0 THEN NULL
-- 	ELSE "public".t_can_dist2sxx.s16_dist_m/("public".t_can_format.speed_kmh/3.6) 
-- END as s16_ttc_s,
-- CASE 
-- 	WHEN "public".t_can_format.speed_kmh = 0 THEN NULL
-- 	ELSE "public".t_can_dist2sxx.s17_dist_m/("public".t_can_format.speed_kmh/3.6) 
-- END as s17_ttc_s,
-- CASE 
-- 	WHEN "public".t_can_format.speed_kmh = 0 THEN NULL
-- 	ELSE "public".t_can_dist2sxx.s18_dist_m/("public".t_can_format.speed_kmh/3.6) 
-- END as s18_ttc_s,
--
-- CASE 
-- 	WHEN "public".t_can_format.speed_kmh = 0 THEN NULL
-- 	ELSE round("public".t_can_dist2sxx.s01_dist_m/("public".t_can_format.speed_kmh/3.6),1)
-- END as s01_ttc_s_rnd,
-- CASE 
-- 	WHEN "public".t_can_format.speed_kmh = 0 THEN NULL
-- 	ELSE round("public".t_can_dist2sxx.s02_dist_m/("public".t_can_format.speed_kmh/3.6),1)
-- END as s02_ttc_s_rnd,
-- CASE 
-- 	WHEN "public".t_can_format.speed_kmh = 0 THEN NULL
-- 	ELSE round("public".t_can_dist2sxx.s03_dist_m/("public".t_can_format.speed_kmh/3.6),1)
-- END as s03_ttc_s_rnd,
-- CASE 
-- 	WHEN "public".t_can_format.speed_kmh = 0 THEN NULL
-- 	ELSE round("public".t_can_dist2sxx.s04_dist_m/("public".t_can_format.speed_kmh/3.6),1)
-- END as s04_ttc_s_rnd,
-- CASE 
-- 	WHEN "public".t_can_format.speed_kmh = 0 THEN NULL
-- 	ELSE round("public".t_can_dist2sxx.s05_dist_m/("public".t_can_format.speed_kmh/3.6),1)
-- END as s05_ttc_s_rnd,
-- CASE 
-- 	WHEN "public".t_can_format.speed_kmh = 0 THEN NULL
-- 	ELSE round("public".t_can_dist2sxx.s06_dist_m/("public".t_can_format.speed_kmh/3.6),1)
-- END as s06_ttc_s_rnd,
-- CASE 
-- 	WHEN "public".t_can_format.speed_kmh = 0 THEN NULL
-- 	ELSE round("public".t_can_dist2sxx.s07_dist_m/("public".t_can_format.speed_kmh/3.6),1)
-- END as s07_ttc_s_rnd,
-- CASE 
-- 	WHEN "public".t_can_format.speed_kmh = 0 THEN NULL
-- 	ELSE round("public".t_can_dist2sxx.s08_dist_m/("public".t_can_format.speed_kmh/3.6),1)
-- END as s08_ttc_s_rnd,
-- CASE 
-- 	WHEN "public".t_can_format.speed_kmh = 0 THEN NULL
-- 	ELSE round("public".t_can_dist2sxx.s09_dist_m/("public".t_can_format.speed_kmh/3.6),1)
-- END as s09_ttc_s_rnd,
-- CASE 
-- 	WHEN "public".t_can_format.speed_kmh = 0 THEN NULL
-- 	ELSE round("public".t_can_dist2sxx.s10_dist_m/("public".t_can_format.speed_kmh/3.6),1)
-- END as s10_ttc_s_rnd,
-- CASE 
-- 	WHEN "public".t_can_format.speed_kmh = 0 THEN NULL
-- 	ELSE round("public".t_can_dist2sxx.s11_dist_m/("public".t_can_format.speed_kmh/3.6),1)
-- END as s11_ttc_s_rnd,
-- CASE 
-- 	WHEN "public".t_can_format.speed_kmh = 0 THEN NULL
-- 	ELSE round("public".t_can_dist2sxx.s12_dist_m/("public".t_can_format.speed_kmh/3.6),1) 
-- END as s12_ttc_s_rnd,
-- CASE 
-- 	WHEN "public".t_can_format.speed_kmh = 0 THEN NULL
-- 	ELSE round("public".t_can_dist2sxx.s13_dist_m/("public".t_can_format.speed_kmh/3.6),1)
-- END as s13_ttc_s_rnd,
-- CASE 
-- 	WHEN "public".t_can_format.speed_kmh = 0 THEN NULL
-- 	ELSE round("public".t_can_dist2sxx.s14_dist_m/("public".t_can_format.speed_kmh/3.6),1)
-- END as s14_ttc_s_rnd,
-- CASE 
-- 	WHEN "public".t_can_format.speed_kmh = 0 THEN NULL
-- 	ELSE round("public".t_can_dist2sxx.s15_dist_m/("public".t_can_format.speed_kmh/3.6),1)
-- END as s15_ttc_s_rnd,
-- CASE 
-- 	WHEN "public".t_can_format.speed_kmh = 0 THEN NULL
-- 	ELSE round("public".t_can_dist2sxx.s16_dist_m/("public".t_can_format.speed_kmh/3.6),1)
-- END as s16_ttc_s_rnd,
-- CASE 
-- 	WHEN "public".t_can_format.speed_kmh = 0 THEN NULL
-- 	ELSE round("public".t_can_dist2sxx.s17_dist_m/("public".t_can_format.speed_kmh/3.6),1) 
-- END as s17_ttc_s_rnd,
-- CASE 
-- 	WHEN "public".t_can_format.speed_kmh = 0 THEN NULL
-- 	ELSE round("public".t_can_dist2sxx.s18_dist_m/("public".t_can_format.speed_kmh/3.6),1) 
-- END as s18_ttc_s_rnd,
--
"public".t_can_format.speed_kmh,
--"public".t_can_format.speed_kmh_diff,
"public".t_can_format.acclat_ms2,
--"public".t_can_format.acclat_ms2_diff,
"public".t_can_format.acclong_ms2,
--"public".t_can_format.acclong_ms2_diff,
"public".t_can_format.yawrate_degs,
--"public".t_can_format.yawrate_degs_diff,
"public".t_can_format.brakepress_bar,
--"public".t_can_format.brakepress_bar_diff,
"public".t_can_format.brakepress_status,
"public".t_can_format.steerangle_deg,
--"public".t_can_format.steerangle_deg_diff,
"public".t_can_format.steerangle_speed,
--"public".t_can_format.steerangle_speed_diff,
"public".t_can_format.accpedalpos_perc,
--"public".t_can_format.accpedalpos_perc_diff,
--"public".t_can_format.ind_left,
--"public".t_can_format.ind_right,
"public".t_can_format.ind,
"public".t_can_format.ldw_side,
"public".t_can_format.ldw_tlc_s,
--"public".t_can_format.ldw_tlc_s_diff,
"public".t_can_format.ldw_dlc_m,
--"public".t_can_format.ldw_dlc_m_diff,
"public".t_can_format.dist_intersect_m,
"public".t_can_format.road_type,
"public".t_can_format.lanes_count
--
--"public".t_procedure.file,
--"public".t_procedure.condition,
--"public".t_procedure.examiner
--"public".t_procedure.data

FROM
"public".t_can_dist2sxx
LEFT OUTER JOIN "public".t_can_format ON "public".t_can_dist2sxx.rownr = "public".t_can_format.rownr
LEFT OUTER JOIN "public".t_procedure ON "public".t_can_dist2sxx.subid = "public".t_procedure.subid

ORDER BY
"public".t_can_dist2sxx.rownr