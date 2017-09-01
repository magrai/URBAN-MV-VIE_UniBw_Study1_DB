DROP TABLE IF EXISTS t_can_full_aggr_dist_m_rnd0_min_dist2sxx_v2 CASCADE;
CREATE TABLE t_can_full_aggr_dist_m_rnd0_min_dist2sxx_v2 AS

SELECT
"public".t_can_full_aggr_dist_m_rnd0_min.rownr,
"public".t_can_full_aggr_dist_m_rnd0_min.rownr_aggr,
"public".t_can_full_aggr_dist_m_rnd0_min.subid,
"public".t_can_full_aggr_dist_m_rnd0_min.time_s,
"public".t_can_full_aggr_dist_m_rnd0_min.time_s_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.time_s_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.dist_m_diff,
"public".t_can_full_aggr_dist_m_rnd0_min.dist_m,
"public".t_can_full_aggr_dist_m_rnd0_min.dist_m_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.dist_m_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.round,
"public".t_can_full_aggr_dist_m_rnd0_min.round_txt,
"public".t_can_full_aggr_dist_m_rnd0_min.round_dist_m,
"public".t_can_full_aggr_dist_m_rnd0_min.round_dist_m_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.round_dist_m_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.gps_lat,
"public".t_can_full_aggr_dist_m_rnd0_min.gps_long,
"public".t_can_full_aggr_dist_m_rnd0_min.s01_gps_lat,
"public".t_can_full_aggr_dist_m_rnd0_min.s01_gps_long,
"public".t_can_full_aggr_dist_m_rnd0_min.s02_gps_lat,
"public".t_can_full_aggr_dist_m_rnd0_min.s02_gps_long,
"public".t_can_full_aggr_dist_m_rnd0_min.s03_gps_lat,
"public".t_can_full_aggr_dist_m_rnd0_min.s03_gps_long,
"public".t_can_full_aggr_dist_m_rnd0_min.s04_gps_lat,
"public".t_can_full_aggr_dist_m_rnd0_min.s04_gps_long,
"public".t_can_full_aggr_dist_m_rnd0_min.s05_gps_lat,
"public".t_can_full_aggr_dist_m_rnd0_min.s05_gps_long,
"public".t_can_full_aggr_dist_m_rnd0_min.s06_gps_lat,
"public".t_can_full_aggr_dist_m_rnd0_min.s06_gps_long,
"public".t_can_full_aggr_dist_m_rnd0_min.s07_gps_lat,
"public".t_can_full_aggr_dist_m_rnd0_min.s07_gps_long,
"public".t_can_full_aggr_dist_m_rnd0_min.s08_gps_lat,
"public".t_can_full_aggr_dist_m_rnd0_min.s08_gps_long,
"public".t_can_full_aggr_dist_m_rnd0_min.s09_gps_lat,
"public".t_can_full_aggr_dist_m_rnd0_min.s09_gps_long,
"public".t_can_full_aggr_dist_m_rnd0_min.s10_gps_lat,
"public".t_can_full_aggr_dist_m_rnd0_min.s10_gps_long,
"public".t_can_full_aggr_dist_m_rnd0_min.s11_gps_lat,
"public".t_can_full_aggr_dist_m_rnd0_min.s11_gps_long,
"public".t_can_full_aggr_dist_m_rnd0_min.s12_gps_lat,
"public".t_can_full_aggr_dist_m_rnd0_min.s12_gps_long,
"public".t_can_full_aggr_dist_m_rnd0_min.s13_gps_lat,
"public".t_can_full_aggr_dist_m_rnd0_min.s13_gps_long,
"public".t_can_full_aggr_dist_m_rnd0_min.s14_gps_lat,
"public".t_can_full_aggr_dist_m_rnd0_min.s14_gps_long,
"public".t_can_full_aggr_dist_m_rnd0_min.s15_gps_lat,
"public".t_can_full_aggr_dist_m_rnd0_min.s15_gps_long,
"public".t_can_full_aggr_dist_m_rnd0_min.s16_gps_lat,
"public".t_can_full_aggr_dist_m_rnd0_min.s16_gps_long,
"public".t_can_full_aggr_dist_m_rnd0_min.s17_gps_lat,
"public".t_can_full_aggr_dist_m_rnd0_min.s17_gps_long,
"public".t_can_full_aggr_dist_m_rnd0_min.s18_gps_lat,
"public".t_can_full_aggr_dist_m_rnd0_min.s18_gps_long,
"public".t_can_full_aggr_dist_m_rnd0_min.s99_gps_lat,
"public".t_can_full_aggr_dist_m_rnd0_min.s99_gps_long,
"public".t_can_full_aggr_dist_m_rnd0_min.s01_gps_dist_m,
"public".t_can_full_aggr_dist_m_rnd0_min.s02_gps_dist_m,
"public".t_can_full_aggr_dist_m_rnd0_min.s03_gps_dist_m,
"public".t_can_full_aggr_dist_m_rnd0_min.s04_gps_dist_m,
"public".t_can_full_aggr_dist_m_rnd0_min.s05_gps_dist_m,
"public".t_can_full_aggr_dist_m_rnd0_min.s06_gps_dist_m,
"public".t_can_full_aggr_dist_m_rnd0_min.s07_gps_dist_m,
"public".t_can_full_aggr_dist_m_rnd0_min.s08_gps_dist_m,
"public".t_can_full_aggr_dist_m_rnd0_min.s09_gps_dist_m,
"public".t_can_full_aggr_dist_m_rnd0_min.s10_gps_dist_m,
"public".t_can_full_aggr_dist_m_rnd0_min.s11_gps_dist_m,
"public".t_can_full_aggr_dist_m_rnd0_min.s12_gps_dist_m,
"public".t_can_full_aggr_dist_m_rnd0_min.s13_gps_dist_m,
"public".t_can_full_aggr_dist_m_rnd0_min.s14_gps_dist_m,
"public".t_can_full_aggr_dist_m_rnd0_min.s15_gps_dist_m,
"public".t_can_full_aggr_dist_m_rnd0_min.s16_gps_dist_m,
"public".t_can_full_aggr_dist_m_rnd0_min.s17_gps_dist_m,
"public".t_can_full_aggr_dist_m_rnd0_min.s18_gps_dist_m,
"public".t_can_full_aggr_dist_m_rnd0_min.s99_gps_dist_m,
"public".t_can_full_aggr_dist_m_rnd0_min.s01_gps_dist_m_min,
"public".t_can_full_aggr_dist_m_rnd0_min.s02_gps_dist_m_min,
"public".t_can_full_aggr_dist_m_rnd0_min.s03_gps_dist_m_min,
"public".t_can_full_aggr_dist_m_rnd0_min.s04_gps_dist_m_min,
"public".t_can_full_aggr_dist_m_rnd0_min.s05_gps_dist_m_min,
"public".t_can_full_aggr_dist_m_rnd0_min.s06_gps_dist_m_min,
"public".t_can_full_aggr_dist_m_rnd0_min.s07_gps_dist_m_min,
"public".t_can_full_aggr_dist_m_rnd0_min.s08_gps_dist_m_min,
"public".t_can_full_aggr_dist_m_rnd0_min.s09_gps_dist_m_min,
"public".t_can_full_aggr_dist_m_rnd0_min.s10_gps_dist_m_min,
"public".t_can_full_aggr_dist_m_rnd0_min.s11_gps_dist_m_min,
"public".t_can_full_aggr_dist_m_rnd0_min.s12_gps_dist_m_min,
"public".t_can_full_aggr_dist_m_rnd0_min.s13_gps_dist_m_min,
"public".t_can_full_aggr_dist_m_rnd0_min.s14_gps_dist_m_min,
"public".t_can_full_aggr_dist_m_rnd0_min.s15_gps_dist_m_min,
"public".t_can_full_aggr_dist_m_rnd0_min.s16_gps_dist_m_min,
"public".t_can_full_aggr_dist_m_rnd0_min.s17_gps_dist_m_min,
"public".t_can_full_aggr_dist_m_rnd0_min.s18_gps_dist_m_min,
"public".t_can_full_aggr_dist_m_rnd0_min.s99_gps_dist_m_min,
--
"public".t_can_full_aggr_dist_m_rnd0_min.s01_time_s_min,
"public".t_can_full_aggr_dist_m_rnd0_min.s02_time_s_min,
"public".t_can_full_aggr_dist_m_rnd0_min.s03_time_s_min,
"public".t_can_full_aggr_dist_m_rnd0_min.s04_time_s_min,
"public".t_can_full_aggr_dist_m_rnd0_min.s05_time_s_min,
"public".t_can_full_aggr_dist_m_rnd0_min.s06_time_s_min,
"public".t_can_full_aggr_dist_m_rnd0_min.s07_time_s_min,
"public".t_can_full_aggr_dist_m_rnd0_min.s08_time_s_min,
"public".t_can_full_aggr_dist_m_rnd0_min.s09_time_s_min,
"public".t_can_full_aggr_dist_m_rnd0_min.s10_time_s_min,
"public".t_can_full_aggr_dist_m_rnd0_min.s11_time_s_min,
"public".t_can_full_aggr_dist_m_rnd0_min.s12_time_s_min,
"public".t_can_full_aggr_dist_m_rnd0_min.s13_time_s_min,
"public".t_can_full_aggr_dist_m_rnd0_min.s14_time_s_min,
"public".t_can_full_aggr_dist_m_rnd0_min.s15_time_s_min,
"public".t_can_full_aggr_dist_m_rnd0_min.s16_time_s_min,
"public".t_can_full_aggr_dist_m_rnd0_min.s17_time_s_min,
"public".t_can_full_aggr_dist_m_rnd0_min.s18_time_s_min,
"public".t_can_full_aggr_dist_m_rnd0_min.s99_time_s_min,
"public".t_can_full_aggr_dist_m_rnd0_min.s01_time_s_min_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.s02_time_s_min_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.s03_time_s_min_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.s04_time_s_min_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.s05_time_s_min_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.s06_time_s_min_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.s07_time_s_min_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.s08_time_s_min_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.s09_time_s_min_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.s10_time_s_min_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.s11_time_s_min_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.s12_time_s_min_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.s13_time_s_min_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.s14_time_s_min_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.s15_time_s_min_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.s16_time_s_min_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.s17_time_s_min_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.s18_time_s_min_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.s99_time_s_min_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.s01_time_s_min_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.s02_time_s_min_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.s03_time_s_min_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.s04_time_s_min_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.s05_time_s_min_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.s06_time_s_min_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.s07_time_s_min_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.s08_time_s_min_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.s09_time_s_min_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.s10_time_s_min_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.s11_time_s_min_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.s12_time_s_min_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.s13_time_s_min_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.s14_time_s_min_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.s15_time_s_min_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.s16_time_s_min_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.s17_time_s_min_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.s18_time_s_min_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.s99_time_s_min_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.s01_dist_m_min,
"public".t_can_full_aggr_dist_m_rnd0_min.s02_dist_m_min,
"public".t_can_full_aggr_dist_m_rnd0_min.s03_dist_m_min,
"public".t_can_full_aggr_dist_m_rnd0_min.s04_dist_m_min,
"public".t_can_full_aggr_dist_m_rnd0_min.s05_dist_m_min,
"public".t_can_full_aggr_dist_m_rnd0_min.s06_dist_m_min,
"public".t_can_full_aggr_dist_m_rnd0_min.s07_dist_m_min,
"public".t_can_full_aggr_dist_m_rnd0_min.s08_dist_m_min,
"public".t_can_full_aggr_dist_m_rnd0_min.s09_dist_m_min,
"public".t_can_full_aggr_dist_m_rnd0_min.s10_dist_m_min,
"public".t_can_full_aggr_dist_m_rnd0_min.s11_dist_m_min,
"public".t_can_full_aggr_dist_m_rnd0_min.s12_dist_m_min,
"public".t_can_full_aggr_dist_m_rnd0_min.s13_dist_m_min,
"public".t_can_full_aggr_dist_m_rnd0_min.s14_dist_m_min,
"public".t_can_full_aggr_dist_m_rnd0_min.s15_dist_m_min,
"public".t_can_full_aggr_dist_m_rnd0_min.s16_dist_m_min,
"public".t_can_full_aggr_dist_m_rnd0_min.s17_dist_m_min,
"public".t_can_full_aggr_dist_m_rnd0_min.s18_dist_m_min,
"public".t_can_full_aggr_dist_m_rnd0_min.s99_dist_m_min,
"public".t_can_full_aggr_dist_m_rnd0_min.s01_dist_m_min_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.s02_dist_m_min_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.s03_dist_m_min_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.s04_dist_m_min_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.s05_dist_m_min_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.s06_dist_m_min_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.s07_dist_m_min_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.s08_dist_m_min_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.s09_dist_m_min_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.s10_dist_m_min_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.s11_dist_m_min_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.s12_dist_m_min_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.s13_dist_m_min_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.s14_dist_m_min_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.s15_dist_m_min_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.s16_dist_m_min_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.s17_dist_m_min_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.s18_dist_m_min_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.s99_dist_m_min_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.s01_dist_m_min_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.s02_dist_m_min_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.s03_dist_m_min_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.s04_dist_m_min_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.s05_dist_m_min_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.s06_dist_m_min_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.s07_dist_m_min_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.s08_dist_m_min_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.s09_dist_m_min_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.s10_dist_m_min_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.s11_dist_m_min_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.s12_dist_m_min_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.s13_dist_m_min_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.s14_dist_m_min_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.s15_dist_m_min_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.s16_dist_m_min_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.s17_dist_m_min_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.s18_dist_m_min_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.s99_dist_m_min_rnd1,
--
-- due to aggregation in t_can_full_aggr_dist_m_rnd0 need for new calculation of distances
"public".t_can_full_aggr_dist_m_rnd0_min.time_s - "public".t_can_full_aggr_dist_m_rnd0_min.s01_time_s_min as s01_dist_s,
"public".t_can_full_aggr_dist_m_rnd0_min.time_s - "public".t_can_full_aggr_dist_m_rnd0_min.s02_time_s_min as s02_dist_s,
"public".t_can_full_aggr_dist_m_rnd0_min.time_s - "public".t_can_full_aggr_dist_m_rnd0_min.s03_time_s_min as s03_dist_s,
"public".t_can_full_aggr_dist_m_rnd0_min.time_s - "public".t_can_full_aggr_dist_m_rnd0_min.s04_time_s_min as s04_dist_s,
"public".t_can_full_aggr_dist_m_rnd0_min.time_s - "public".t_can_full_aggr_dist_m_rnd0_min.s05_time_s_min as s05_dist_s,
"public".t_can_full_aggr_dist_m_rnd0_min.time_s - "public".t_can_full_aggr_dist_m_rnd0_min.s06_time_s_min as s06_dist_s,
"public".t_can_full_aggr_dist_m_rnd0_min.time_s - "public".t_can_full_aggr_dist_m_rnd0_min.s07_time_s_min as s07_dist_s,
"public".t_can_full_aggr_dist_m_rnd0_min.time_s - "public".t_can_full_aggr_dist_m_rnd0_min.s08_time_s_min as s08_dist_s,
"public".t_can_full_aggr_dist_m_rnd0_min.time_s - "public".t_can_full_aggr_dist_m_rnd0_min.s09_time_s_min as s09_dist_s,
"public".t_can_full_aggr_dist_m_rnd0_min.time_s - "public".t_can_full_aggr_dist_m_rnd0_min.s10_time_s_min as s10_dist_s,
"public".t_can_full_aggr_dist_m_rnd0_min.time_s - "public".t_can_full_aggr_dist_m_rnd0_min.s11_time_s_min as s11_dist_s,
"public".t_can_full_aggr_dist_m_rnd0_min.time_s - "public".t_can_full_aggr_dist_m_rnd0_min.s12_time_s_min as s12_dist_s,
"public".t_can_full_aggr_dist_m_rnd0_min.time_s - "public".t_can_full_aggr_dist_m_rnd0_min.s13_time_s_min as s13_dist_s,
"public".t_can_full_aggr_dist_m_rnd0_min.time_s - "public".t_can_full_aggr_dist_m_rnd0_min.s14_time_s_min as s14_dist_s,
"public".t_can_full_aggr_dist_m_rnd0_min.time_s - "public".t_can_full_aggr_dist_m_rnd0_min.s15_time_s_min as s15_dist_s,
"public".t_can_full_aggr_dist_m_rnd0_min.time_s - "public".t_can_full_aggr_dist_m_rnd0_min.s16_time_s_min as s16_dist_s,
"public".t_can_full_aggr_dist_m_rnd0_min.time_s - "public".t_can_full_aggr_dist_m_rnd0_min.s17_time_s_min as s17_dist_s,
"public".t_can_full_aggr_dist_m_rnd0_min.time_s - "public".t_can_full_aggr_dist_m_rnd0_min.s18_time_s_min as s18_dist_s,
"public".t_can_full_aggr_dist_m_rnd0_min.time_s - "public".t_can_full_aggr_dist_m_rnd0_min.s99_time_s_min as s99_dist_s,
--
"public".t_can_full_aggr_dist_m_rnd0_min.time_s_rnd0 - "public".t_can_full_aggr_dist_m_rnd0_min.s01_time_s_min_rnd0 as s01_dist_s_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.time_s_rnd0 - "public".t_can_full_aggr_dist_m_rnd0_min.s02_time_s_min_rnd0 as s02_dist_s_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.time_s_rnd0 - "public".t_can_full_aggr_dist_m_rnd0_min.s03_time_s_min_rnd0 as s03_dist_s_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.time_s_rnd0 - "public".t_can_full_aggr_dist_m_rnd0_min.s04_time_s_min_rnd0 as s04_dist_s_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.time_s_rnd0 - "public".t_can_full_aggr_dist_m_rnd0_min.s05_time_s_min_rnd0 as s05_dist_s_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.time_s_rnd0 - "public".t_can_full_aggr_dist_m_rnd0_min.s06_time_s_min_rnd0 as s06_dist_s_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.time_s_rnd0 - "public".t_can_full_aggr_dist_m_rnd0_min.s07_time_s_min_rnd0 as s07_dist_s_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.time_s_rnd0 - "public".t_can_full_aggr_dist_m_rnd0_min.s08_time_s_min_rnd0 as s08_dist_s_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.time_s_rnd0 - "public".t_can_full_aggr_dist_m_rnd0_min.s09_time_s_min_rnd0 as s09_dist_s_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.time_s_rnd0 - "public".t_can_full_aggr_dist_m_rnd0_min.s10_time_s_min_rnd0 as s10_dist_s_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.time_s_rnd0 - "public".t_can_full_aggr_dist_m_rnd0_min.s11_time_s_min_rnd0 as s11_dist_s_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.time_s_rnd0 - "public".t_can_full_aggr_dist_m_rnd0_min.s12_time_s_min_rnd0 as s12_dist_s_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.time_s_rnd0 - "public".t_can_full_aggr_dist_m_rnd0_min.s13_time_s_min_rnd0 as s13_dist_s_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.time_s_rnd0 - "public".t_can_full_aggr_dist_m_rnd0_min.s14_time_s_min_rnd0 as s14_dist_s_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.time_s_rnd0 - "public".t_can_full_aggr_dist_m_rnd0_min.s15_time_s_min_rnd0 as s15_dist_s_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.time_s_rnd0 - "public".t_can_full_aggr_dist_m_rnd0_min.s16_time_s_min_rnd0 as s16_dist_s_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.time_s_rnd0 - "public".t_can_full_aggr_dist_m_rnd0_min.s17_time_s_min_rnd0 as s17_dist_s_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.time_s_rnd0 - "public".t_can_full_aggr_dist_m_rnd0_min.s18_time_s_min_rnd0 as s18_dist_s_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.time_s_rnd0 - "public".t_can_full_aggr_dist_m_rnd0_min.s99_time_s_min_rnd0 as s99_dist_s_rnd0,
--
"public".t_can_full_aggr_dist_m_rnd0_min.time_s_rnd1 - "public".t_can_full_aggr_dist_m_rnd0_min.s01_time_s_min_rnd1 as s01_dist_s_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.time_s_rnd1 - "public".t_can_full_aggr_dist_m_rnd0_min.s02_time_s_min_rnd1 as s02_dist_s_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.time_s_rnd1 - "public".t_can_full_aggr_dist_m_rnd0_min.s03_time_s_min_rnd1 as s03_dist_s_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.time_s_rnd1 - "public".t_can_full_aggr_dist_m_rnd0_min.s04_time_s_min_rnd1 as s04_dist_s_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.time_s_rnd1 - "public".t_can_full_aggr_dist_m_rnd0_min.s05_time_s_min_rnd1 as s05_dist_s_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.time_s_rnd1 - "public".t_can_full_aggr_dist_m_rnd0_min.s06_time_s_min_rnd1 as s06_dist_s_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.time_s_rnd1 - "public".t_can_full_aggr_dist_m_rnd0_min.s07_time_s_min_rnd1 as s07_dist_s_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.time_s_rnd1 - "public".t_can_full_aggr_dist_m_rnd0_min.s08_time_s_min_rnd1 as s08_dist_s_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.time_s_rnd1 - "public".t_can_full_aggr_dist_m_rnd0_min.s09_time_s_min_rnd1 as s09_dist_s_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.time_s_rnd1 - "public".t_can_full_aggr_dist_m_rnd0_min.s10_time_s_min_rnd1 as s10_dist_s_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.time_s_rnd1 - "public".t_can_full_aggr_dist_m_rnd0_min.s11_time_s_min_rnd1 as s11_dist_s_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.time_s_rnd1 - "public".t_can_full_aggr_dist_m_rnd0_min.s12_time_s_min_rnd1 as s12_dist_s_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.time_s_rnd1 - "public".t_can_full_aggr_dist_m_rnd0_min.s13_time_s_min_rnd1 as s13_dist_s_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.time_s_rnd1 - "public".t_can_full_aggr_dist_m_rnd0_min.s14_time_s_min_rnd1 as s14_dist_s_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.time_s_rnd1 - "public".t_can_full_aggr_dist_m_rnd0_min.s15_time_s_min_rnd1 as s15_dist_s_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.time_s_rnd1 - "public".t_can_full_aggr_dist_m_rnd0_min.s16_time_s_min_rnd1 as s16_dist_s_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.time_s_rnd1 - "public".t_can_full_aggr_dist_m_rnd0_min.s17_time_s_min_rnd1 as s17_dist_s_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.time_s_rnd1 - "public".t_can_full_aggr_dist_m_rnd0_min.s18_time_s_min_rnd1 as s18_dist_s_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.time_s_rnd1 - "public".t_can_full_aggr_dist_m_rnd0_min.s99_time_s_min_rnd1 as s99_dist_s_rnd1,
--
"public".t_can_full_aggr_dist_m_rnd0_min.dist_m - "public".t_can_full_aggr_dist_m_rnd0_min.s01_dist_m_min as s01_dist_m,
"public".t_can_full_aggr_dist_m_rnd0_min.dist_m - "public".t_can_full_aggr_dist_m_rnd0_min.s02_dist_m_min as s02_dist_m,
"public".t_can_full_aggr_dist_m_rnd0_min.dist_m - "public".t_can_full_aggr_dist_m_rnd0_min.s03_dist_m_min as s03_dist_m,
"public".t_can_full_aggr_dist_m_rnd0_min.dist_m - "public".t_can_full_aggr_dist_m_rnd0_min.s04_dist_m_min as s04_dist_m,
"public".t_can_full_aggr_dist_m_rnd0_min.dist_m - "public".t_can_full_aggr_dist_m_rnd0_min.s05_dist_m_min as s05_dist_m,
"public".t_can_full_aggr_dist_m_rnd0_min.dist_m - "public".t_can_full_aggr_dist_m_rnd0_min.s06_dist_m_min as s06_dist_m,
"public".t_can_full_aggr_dist_m_rnd0_min.dist_m - "public".t_can_full_aggr_dist_m_rnd0_min.s07_dist_m_min as s07_dist_m,
"public".t_can_full_aggr_dist_m_rnd0_min.dist_m - "public".t_can_full_aggr_dist_m_rnd0_min.s08_dist_m_min as s08_dist_m,
"public".t_can_full_aggr_dist_m_rnd0_min.dist_m - "public".t_can_full_aggr_dist_m_rnd0_min.s09_dist_m_min as s09_dist_m,
"public".t_can_full_aggr_dist_m_rnd0_min.dist_m - "public".t_can_full_aggr_dist_m_rnd0_min.s10_dist_m_min as s10_dist_m,
"public".t_can_full_aggr_dist_m_rnd0_min.dist_m - "public".t_can_full_aggr_dist_m_rnd0_min.s11_dist_m_min as s11_dist_m,
"public".t_can_full_aggr_dist_m_rnd0_min.dist_m - "public".t_can_full_aggr_dist_m_rnd0_min.s12_dist_m_min as s12_dist_m,
"public".t_can_full_aggr_dist_m_rnd0_min.dist_m - "public".t_can_full_aggr_dist_m_rnd0_min.s13_dist_m_min as s13_dist_m,
"public".t_can_full_aggr_dist_m_rnd0_min.dist_m - "public".t_can_full_aggr_dist_m_rnd0_min.s14_dist_m_min as s14_dist_m,
"public".t_can_full_aggr_dist_m_rnd0_min.dist_m - "public".t_can_full_aggr_dist_m_rnd0_min.s15_dist_m_min as s15_dist_m,
"public".t_can_full_aggr_dist_m_rnd0_min.dist_m - "public".t_can_full_aggr_dist_m_rnd0_min.s16_dist_m_min as s16_dist_m,
"public".t_can_full_aggr_dist_m_rnd0_min.dist_m - "public".t_can_full_aggr_dist_m_rnd0_min.s17_dist_m_min as s17_dist_m,
"public".t_can_full_aggr_dist_m_rnd0_min.dist_m - "public".t_can_full_aggr_dist_m_rnd0_min.s18_dist_m_min as s18_dist_m,
"public".t_can_full_aggr_dist_m_rnd0_min.dist_m - "public".t_can_full_aggr_dist_m_rnd0_min.s99_dist_m_min as s99_dist_m,
--
"public".t_can_full_aggr_dist_m_rnd0_min.dist_m_rnd0 - "public".t_can_full_aggr_dist_m_rnd0_min.s01_dist_m_min_rnd0 as s01_dist_m_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.dist_m_rnd0 - "public".t_can_full_aggr_dist_m_rnd0_min.s02_dist_m_min_rnd0 as s02_dist_m_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.dist_m_rnd0 - "public".t_can_full_aggr_dist_m_rnd0_min.s03_dist_m_min_rnd0 as s03_dist_m_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.dist_m_rnd0 - "public".t_can_full_aggr_dist_m_rnd0_min.s04_dist_m_min_rnd0 as s04_dist_m_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.dist_m_rnd0 - "public".t_can_full_aggr_dist_m_rnd0_min.s05_dist_m_min_rnd0 as s05_dist_m_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.dist_m_rnd0 - "public".t_can_full_aggr_dist_m_rnd0_min.s06_dist_m_min_rnd0 as s06_dist_m_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.dist_m_rnd0 - "public".t_can_full_aggr_dist_m_rnd0_min.s07_dist_m_min_rnd0 as s07_dist_m_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.dist_m_rnd0 - "public".t_can_full_aggr_dist_m_rnd0_min.s08_dist_m_min_rnd0 as s08_dist_m_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.dist_m_rnd0 - "public".t_can_full_aggr_dist_m_rnd0_min.s09_dist_m_min_rnd0 as s09_dist_m_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.dist_m_rnd0 - "public".t_can_full_aggr_dist_m_rnd0_min.s10_dist_m_min_rnd0 as s10_dist_m_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.dist_m_rnd0 - "public".t_can_full_aggr_dist_m_rnd0_min.s11_dist_m_min_rnd0 as s11_dist_m_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.dist_m_rnd0 - "public".t_can_full_aggr_dist_m_rnd0_min.s12_dist_m_min_rnd0 as s12_dist_m_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.dist_m_rnd0 - "public".t_can_full_aggr_dist_m_rnd0_min.s13_dist_m_min_rnd0 as s13_dist_m_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.dist_m_rnd0 - "public".t_can_full_aggr_dist_m_rnd0_min.s14_dist_m_min_rnd0 as s14_dist_m_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.dist_m_rnd0 - "public".t_can_full_aggr_dist_m_rnd0_min.s15_dist_m_min_rnd0 as s15_dist_m_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.dist_m_rnd0 - "public".t_can_full_aggr_dist_m_rnd0_min.s16_dist_m_min_rnd0 as s16_dist_m_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.dist_m_rnd0 - "public".t_can_full_aggr_dist_m_rnd0_min.s17_dist_m_min_rnd0 as s17_dist_m_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.dist_m_rnd0 - "public".t_can_full_aggr_dist_m_rnd0_min.s18_dist_m_min_rnd0 as s18_dist_m_rnd0,
"public".t_can_full_aggr_dist_m_rnd0_min.dist_m_rnd0 - "public".t_can_full_aggr_dist_m_rnd0_min.s99_dist_m_min_rnd0 as s99_dist_m_rnd0,
--
"public".t_can_full_aggr_dist_m_rnd0_min.dist_m_rnd1 - "public".t_can_full_aggr_dist_m_rnd0_min.s01_dist_m_min_rnd1 as s01_dist_m_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.dist_m_rnd1 - "public".t_can_full_aggr_dist_m_rnd0_min.s02_dist_m_min_rnd1 as s02_dist_m_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.dist_m_rnd1 - "public".t_can_full_aggr_dist_m_rnd0_min.s03_dist_m_min_rnd1 as s03_dist_m_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.dist_m_rnd1 - "public".t_can_full_aggr_dist_m_rnd0_min.s04_dist_m_min_rnd1 as s04_dist_m_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.dist_m_rnd1 - "public".t_can_full_aggr_dist_m_rnd0_min.s05_dist_m_min_rnd1 as s05_dist_m_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.dist_m_rnd1 - "public".t_can_full_aggr_dist_m_rnd0_min.s06_dist_m_min_rnd1 as s06_dist_m_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.dist_m_rnd1 - "public".t_can_full_aggr_dist_m_rnd0_min.s07_dist_m_min_rnd1 as s07_dist_m_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.dist_m_rnd1 - "public".t_can_full_aggr_dist_m_rnd0_min.s08_dist_m_min_rnd1 as s08_dist_m_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.dist_m_rnd1 - "public".t_can_full_aggr_dist_m_rnd0_min.s09_dist_m_min_rnd1 as s09_dist_m_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.dist_m_rnd1 - "public".t_can_full_aggr_dist_m_rnd0_min.s10_dist_m_min_rnd1 as s10_dist_m_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.dist_m_rnd1 - "public".t_can_full_aggr_dist_m_rnd0_min.s11_dist_m_min_rnd1 as s11_dist_m_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.dist_m_rnd1 - "public".t_can_full_aggr_dist_m_rnd0_min.s12_dist_m_min_rnd1 as s12_dist_m_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.dist_m_rnd1 - "public".t_can_full_aggr_dist_m_rnd0_min.s13_dist_m_min_rnd1 as s13_dist_m_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.dist_m_rnd1 - "public".t_can_full_aggr_dist_m_rnd0_min.s14_dist_m_min_rnd1 as s14_dist_m_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.dist_m_rnd1 - "public".t_can_full_aggr_dist_m_rnd0_min.s15_dist_m_min_rnd1 as s15_dist_m_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.dist_m_rnd1 - "public".t_can_full_aggr_dist_m_rnd0_min.s16_dist_m_min_rnd1 as s16_dist_m_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.dist_m_rnd1 - "public".t_can_full_aggr_dist_m_rnd0_min.s17_dist_m_min_rnd1 as s17_dist_m_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.dist_m_rnd1 - "public".t_can_full_aggr_dist_m_rnd0_min.s18_dist_m_min_rnd1 as s18_dist_m_rnd1,
"public".t_can_full_aggr_dist_m_rnd0_min.dist_m_rnd1 - "public".t_can_full_aggr_dist_m_rnd0_min.s99_dist_m_min_rnd1 as s99_dist_m_rnd1,
--
"public".t_can_full_aggr_dist_m_rnd0_min.speed_kmh,
--"public".t_can_full_aggr_dist_m_rnd0_min.speed_kmh_diff,
"public".t_can_full_aggr_dist_m_rnd0_min.acclat_ms2,
--"public".t_can_full_aggr_dist_m_rnd0_min.acclat_ms2_diff,
"public".t_can_full_aggr_dist_m_rnd0_min.acclong_ms2,
--"public".t_can_full_aggr_dist_m_rnd0_min.acclong_ms2_diff,
"public".t_can_full_aggr_dist_m_rnd0_min.yawrate_degs,
--"public".t_can_full_aggr_dist_m_rnd0_min.yawrate_degs_diff,
"public".t_can_full_aggr_dist_m_rnd0_min.brakepress_bar,
--"public".t_can_full_aggr_dist_m_rnd0_min.brakepress_bar_diff,
"public".t_can_full_aggr_dist_m_rnd0_min.brakepress_status,
"public".t_can_full_aggr_dist_m_rnd0_min.steerangle_deg,
--"public".t_can_full_aggr_dist_m_rnd0_min.steerangle_deg_diff,
"public".t_can_full_aggr_dist_m_rnd0_min.steerangle_speed,
--"public".t_can_full_aggr_dist_m_rnd0_min.steerangle_speed_diff,
"public".t_can_full_aggr_dist_m_rnd0_min.accpedalpos_perc,
--"public".t_can_full_aggr_dist_m_rnd0_min.accpedalpos_perc_diff,
--"public".t_can_full_aggr_dist_m_rnd0_min.ind_left,
--"public".t_can_full_aggr_dist_m_rnd0_min.ind_right,
"public".t_can_full_aggr_dist_m_rnd0_min.ind,
"public".t_can_full_aggr_dist_m_rnd0_min.ldw_side,
"public".t_can_full_aggr_dist_m_rnd0_min.ldw_tlc_s,
--"public".t_can_full_aggr_dist_m_rnd0_min.ldw_tlc_s_diff,
"public".t_can_full_aggr_dist_m_rnd0_min.ldw_dlc_m,
--"public".t_can_full_aggr_dist_m_rnd0_min.ldw_dlc_m_diff,
"public".t_can_full_aggr_dist_m_rnd0_min.dist_intersect_m,
"public".t_can_full_aggr_dist_m_rnd0_min.road_type,
"public".t_can_full_aggr_dist_m_rnd0_min.lanes_count,
"public".t_can_full_aggr_dist_m_rnd0_min.filename,
"public".t_can_full_aggr_dist_m_rnd0_min.cond,
"public".t_can_full_aggr_dist_m_rnd0_min.exid,
"public".t_can_full_aggr_dist_m_rnd0_min."date"

FROM
"public".t_can_full_aggr_dist_m_rnd0_min