DROP TABLE IF EXISTS t_glances_full_aggr_time_s_rnd1_max_dist2sxx_v2 CASCADE;
CREATE TABLE t_glances_full_aggr_time_s_rnd1_max_dist2sxx_v2 AS

SELECT
--"public".t_glances_full_aggr_time_s_rnd1_max.rownr,
--"public".t_glances_full_aggr_time_s_rnd1_max.rownr_aggr,
"public".t_glances_full_aggr_time_s_rnd1_max.subid,
"public".t_glances_full_aggr_time_s_rnd1_max.time_s,
--"public".t_glances_full_aggr_time_s_rnd1_max.time_s_rnd0,
"public".t_glances_full_aggr_time_s_rnd1_max.time_s_rnd1,
--"public".t_glances_full_aggr_time_s_rnd1_max.dist_m_diff,
"public".t_glances_full_aggr_time_s_rnd1_max.dist_m,
--"public".t_glances_full_aggr_time_s_rnd1_max.dist_m_rnd0,
"public".t_glances_full_aggr_time_s_rnd1_max.dist_m_rnd1,
"public".t_glances_full_aggr_time_s_rnd1_max.round,
"public".t_glances_full_aggr_time_s_rnd1_max.round_txt,
--"public".t_glances_full_aggr_time_s_rnd1_max.round_dist_m,
--"public".t_glances_full_aggr_time_s_rnd1_max.round_dist_m_rnd0,
--"public".t_glances_full_aggr_time_s_rnd1_max.round_dist_m_rnd1,
"public".t_glances_full_aggr_time_s_rnd1_max.gps_lat,
"public".t_glances_full_aggr_time_s_rnd1_max.gps_long,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s01_gps_lat,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s01_gps_long,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s02_gps_lat,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s02_gps_long,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s03_gps_lat,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s03_gps_long,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s04_gps_lat,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s04_gps_long,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s05_gps_lat,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s05_gps_long,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s06_gps_lat,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s06_gps_long,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s07_gps_lat,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s07_gps_long,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s08_gps_lat,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s08_gps_long,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s09_gps_lat,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s09_gps_long,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s10_gps_lat,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s10_gps_long,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s11_gps_lat,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s11_gps_long,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s12_gps_lat,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s12_gps_long,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s13_gps_lat,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s13_gps_long,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s14_gps_lat,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s14_gps_long,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s15_gps_lat,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s15_gps_long,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s16_gps_lat,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s16_gps_long,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s17_gps_lat,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s17_gps_long,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s18_gps_lat,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s18_gps_long,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s99_gps_lat,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s99_gps_long,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s01_gps_dist_m,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s02_gps_dist_m,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s03_gps_dist_m,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s04_gps_dist_m,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s05_gps_dist_m,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s06_gps_dist_m,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s07_gps_dist_m,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s08_gps_dist_m,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s09_gps_dist_m,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s10_gps_dist_m,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s11_gps_dist_m,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s12_gps_dist_m,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s13_gps_dist_m,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s14_gps_dist_m,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s15_gps_dist_m,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s16_gps_dist_m,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s17_gps_dist_m,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s18_gps_dist_m,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s99_gps_dist_m,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s01_gps_dist_m_min,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s02_gps_dist_m_min,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s03_gps_dist_m_min,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s04_gps_dist_m_min,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s05_gps_dist_m_min,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s06_gps_dist_m_min,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s07_gps_dist_m_min,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s08_gps_dist_m_min,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s09_gps_dist_m_min,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s10_gps_dist_m_min,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s11_gps_dist_m_min,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s12_gps_dist_m_min,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s13_gps_dist_m_min,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s14_gps_dist_m_min,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s15_gps_dist_m_min,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s16_gps_dist_m_min,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s17_gps_dist_m_min,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s18_gps_dist_m_min,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s99_gps_dist_m_min,
-- --
-- "public".t_glances_full_aggr_time_s_rnd1_max.s01_time_s_min,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s02_time_s_min,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s03_time_s_min,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s04_time_s_min,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s05_time_s_min,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s06_time_s_min,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s07_time_s_min,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s08_time_s_min,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s09_time_s_min,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s10_time_s_min,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s11_time_s_min,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s12_time_s_min,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s13_time_s_min,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s14_time_s_min,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s15_time_s_min,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s16_time_s_min,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s17_time_s_min,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s18_time_s_min,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s99_time_s_min,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s01_time_s_min_rnd0,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s02_time_s_min_rnd0,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s03_time_s_min_rnd0,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s04_time_s_min_rnd0,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s05_time_s_min_rnd0,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s06_time_s_min_rnd0,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s07_time_s_min_rnd0,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s08_time_s_min_rnd0,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s09_time_s_min_rnd0,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s10_time_s_min_rnd0,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s11_time_s_min_rnd0,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s12_time_s_min_rnd0,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s13_time_s_min_rnd0,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s14_time_s_min_rnd0,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s15_time_s_min_rnd0,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s16_time_s_min_rnd0,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s17_time_s_min_rnd0,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s18_time_s_min_rnd0,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s99_time_s_min_rnd0,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s01_time_s_min_rnd1,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s02_time_s_min_rnd1,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s03_time_s_min_rnd1,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s04_time_s_min_rnd1,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s05_time_s_min_rnd1,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s06_time_s_min_rnd1,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s07_time_s_min_rnd1,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s08_time_s_min_rnd1,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s09_time_s_min_rnd1,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s10_time_s_min_rnd1,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s11_time_s_min_rnd1,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s12_time_s_min_rnd1,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s13_time_s_min_rnd1,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s14_time_s_min_rnd1,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s15_time_s_min_rnd1,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s16_time_s_min_rnd1,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s17_time_s_min_rnd1,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s18_time_s_min_rnd1,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s99_time_s_min_rnd1,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s01_dist_m_min,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s02_dist_m_min,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s03_dist_m_min,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s04_dist_m_min,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s05_dist_m_min,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s06_dist_m_min,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s07_dist_m_min,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s08_dist_m_min,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s09_dist_m_min,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s10_dist_m_min,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s11_dist_m_min,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s12_dist_m_min,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s13_dist_m_min,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s14_dist_m_min,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s15_dist_m_min,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s16_dist_m_min,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s17_dist_m_min,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s18_dist_m_min,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s99_dist_m_min,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s01_dist_m_min_rnd0,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s02_dist_m_min_rnd0,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s03_dist_m_min_rnd0,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s04_dist_m_min_rnd0,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s05_dist_m_min_rnd0,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s06_dist_m_min_rnd0,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s07_dist_m_min_rnd0,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s08_dist_m_min_rnd0,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s09_dist_m_min_rnd0,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s10_dist_m_min_rnd0,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s11_dist_m_min_rnd0,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s12_dist_m_min_rnd0,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s13_dist_m_min_rnd0,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s14_dist_m_min_rnd0,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s15_dist_m_min_rnd0,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s16_dist_m_min_rnd0,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s17_dist_m_min_rnd0,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s18_dist_m_min_rnd0,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s99_dist_m_min_rnd0,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s01_dist_m_min_rnd1,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s02_dist_m_min_rnd1,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s03_dist_m_min_rnd1,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s04_dist_m_min_rnd1,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s05_dist_m_min_rnd1,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s06_dist_m_min_rnd1,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s07_dist_m_min_rnd1,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s08_dist_m_min_rnd1,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s09_dist_m_min_rnd1,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s10_dist_m_min_rnd1,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s11_dist_m_min_rnd1,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s12_dist_m_min_rnd1,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s13_dist_m_min_rnd1,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s14_dist_m_min_rnd1,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s15_dist_m_min_rnd1,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s16_dist_m_min_rnd1,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s17_dist_m_min_rnd1,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s18_dist_m_min_rnd1,
-- "public".t_glances_full_aggr_time_s_rnd1_max.s99_dist_m_min_rnd1,
--
-- due to aggregation in t_glances_full_aggr_dist_m_rnd0 need for new calculation of distances
-- "public".t_glances_full_aggr_time_s_rnd1_max.time_s - "public".t_glances_full_aggr_time_s_rnd1_max.s01_time_s_min as s01_dist_s,
-- "public".t_glances_full_aggr_time_s_rnd1_max.time_s - "public".t_glances_full_aggr_time_s_rnd1_max.s02_time_s_min as s02_dist_s,
-- "public".t_glances_full_aggr_time_s_rnd1_max.time_s - "public".t_glances_full_aggr_time_s_rnd1_max.s03_time_s_min as s03_dist_s,
-- "public".t_glances_full_aggr_time_s_rnd1_max.time_s - "public".t_glances_full_aggr_time_s_rnd1_max.s04_time_s_min as s04_dist_s,
-- "public".t_glances_full_aggr_time_s_rnd1_max.time_s - "public".t_glances_full_aggr_time_s_rnd1_max.s05_time_s_min as s05_dist_s,
-- "public".t_glances_full_aggr_time_s_rnd1_max.time_s - "public".t_glances_full_aggr_time_s_rnd1_max.s06_time_s_min as s06_dist_s,
-- "public".t_glances_full_aggr_time_s_rnd1_max.time_s - "public".t_glances_full_aggr_time_s_rnd1_max.s07_time_s_min as s07_dist_s,
-- "public".t_glances_full_aggr_time_s_rnd1_max.time_s - "public".t_glances_full_aggr_time_s_rnd1_max.s08_time_s_min as s08_dist_s,
-- "public".t_glances_full_aggr_time_s_rnd1_max.time_s - "public".t_glances_full_aggr_time_s_rnd1_max.s09_time_s_min as s09_dist_s,
-- "public".t_glances_full_aggr_time_s_rnd1_max.time_s - "public".t_glances_full_aggr_time_s_rnd1_max.s10_time_s_min as s10_dist_s,
-- "public".t_glances_full_aggr_time_s_rnd1_max.time_s - "public".t_glances_full_aggr_time_s_rnd1_max.s11_time_s_min as s11_dist_s,
-- "public".t_glances_full_aggr_time_s_rnd1_max.time_s - "public".t_glances_full_aggr_time_s_rnd1_max.s12_time_s_min as s12_dist_s,
-- "public".t_glances_full_aggr_time_s_rnd1_max.time_s - "public".t_glances_full_aggr_time_s_rnd1_max.s13_time_s_min as s13_dist_s,
-- "public".t_glances_full_aggr_time_s_rnd1_max.time_s - "public".t_glances_full_aggr_time_s_rnd1_max.s14_time_s_min as s14_dist_s,
-- "public".t_glances_full_aggr_time_s_rnd1_max.time_s - "public".t_glances_full_aggr_time_s_rnd1_max.s15_time_s_min as s15_dist_s,
-- "public".t_glances_full_aggr_time_s_rnd1_max.time_s - "public".t_glances_full_aggr_time_s_rnd1_max.s16_time_s_min as s16_dist_s,
-- "public".t_glances_full_aggr_time_s_rnd1_max.time_s - "public".t_glances_full_aggr_time_s_rnd1_max.s17_time_s_min as s17_dist_s,
-- "public".t_glances_full_aggr_time_s_rnd1_max.time_s - "public".t_glances_full_aggr_time_s_rnd1_max.s18_time_s_min as s18_dist_s,
-- "public".t_glances_full_aggr_time_s_rnd1_max.time_s - "public".t_glances_full_aggr_time_s_rnd1_max.s99_time_s_min as s99_dist_s,
--
--__ HERE
"public".t_glances_full_aggr_time_s_rnd1_max.time_s_rnd1 - round("public".t_can_dist2sxx_summary.s01_time_s_min, 1) as s01_dist_s_rnd1,
"public".t_glances_full_aggr_time_s_rnd1_max.time_s_rnd1 - round("public".t_can_dist2sxx_summary.s02_time_s_min, 1) as s02_dist_s_rnd1,
"public".t_glances_full_aggr_time_s_rnd1_max.time_s_rnd1 - round("public".t_can_dist2sxx_summary.s03_time_s_min, 1) as s03_dist_s_rnd1,
"public".t_glances_full_aggr_time_s_rnd1_max.time_s_rnd1 - round("public".t_can_dist2sxx_summary.s04_time_s_min, 1) as s04_dist_s_rnd1,
"public".t_glances_full_aggr_time_s_rnd1_max.time_s_rnd1 - round("public".t_can_dist2sxx_summary.s05_time_s_min, 1) as s05_dist_s_rnd1,
"public".t_glances_full_aggr_time_s_rnd1_max.time_s_rnd1 - round("public".t_can_dist2sxx_summary.s06_time_s_min, 1) as s06_dist_s_rnd1,
"public".t_glances_full_aggr_time_s_rnd1_max.time_s_rnd1 - round("public".t_can_dist2sxx_summary.s07_time_s_min, 1) as s07_dist_s_rnd1,
"public".t_glances_full_aggr_time_s_rnd1_max.time_s_rnd1 - round("public".t_can_dist2sxx_summary.s08_time_s_min, 1) as s08_dist_s_rnd1,
"public".t_glances_full_aggr_time_s_rnd1_max.time_s_rnd1 - round("public".t_can_dist2sxx_summary.s09_time_s_min, 1) as s09_dist_s_rnd1,
"public".t_glances_full_aggr_time_s_rnd1_max.time_s_rnd1 - round("public".t_can_dist2sxx_summary.s10_time_s_min, 1) as s10_dist_s_rnd1,
"public".t_glances_full_aggr_time_s_rnd1_max.time_s_rnd1 - round("public".t_can_dist2sxx_summary.s11_time_s_min, 1) as s11_dist_s_rnd1,
"public".t_glances_full_aggr_time_s_rnd1_max.time_s_rnd1 - round("public".t_can_dist2sxx_summary.s12_time_s_min, 1) as s12_dist_s_rnd1,
"public".t_glances_full_aggr_time_s_rnd1_max.time_s_rnd1 - round("public".t_can_dist2sxx_summary.s13_time_s_min, 1) as s13_dist_s_rnd1,
"public".t_glances_full_aggr_time_s_rnd1_max.time_s_rnd1 - round("public".t_can_dist2sxx_summary.s14_time_s_min, 1) as s14_dist_s_rnd1,
"public".t_glances_full_aggr_time_s_rnd1_max.time_s_rnd1 - round("public".t_can_dist2sxx_summary.s15_time_s_min, 1) as s15_dist_s_rnd1,
"public".t_glances_full_aggr_time_s_rnd1_max.time_s_rnd1 - round("public".t_can_dist2sxx_summary.s16_time_s_min, 1) as s16_dist_s_rnd1,
"public".t_glances_full_aggr_time_s_rnd1_max.time_s_rnd1 - round("public".t_can_dist2sxx_summary.s17_time_s_min, 1) as s17_dist_s_rnd1,
"public".t_glances_full_aggr_time_s_rnd1_max.time_s_rnd1 - round("public".t_can_dist2sxx_summary.s18_time_s_min, 1) as s18_dist_s_rnd1,
"public".t_glances_full_aggr_time_s_rnd1_max.time_s_rnd1 - round("public".t_can_dist2sxx_summary.s99_time_s_min, 1) as s99_dist_s_rnd1,
-- --
-- "public".t_glances_full_aggr_time_s_rnd1_max.time_s_rnd1 - "public".t_glances_full_aggr_time_s_rnd1_max.s01_time_s_min_rnd1 as s01_dist_s_rnd1,
-- "public".t_glances_full_aggr_time_s_rnd1_max.time_s_rnd1 - "public".t_glances_full_aggr_time_s_rnd1_max.s02_time_s_min_rnd1 as s02_dist_s_rnd1,
-- "public".t_glances_full_aggr_time_s_rnd1_max.time_s_rnd1 - "public".t_glances_full_aggr_time_s_rnd1_max.s03_time_s_min_rnd1 as s03_dist_s_rnd1,
-- "public".t_glances_full_aggr_time_s_rnd1_max.time_s_rnd1 - "public".t_glances_full_aggr_time_s_rnd1_max.s04_time_s_min_rnd1 as s04_dist_s_rnd1,
-- "public".t_glances_full_aggr_time_s_rnd1_max.time_s_rnd1 - "public".t_glances_full_aggr_time_s_rnd1_max.s05_time_s_min_rnd1 as s05_dist_s_rnd1,
-- "public".t_glances_full_aggr_time_s_rnd1_max.time_s_rnd1 - "public".t_glances_full_aggr_time_s_rnd1_max.s06_time_s_min_rnd1 as s06_dist_s_rnd1,
-- "public".t_glances_full_aggr_time_s_rnd1_max.time_s_rnd1 - "public".t_glances_full_aggr_time_s_rnd1_max.s07_time_s_min_rnd1 as s07_dist_s_rnd1,
-- "public".t_glances_full_aggr_time_s_rnd1_max.time_s_rnd1 - "public".t_glances_full_aggr_time_s_rnd1_max.s08_time_s_min_rnd1 as s08_dist_s_rnd1,
-- "public".t_glances_full_aggr_time_s_rnd1_max.time_s_rnd1 - "public".t_glances_full_aggr_time_s_rnd1_max.s09_time_s_min_rnd1 as s09_dist_s_rnd1,
-- "public".t_glances_full_aggr_time_s_rnd1_max.time_s_rnd1 - "public".t_glances_full_aggr_time_s_rnd1_max.s10_time_s_min_rnd1 as s10_dist_s_rnd1,
-- "public".t_glances_full_aggr_time_s_rnd1_max.time_s_rnd1 - "public".t_glances_full_aggr_time_s_rnd1_max.s11_time_s_min_rnd1 as s11_dist_s_rnd1,
-- "public".t_glances_full_aggr_time_s_rnd1_max.time_s_rnd1 - "public".t_glances_full_aggr_time_s_rnd1_max.s12_time_s_min_rnd1 as s12_dist_s_rnd1,
-- "public".t_glances_full_aggr_time_s_rnd1_max.time_s_rnd1 - "public".t_glances_full_aggr_time_s_rnd1_max.s13_time_s_min_rnd1 as s13_dist_s_rnd1,
-- "public".t_glances_full_aggr_time_s_rnd1_max.time_s_rnd1 - "public".t_glances_full_aggr_time_s_rnd1_max.s14_time_s_min_rnd1 as s14_dist_s_rnd1,
-- "public".t_glances_full_aggr_time_s_rnd1_max.time_s_rnd1 - "public".t_glances_full_aggr_time_s_rnd1_max.s15_time_s_min_rnd1 as s15_dist_s_rnd1,
-- "public".t_glances_full_aggr_time_s_rnd1_max.time_s_rnd1 - "public".t_glances_full_aggr_time_s_rnd1_max.s16_time_s_min_rnd1 as s16_dist_s_rnd1,
-- "public".t_glances_full_aggr_time_s_rnd1_max.time_s_rnd1 - "public".t_glances_full_aggr_time_s_rnd1_max.s17_time_s_min_rnd1 as s17_dist_s_rnd1,
-- "public".t_glances_full_aggr_time_s_rnd1_max.time_s_rnd1 - "public".t_glances_full_aggr_time_s_rnd1_max.s18_time_s_min_rnd1 as s18_dist_s_rnd1,
-- "public".t_glances_full_aggr_time_s_rnd1_max.time_s_rnd1 - "public".t_glances_full_aggr_time_s_rnd1_max.s99_time_s_min_rnd1 as s99_dist_s_rnd1,
--
-- "public".t_glances_full_aggr_time_s_rnd1_max.dist_m - "public".t_glances_full_aggr_time_s_rnd1_max.s01_dist_m_min as s01_dist_m,
-- "public".t_glances_full_aggr_time_s_rnd1_max.dist_m - "public".t_glances_full_aggr_time_s_rnd1_max.s02_dist_m_min as s02_dist_m,
-- "public".t_glances_full_aggr_time_s_rnd1_max.dist_m - "public".t_glances_full_aggr_time_s_rnd1_max.s03_dist_m_min as s03_dist_m,
-- "public".t_glances_full_aggr_time_s_rnd1_max.dist_m - "public".t_glances_full_aggr_time_s_rnd1_max.s04_dist_m_min as s04_dist_m,
-- "public".t_glances_full_aggr_time_s_rnd1_max.dist_m - "public".t_glances_full_aggr_time_s_rnd1_max.s05_dist_m_min as s05_dist_m,
-- "public".t_glances_full_aggr_time_s_rnd1_max.dist_m - "public".t_glances_full_aggr_time_s_rnd1_max.s06_dist_m_min as s06_dist_m,
-- "public".t_glances_full_aggr_time_s_rnd1_max.dist_m - "public".t_glances_full_aggr_time_s_rnd1_max.s07_dist_m_min as s07_dist_m,
-- "public".t_glances_full_aggr_time_s_rnd1_max.dist_m - "public".t_glances_full_aggr_time_s_rnd1_max.s08_dist_m_min as s08_dist_m,
-- "public".t_glances_full_aggr_time_s_rnd1_max.dist_m - "public".t_glances_full_aggr_time_s_rnd1_max.s09_dist_m_min as s09_dist_m,
-- "public".t_glances_full_aggr_time_s_rnd1_max.dist_m - "public".t_glances_full_aggr_time_s_rnd1_max.s10_dist_m_min as s10_dist_m,
-- "public".t_glances_full_aggr_time_s_rnd1_max.dist_m - "public".t_glances_full_aggr_time_s_rnd1_max.s11_dist_m_min as s11_dist_m,
-- "public".t_glances_full_aggr_time_s_rnd1_max.dist_m - "public".t_glances_full_aggr_time_s_rnd1_max.s12_dist_m_min as s12_dist_m,
-- "public".t_glances_full_aggr_time_s_rnd1_max.dist_m - "public".t_glances_full_aggr_time_s_rnd1_max.s13_dist_m_min as s13_dist_m,
-- "public".t_glances_full_aggr_time_s_rnd1_max.dist_m - "public".t_glances_full_aggr_time_s_rnd1_max.s14_dist_m_min as s14_dist_m,
-- "public".t_glances_full_aggr_time_s_rnd1_max.dist_m - "public".t_glances_full_aggr_time_s_rnd1_max.s15_dist_m_min as s15_dist_m,
-- "public".t_glances_full_aggr_time_s_rnd1_max.dist_m - "public".t_glances_full_aggr_time_s_rnd1_max.s16_dist_m_min as s16_dist_m,
-- "public".t_glances_full_aggr_time_s_rnd1_max.dist_m - "public".t_glances_full_aggr_time_s_rnd1_max.s17_dist_m_min as s17_dist_m,
-- "public".t_glances_full_aggr_time_s_rnd1_max.dist_m - "public".t_glances_full_aggr_time_s_rnd1_max.s18_dist_m_min as s18_dist_m,
-- "public".t_glances_full_aggr_time_s_rnd1_max.dist_m - "public".t_glances_full_aggr_time_s_rnd1_max.s99_dist_m_min as s99_dist_m,
--
"public".t_glances_full_aggr_time_s_rnd1_max.dist_m_rnd1 - round("public".t_can_dist2sxx_summary.s01_dist_m_min, 1) as s01_dist_m_rnd1,
"public".t_glances_full_aggr_time_s_rnd1_max.dist_m_rnd1 - round("public".t_can_dist2sxx_summary.s02_dist_m_min, 1) as s02_dist_m_rnd1,
"public".t_glances_full_aggr_time_s_rnd1_max.dist_m_rnd1 - round("public".t_can_dist2sxx_summary.s03_dist_m_min, 1) as s03_dist_m_rnd1,
"public".t_glances_full_aggr_time_s_rnd1_max.dist_m_rnd1 - round("public".t_can_dist2sxx_summary.s04_dist_m_min, 1) as s04_dist_m_rnd1,
"public".t_glances_full_aggr_time_s_rnd1_max.dist_m_rnd1 - round("public".t_can_dist2sxx_summary.s05_dist_m_min, 1) as s05_dist_m_rnd1,
"public".t_glances_full_aggr_time_s_rnd1_max.dist_m_rnd1 - round("public".t_can_dist2sxx_summary.s06_dist_m_min, 1) as s06_dist_m_rnd1,
"public".t_glances_full_aggr_time_s_rnd1_max.dist_m_rnd1 - round("public".t_can_dist2sxx_summary.s07_dist_m_min, 1) as s07_dist_m_rnd1,
"public".t_glances_full_aggr_time_s_rnd1_max.dist_m_rnd1 - round("public".t_can_dist2sxx_summary.s08_dist_m_min, 1) as s08_dist_m_rnd1,
"public".t_glances_full_aggr_time_s_rnd1_max.dist_m_rnd1 - round("public".t_can_dist2sxx_summary.s09_dist_m_min, 1) as s09_dist_m_rnd1,
"public".t_glances_full_aggr_time_s_rnd1_max.dist_m_rnd1 - round("public".t_can_dist2sxx_summary.s10_dist_m_min, 1) as s10_dist_m_rnd1,
"public".t_glances_full_aggr_time_s_rnd1_max.dist_m_rnd1 - round("public".t_can_dist2sxx_summary.s11_dist_m_min, 1) as s11_dist_m_rnd1,
"public".t_glances_full_aggr_time_s_rnd1_max.dist_m_rnd1 - round("public".t_can_dist2sxx_summary.s12_dist_m_min, 1) as s12_dist_m_rnd1,
"public".t_glances_full_aggr_time_s_rnd1_max.dist_m_rnd1 - round("public".t_can_dist2sxx_summary.s13_dist_m_min, 1) as s13_dist_m_rnd1,
"public".t_glances_full_aggr_time_s_rnd1_max.dist_m_rnd1 - round("public".t_can_dist2sxx_summary.s14_dist_m_min, 1) as s14_dist_m_rnd1,
"public".t_glances_full_aggr_time_s_rnd1_max.dist_m_rnd1 - round("public".t_can_dist2sxx_summary.s15_dist_m_min, 1) as s15_dist_m_rnd1,
"public".t_glances_full_aggr_time_s_rnd1_max.dist_m_rnd1 - round("public".t_can_dist2sxx_summary.s16_dist_m_min, 1) as s16_dist_m_rnd1,
"public".t_glances_full_aggr_time_s_rnd1_max.dist_m_rnd1 - round("public".t_can_dist2sxx_summary.s17_dist_m_min, 1) as s17_dist_m_rnd1,
"public".t_glances_full_aggr_time_s_rnd1_max.dist_m_rnd1 - round("public".t_can_dist2sxx_summary.s18_dist_m_min, 1) as s18_dist_m_rnd1,
"public".t_glances_full_aggr_time_s_rnd1_max.dist_m_rnd1 - round("public".t_can_dist2sxx_summary.s99_dist_m_min, 1) as s99_dist_m_rnd1,
--
-- "public".t_glances_full_aggr_time_s_rnd1_max.dist_m_rnd1 - "public".t_glances_full_aggr_time_s_rnd1_max.s01_dist_m_min_rnd1 as s01_dist_m_rnd1,
-- "public".t_glances_full_aggr_time_s_rnd1_max.dist_m_rnd1 - "public".t_glances_full_aggr_time_s_rnd1_max.s02_dist_m_min_rnd1 as s02_dist_m_rnd1,
-- "public".t_glances_full_aggr_time_s_rnd1_max.dist_m_rnd1 - "public".t_glances_full_aggr_time_s_rnd1_max.s03_dist_m_min_rnd1 as s03_dist_m_rnd1,
-- "public".t_glances_full_aggr_time_s_rnd1_max.dist_m_rnd1 - "public".t_glances_full_aggr_time_s_rnd1_max.s04_dist_m_min_rnd1 as s04_dist_m_rnd1,
-- "public".t_glances_full_aggr_time_s_rnd1_max.dist_m_rnd1 - "public".t_glances_full_aggr_time_s_rnd1_max.s05_dist_m_min_rnd1 as s05_dist_m_rnd1,
-- "public".t_glances_full_aggr_time_s_rnd1_max.dist_m_rnd1 - "public".t_glances_full_aggr_time_s_rnd1_max.s06_dist_m_min_rnd1 as s06_dist_m_rnd1,
-- "public".t_glances_full_aggr_time_s_rnd1_max.dist_m_rnd1 - "public".t_glances_full_aggr_time_s_rnd1_max.s07_dist_m_min_rnd1 as s07_dist_m_rnd1,
-- "public".t_glances_full_aggr_time_s_rnd1_max.dist_m_rnd1 - "public".t_glances_full_aggr_time_s_rnd1_max.s08_dist_m_min_rnd1 as s08_dist_m_rnd1,
-- "public".t_glances_full_aggr_time_s_rnd1_max.dist_m_rnd1 - "public".t_glances_full_aggr_time_s_rnd1_max.s09_dist_m_min_rnd1 as s09_dist_m_rnd1,
-- "public".t_glances_full_aggr_time_s_rnd1_max.dist_m_rnd1 - "public".t_glances_full_aggr_time_s_rnd1_max.s10_dist_m_min_rnd1 as s10_dist_m_rnd1,
-- "public".t_glances_full_aggr_time_s_rnd1_max.dist_m_rnd1 - "public".t_glances_full_aggr_time_s_rnd1_max.s11_dist_m_min_rnd1 as s11_dist_m_rnd1,
-- "public".t_glances_full_aggr_time_s_rnd1_max.dist_m_rnd1 - "public".t_glances_full_aggr_time_s_rnd1_max.s12_dist_m_min_rnd1 as s12_dist_m_rnd1,
-- "public".t_glances_full_aggr_time_s_rnd1_max.dist_m_rnd1 - "public".t_glances_full_aggr_time_s_rnd1_max.s13_dist_m_min_rnd1 as s13_dist_m_rnd1,
-- "public".t_glances_full_aggr_time_s_rnd1_max.dist_m_rnd1 - "public".t_glances_full_aggr_time_s_rnd1_max.s14_dist_m_min_rnd1 as s14_dist_m_rnd1,
-- "public".t_glances_full_aggr_time_s_rnd1_max.dist_m_rnd1 - "public".t_glances_full_aggr_time_s_rnd1_max.s15_dist_m_min_rnd1 as s15_dist_m_rnd1,
-- "public".t_glances_full_aggr_time_s_rnd1_max.dist_m_rnd1 - "public".t_glances_full_aggr_time_s_rnd1_max.s16_dist_m_min_rnd1 as s16_dist_m_rnd1,
-- "public".t_glances_full_aggr_time_s_rnd1_max.dist_m_rnd1 - "public".t_glances_full_aggr_time_s_rnd1_max.s17_dist_m_min_rnd1 as s17_dist_m_rnd1,
-- "public".t_glances_full_aggr_time_s_rnd1_max.dist_m_rnd1 - "public".t_glances_full_aggr_time_s_rnd1_max.s18_dist_m_min_rnd1 as s18_dist_m_rnd1,
-- "public".t_glances_full_aggr_time_s_rnd1_max.dist_m_rnd1 - "public".t_glances_full_aggr_time_s_rnd1_max.s99_dist_m_min_rnd1 as s99_dist_m_rnd1,
--

"public".t_glances_full_aggr_time_s_rnd1_max.glance_dir,
"public".t_glances_full_aggr_time_s_rnd1_max.glance_dir_v2,
"public".t_glances_full_aggr_time_s_rnd1_max.glance_dir_txt,
"public".t_glances_full_aggr_time_s_rnd1_max.glance_dir_v2_txt,
"public".t_glances_full_aggr_time_s_rnd1_max.glance_time_s_start,
"public".t_glances_full_aggr_time_s_rnd1_max.glance_time_s_end,
"public".t_glances_full_aggr_time_s_rnd1_max.glance_dur_s,
"public".t_glances_full_aggr_time_s_rnd1_max.glance_dur_s_dir_cum,
"public".t_glances_full_aggr_time_s_rnd1_max.glance_nr,
"public".t_glances_full_aggr_time_s_rnd1_max.glance_nr_dir

-- "public".t_glances_full_aggr_time_s_rnd1_max.filename,
-- "public".t_glances_full_aggr_time_s_rnd1_max.cond,
-- "public".t_glances_full_aggr_time_s_rnd1_max.exid,
-- "public".t_glances_full_aggr_time_s_rnd1_max."date"

FROM
"public".t_glances_full_aggr_time_s_rnd1_max

LEFT JOIN
t_can_dist2sxx_summary ON 
t_glances_full_aggr_time_s_rnd1_max.subid = t_can_dist2sxx_summary.subid AND
t_glances_full_aggr_time_s_rnd1_max.round = t_can_dist2sxx_summary.round
