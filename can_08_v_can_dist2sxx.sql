DROP VIEW IF EXISTS v_can_dist2sxx CASCADE;
CREATE OR REPLACE VIEW v_can_dist2sxx AS

SELECT
"public".t_can_dist2sxx_gps.rownr,
"public".t_can_dist2sxx_gps.subid,
"public".t_can_dist2sxx_gps.time_s,
--round(public.t_can_dist2sxx_gps.time_s, 0) as time_s_rnd0,
--round(public.t_can_dist2sxx_gps.time_s, 1) as time_s_rnd1,
--"public".t_can_dist2sxx_gps.dist_m_diff,
"public".t_can_dist2sxx_gps.dist_m,
--round("public".t_can_dist2sxx_gps.dist_m, 0) as dist_m_rnd0,
--round("public".t_can_dist2sxx_gps.dist_m, 1) as dist_m_rnd1,
"public".t_can_dist2sxx_gps.round,
-- "public".t_can_dist2sxx_gps.round_dist_m,
-- --round("public".t_can_dist2sxx_gps.round_dist_m, 0) as round_dist_m_rnd0,
-- --round("public".t_can_dist2sxx_gps.round_dist_m, 1) as round_dist_m_rnd1,
-- "public".t_can_dist2sxx_gps.gps_lat,
-- "public".t_can_dist2sxx_gps.gps_long,
--
-- "public".t_can_dist2sxx_gps.s01_gps_lat,
-- "public".t_can_dist2sxx_gps.s01_gps_long,
-- "public".t_can_dist2sxx_gps.s02_gps_lat,
-- "public".t_can_dist2sxx_gps.s02_gps_long,
-- "public".t_can_dist2sxx_gps.s03_gps_lat,
-- "public".t_can_dist2sxx_gps.s03_gps_long,
-- "public".t_can_dist2sxx_gps.s04_gps_lat,
-- "public".t_can_dist2sxx_gps.s04_gps_long,
-- "public".t_can_dist2sxx_gps.s05_gps_lat,
-- "public".t_can_dist2sxx_gps.s05_gps_long,
-- "public".t_can_dist2sxx_gps.s06_gps_lat,
-- "public".t_can_dist2sxx_gps.s06_gps_long,
-- "public".t_can_dist2sxx_gps.s07_gps_lat,
-- "public".t_can_dist2sxx_gps.s07_gps_long,
-- "public".t_can_dist2sxx_gps.s08_gps_lat,
-- "public".t_can_dist2sxx_gps.s08_gps_long,
-- "public".t_can_dist2sxx_gps.s09_gps_lat,
-- "public".t_can_dist2sxx_gps.s09_gps_long,
-- "public".t_can_dist2sxx_gps.s10_gps_lat,
-- "public".t_can_dist2sxx_gps.s10_gps_long,
-- "public".t_can_dist2sxx_gps.s11_gps_lat,
-- "public".t_can_dist2sxx_gps.s11_gps_long,
-- "public".t_can_dist2sxx_gps.s12_gps_lat,
-- "public".t_can_dist2sxx_gps.s12_gps_long,
-- "public".t_can_dist2sxx_gps.s13_gps_lat,
-- "public".t_can_dist2sxx_gps.s13_gps_long,
-- "public".t_can_dist2sxx_gps.s14_gps_lat,
-- "public".t_can_dist2sxx_gps.s14_gps_long,
-- "public".t_can_dist2sxx_gps.s15_gps_lat,
-- "public".t_can_dist2sxx_gps.s15_gps_long,
-- "public".t_can_dist2sxx_gps.s16_gps_lat,
-- "public".t_can_dist2sxx_gps.s16_gps_long,
-- "public".t_can_dist2sxx_gps.s17_gps_lat,
-- "public".t_can_dist2sxx_gps.s17_gps_long,
-- "public".t_can_dist2sxx_gps.s18_gps_lat,
-- "public".t_can_dist2sxx_gps.s18_gps_long,
-- "public".t_can_dist2sxx_gps.s99_gps_lat,
-- "public".t_can_dist2sxx_gps.s99_gps_long,
--
-- "public".t_can_dist2sxx_gps.s01_gps_dist_m,
-- "public".t_can_dist2sxx_gps.s02_gps_dist_m,
-- "public".t_can_dist2sxx_gps.s03_gps_dist_m,
-- "public".t_can_dist2sxx_gps.s04_gps_dist_m,
-- "public".t_can_dist2sxx_gps.s05_gps_dist_m,
-- "public".t_can_dist2sxx_gps.s06_gps_dist_m,
-- "public".t_can_dist2sxx_gps.s07_gps_dist_m,
-- "public".t_can_dist2sxx_gps.s08_gps_dist_m,
-- "public".t_can_dist2sxx_gps.s09_gps_dist_m,
-- "public".t_can_dist2sxx_gps.s10_gps_dist_m,
-- "public".t_can_dist2sxx_gps.s11_gps_dist_m,
-- "public".t_can_dist2sxx_gps.s12_gps_dist_m,
-- "public".t_can_dist2sxx_gps.s13_gps_dist_m,
-- "public".t_can_dist2sxx_gps.s14_gps_dist_m,
-- "public".t_can_dist2sxx_gps.s15_gps_dist_m,
-- "public".t_can_dist2sxx_gps.s16_gps_dist_m,
-- "public".t_can_dist2sxx_gps.s17_gps_dist_m,
-- "public".t_can_dist2sxx_gps.s18_gps_dist_m,
-- "public".t_can_dist2sxx_gps.s99_gps_dist_m,
-- --
-- "public".t_can_dist2sxx_gps.s01_gps_dist_m_min,
-- "public".t_can_dist2sxx_gps.s02_gps_dist_m_min,
-- "public".t_can_dist2sxx_gps.s03_gps_dist_m_min,
-- "public".t_can_dist2sxx_gps.s04_gps_dist_m_min,
-- "public".t_can_dist2sxx_gps.s05_gps_dist_m_min,
-- "public".t_can_dist2sxx_gps.s06_gps_dist_m_min,
-- "public".t_can_dist2sxx_gps.s07_gps_dist_m_min,
-- "public".t_can_dist2sxx_gps.s08_gps_dist_m_min,
-- "public".t_can_dist2sxx_gps.s09_gps_dist_m_min,
-- "public".t_can_dist2sxx_gps.s10_gps_dist_m_min,
-- "public".t_can_dist2sxx_gps.s11_gps_dist_m_min,
-- "public".t_can_dist2sxx_gps.s12_gps_dist_m_min,
-- "public".t_can_dist2sxx_gps.s13_gps_dist_m_min,
-- "public".t_can_dist2sxx_gps.s14_gps_dist_m_min,
-- "public".t_can_dist2sxx_gps.s15_gps_dist_m_min,
-- "public".t_can_dist2sxx_gps.s16_gps_dist_m_min,
-- "public".t_can_dist2sxx_gps.s17_gps_dist_m_min,
-- "public".t_can_dist2sxx_gps.s18_gps_dist_m_min,
-- "public".t_can_dist2sxx_gps.s99_gps_dist_m_min,
-- --
-- s01_temp.rownr_min as s01_rownr_min,
-- s02_temp.rownr_min as s02_rownr_min,
-- s03_temp.rownr_min as s03_rownr_min,
-- s04_temp.rownr_min as s04_rownr_min,
-- s05_temp.rownr_min as s05_rownr_min,
-- s06_temp.rownr_min as s06_rownr_min,
-- s07_temp.rownr_min as s07_rownr_min,
-- s08_temp.rownr_min as s08_rownr_min,
-- s09_temp.rownr_min as s09_rownr_min,
-- s10_temp.rownr_min as s10_rownr_min,
-- s11_temp.rownr_min as s11_rownr_min,
-- s12_temp.rownr_min as s12_rownr_min,
-- s13_temp.rownr_min as s13_rownr_min,
-- s14_temp.rownr_min as s14_rownr_min,
-- s15_temp.rownr_min as s15_rownr_min,
-- s16_temp.rownr_min as s16_rownr_min,
-- s17_temp.rownr_min as s17_rownr_min,
-- s18_temp.rownr_min as s18_rownr_min,
-- s99_temp.rownr_min as s99_rownr_min,
-- --
s01_temp.time_s_min as s01_time_s_min,
s02_temp.time_s_min as s02_time_s_min,
s03_temp.time_s_min as s03_time_s_min,
s04_temp.time_s_min as s04_time_s_min,
s05_temp.time_s_min as s05_time_s_min,
s06_temp.time_s_min as s06_time_s_min,
s07_temp.time_s_min as s07_time_s_min,
s08_temp.time_s_min as s08_time_s_min,
s09_temp.time_s_min as s09_time_s_min,
s10_temp.time_s_min as s10_time_s_min,
s11_temp.time_s_min as s11_time_s_min,
s12_temp.time_s_min as s12_time_s_min,
s13_temp.time_s_min as s13_time_s_min,
s14_temp.time_s_min as s14_time_s_min,
s15_temp.time_s_min as s15_time_s_min,
s16_temp.time_s_min as s16_time_s_min,
s17_temp.time_s_min as s17_time_s_min,
s18_temp.time_s_min as s18_time_s_min,
s99_temp.time_s_min as s99_time_s_min,
-- --
--save data space
-- round(s01_temp.time_s_min, 0) as s01_time_s_min_rnd0,
-- round(s02_temp.time_s_min, 0) as s02_time_s_min_rnd0,
-- round(s03_temp.time_s_min, 0) as s03_time_s_min_rnd0,
-- round(s04_temp.time_s_min, 0) as s04_time_s_min_rnd0,
-- round(s05_temp.time_s_min, 0) as s05_time_s_min_rnd0,
-- round(s06_temp.time_s_min, 0) as s06_time_s_min_rnd0,
-- round(s07_temp.time_s_min, 0) as s07_time_s_min_rnd0,
-- round(s08_temp.time_s_min, 0) as s08_time_s_min_rnd0,
-- round(s09_temp.time_s_min, 0) as s09_time_s_min_rnd0,
-- round(s10_temp.time_s_min, 0) as s10_time_s_min_rnd0,
-- round(s11_temp.time_s_min, 0) as s11_time_s_min_rnd0,
-- round(s12_temp.time_s_min, 0) as s12_time_s_min_rnd0,
-- round(s13_temp.time_s_min, 0) as s13_time_s_min_rnd0,
-- round(s14_temp.time_s_min, 0) as s14_time_s_min_rnd0,
-- round(s15_temp.time_s_min, 0) as s15_time_s_min_rnd0,
-- round(s16_temp.time_s_min, 0) as s16_time_s_min_rnd0,
-- round(s17_temp.time_s_min, 0) as s17_time_s_min_rnd0,
-- round(s18_temp.time_s_min, 0) as s18_time_s_min_rnd0,
-- round(s99_temp.time_s_min, 0) as s99_time_s_min_rnd0,
-- --
-- round(s01_temp.time_s_min, 1) as s01_time_s_min_rnd1,
-- round(s02_temp.time_s_min, 1) as s02_time_s_min_rnd1,
-- round(s03_temp.time_s_min, 1) as s03_time_s_min_rnd1,
-- round(s04_temp.time_s_min, 1) as s04_time_s_min_rnd1,
-- round(s05_temp.time_s_min, 1) as s05_time_s_min_rnd1,
-- round(s06_temp.time_s_min, 1) as s06_time_s_min_rnd1,
-- round(s07_temp.time_s_min, 1) as s07_time_s_min_rnd1,
-- round(s08_temp.time_s_min, 1) as s08_time_s_min_rnd1,
-- round(s09_temp.time_s_min, 1) as s09_time_s_min_rnd1,
-- round(s10_temp.time_s_min, 1) as s10_time_s_min_rnd1,
-- round(s11_temp.time_s_min, 1) as s11_time_s_min_rnd1,
-- round(s12_temp.time_s_min, 1) as s12_time_s_min_rnd1,
-- round(s13_temp.time_s_min, 1) as s13_time_s_min_rnd1,
-- round(s14_temp.time_s_min, 1) as s14_time_s_min_rnd1,
-- round(s15_temp.time_s_min, 1) as s15_time_s_min_rnd1,
-- round(s16_temp.time_s_min, 1) as s16_time_s_min_rnd1,
-- round(s17_temp.time_s_min, 1) as s17_time_s_min_rnd1,
-- round(s18_temp.time_s_min, 1) as s18_time_s_min_rnd1,
-- round(s99_temp.time_s_min, 1) as s99_time_s_min_rnd1,
--
s01_temp.dist_m_min as s01_dist_m_min,
s02_temp.dist_m_min as s02_dist_m_min,
s03_temp.dist_m_min as s03_dist_m_min,
s04_temp.dist_m_min as s04_dist_m_min,
s05_temp.dist_m_min as s05_dist_m_min,
s06_temp.dist_m_min as s06_dist_m_min,
s07_temp.dist_m_min as s07_dist_m_min,
s08_temp.dist_m_min as s08_dist_m_min,
s09_temp.dist_m_min as s09_dist_m_min,
s10_temp.dist_m_min as s10_dist_m_min,
s11_temp.dist_m_min as s11_dist_m_min,
s12_temp.dist_m_min as s12_dist_m_min,
s13_temp.dist_m_min as s13_dist_m_min,
s14_temp.dist_m_min as s14_dist_m_min,
s15_temp.dist_m_min as s15_dist_m_min,
s16_temp.dist_m_min as s16_dist_m_min,
s17_temp.dist_m_min as s17_dist_m_min,
s18_temp.dist_m_min as s18_dist_m_min,
s99_temp.dist_m_min as s99_dist_m_min,
--
-- save data space
-- round(s01_temp.dist_m_min, 0) as s01_dist_m_min_rnd0,
-- round(s02_temp.dist_m_min, 0) as s02_dist_m_min_rnd0,
-- round(s03_temp.dist_m_min, 0) as s03_dist_m_min_rnd0,
-- round(s04_temp.dist_m_min, 0) as s04_dist_m_min_rnd0,
-- round(s05_temp.dist_m_min, 0) as s05_dist_m_min_rnd0,
-- round(s06_temp.dist_m_min, 0) as s06_dist_m_min_rnd0,
-- round(s07_temp.dist_m_min, 0) as s07_dist_m_min_rnd0,
-- round(s08_temp.dist_m_min, 0) as s08_dist_m_min_rnd0,
-- round(s09_temp.dist_m_min, 0) as s09_dist_m_min_rnd0,
-- round(s10_temp.dist_m_min, 0) as s10_dist_m_min_rnd0,
-- round(s11_temp.dist_m_min, 0) as s11_dist_m_min_rnd0,
-- round(s12_temp.dist_m_min, 0) as s12_dist_m_min_rnd0,
-- round(s13_temp.dist_m_min, 0) as s13_dist_m_min_rnd0,
-- round(s14_temp.dist_m_min, 0) as s14_dist_m_min_rnd0,
-- round(s15_temp.dist_m_min, 0) as s15_dist_m_min_rnd0,
-- round(s16_temp.dist_m_min, 0) as s16_dist_m_min_rnd0,
-- round(s17_temp.dist_m_min, 0) as s17_dist_m_min_rnd0,
-- round(s18_temp.dist_m_min, 0) as s18_dist_m_min_rnd0,
-- round(s99_temp.dist_m_min, 0) as s99_dist_m_min_rnd0,
-- --
-- round(s01_temp.dist_m_min, 1) as s01_dist_m_min_rnd1,
-- round(s02_temp.dist_m_min, 1) as s02_dist_m_min_rnd1,
-- round(s03_temp.dist_m_min, 1) as s03_dist_m_min_rnd1,
-- round(s04_temp.dist_m_min, 1) as s04_dist_m_min_rnd1,
-- round(s05_temp.dist_m_min, 1) as s05_dist_m_min_rnd1,
-- round(s06_temp.dist_m_min, 1) as s06_dist_m_min_rnd1,
-- round(s07_temp.dist_m_min, 1) as s07_dist_m_min_rnd1,
-- round(s08_temp.dist_m_min, 1) as s08_dist_m_min_rnd1,
-- round(s09_temp.dist_m_min, 1) as s09_dist_m_min_rnd1,
-- round(s10_temp.dist_m_min, 1) as s10_dist_m_min_rnd1,
-- round(s11_temp.dist_m_min, 1) as s11_dist_m_min_rnd1,
-- round(s12_temp.dist_m_min, 1) as s12_dist_m_min_rnd1,
-- round(s13_temp.dist_m_min, 1) as s13_dist_m_min_rnd1,
-- round(s14_temp.dist_m_min, 1) as s14_dist_m_min_rnd1,
-- round(s15_temp.dist_m_min, 1) as s15_dist_m_min_rnd1,
-- round(s16_temp.dist_m_min, 1) as s16_dist_m_min_rnd1,
-- round(s17_temp.dist_m_min, 1) as s17_dist_m_min_rnd1,
-- round(s18_temp.dist_m_min, 1) as s18_dist_m_min_rnd1,
-- round(s99_temp.dist_m_min, 1) as s99_dist_m_min_rnd1,
--
"public".t_can_dist2sxx_gps.time_s - s01_temp.time_s_min as s01_dist_s,
"public".t_can_dist2sxx_gps.time_s - s02_temp.time_s_min as s02_dist_s,
"public".t_can_dist2sxx_gps.time_s - s03_temp.time_s_min as s03_dist_s,
"public".t_can_dist2sxx_gps.time_s - s04_temp.time_s_min as s04_dist_s,
"public".t_can_dist2sxx_gps.time_s - s05_temp.time_s_min as s05_dist_s,
"public".t_can_dist2sxx_gps.time_s - s06_temp.time_s_min as s06_dist_s,
"public".t_can_dist2sxx_gps.time_s - s07_temp.time_s_min as s07_dist_s,
"public".t_can_dist2sxx_gps.time_s - s08_temp.time_s_min as s08_dist_s,
"public".t_can_dist2sxx_gps.time_s - s09_temp.time_s_min as s09_dist_s,
"public".t_can_dist2sxx_gps.time_s - s10_temp.time_s_min as s10_dist_s,
"public".t_can_dist2sxx_gps.time_s - s11_temp.time_s_min as s11_dist_s,
"public".t_can_dist2sxx_gps.time_s - s12_temp.time_s_min as s12_dist_s,
"public".t_can_dist2sxx_gps.time_s - s13_temp.time_s_min as s13_dist_s,
"public".t_can_dist2sxx_gps.time_s - s14_temp.time_s_min as s14_dist_s,
"public".t_can_dist2sxx_gps.time_s - s15_temp.time_s_min as s15_dist_s,
"public".t_can_dist2sxx_gps.time_s - s16_temp.time_s_min as s16_dist_s,
"public".t_can_dist2sxx_gps.time_s - s17_temp.time_s_min as s17_dist_s,
"public".t_can_dist2sxx_gps.time_s - s18_temp.time_s_min as s18_dist_s,
"public".t_can_dist2sxx_gps.time_s - s99_temp.time_s_min as s99_dist_s,
--
-- save data space
-- round(public.t_can_dist2sxx_gps.time_s - s01_temp.time_s_min, 0) as s01_dist_s_rnd0,
-- round(public.t_can_dist2sxx_gps.time_s - s02_temp.time_s_min, 0) as s02_dist_s_rnd0,
-- round(public.t_can_dist2sxx_gps.time_s - s03_temp.time_s_min, 0) as s03_dist_s_rnd0,
-- round(public.t_can_dist2sxx_gps.time_s - s04_temp.time_s_min, 0) as s04_dist_s_rnd0,
-- round(public.t_can_dist2sxx_gps.time_s - s05_temp.time_s_min, 0) as s05_dist_s_rnd0,
-- round(public.t_can_dist2sxx_gps.time_s - s06_temp.time_s_min, 0) as s06_dist_s_rnd0,
-- round(public.t_can_dist2sxx_gps.time_s - s07_temp.time_s_min, 0) as s07_dist_s_rnd0,
-- round(public.t_can_dist2sxx_gps.time_s - s08_temp.time_s_min, 0) as s08_dist_s_rnd0,
-- round(public.t_can_dist2sxx_gps.time_s - s09_temp.time_s_min, 0) as s09_dist_s_rnd0,
-- round(public.t_can_dist2sxx_gps.time_s - s10_temp.time_s_min, 0) as s10_dist_s_rnd0,
-- round(public.t_can_dist2sxx_gps.time_s - s11_temp.time_s_min, 0) as s11_dist_s_rnd0,
-- round(public.t_can_dist2sxx_gps.time_s - s12_temp.time_s_min, 0) as s12_dist_s_rnd0,
-- round(public.t_can_dist2sxx_gps.time_s - s13_temp.time_s_min, 0) as s13_dist_s_rnd0,
-- round(public.t_can_dist2sxx_gps.time_s - s14_temp.time_s_min, 0) as s14_dist_s_rnd0,
-- round(public.t_can_dist2sxx_gps.time_s - s15_temp.time_s_min, 0) as s15_dist_s_rnd0,
-- round(public.t_can_dist2sxx_gps.time_s - s16_temp.time_s_min, 0) as s16_dist_s_rnd0,
-- round(public.t_can_dist2sxx_gps.time_s - s17_temp.time_s_min, 0) as s17_dist_s_rnd0,
-- round(public.t_can_dist2sxx_gps.time_s - s18_temp.time_s_min, 0) as s18_dist_s_rnd0,
-- round(public.t_can_dist2sxx_gps.time_s - s99_temp.time_s_min, 0) as s99_dist_s_rnd0,
-- --
-- round(public.t_can_dist2sxx_gps.time_s - s01_temp.time_s_min, 1) as s01_dist_s_rnd1,
-- round(public.t_can_dist2sxx_gps.time_s - s02_temp.time_s_min, 1) as s02_dist_s_rnd1,
-- round(public.t_can_dist2sxx_gps.time_s - s03_temp.time_s_min, 1) as s03_dist_s_rnd1,
-- round(public.t_can_dist2sxx_gps.time_s - s04_temp.time_s_min, 1) as s04_dist_s_rnd1,
-- round(public.t_can_dist2sxx_gps.time_s - s05_temp.time_s_min, 1) as s05_dist_s_rnd1,
-- round(public.t_can_dist2sxx_gps.time_s - s06_temp.time_s_min, 1) as s06_dist_s_rnd1,
-- round(public.t_can_dist2sxx_gps.time_s - s07_temp.time_s_min, 1) as s07_dist_s_rnd1,
-- round(public.t_can_dist2sxx_gps.time_s - s08_temp.time_s_min, 1) as s08_dist_s_rnd1,
-- round(public.t_can_dist2sxx_gps.time_s - s09_temp.time_s_min, 1) as s09_dist_s_rnd1,
-- round(public.t_can_dist2sxx_gps.time_s - s10_temp.time_s_min, 1) as s10_dist_s_rnd1,
-- round(public.t_can_dist2sxx_gps.time_s - s11_temp.time_s_min, 1) as s11_dist_s_rnd1,
-- round(public.t_can_dist2sxx_gps.time_s - s12_temp.time_s_min, 1) as s12_dist_s_rnd1,
-- round(public.t_can_dist2sxx_gps.time_s - s13_temp.time_s_min, 1) as s13_dist_s_rnd1,
-- round(public.t_can_dist2sxx_gps.time_s - s14_temp.time_s_min, 1) as s14_dist_s_rnd1,
-- round(public.t_can_dist2sxx_gps.time_s - s15_temp.time_s_min, 1) as s15_dist_s_rnd1,
-- round(public.t_can_dist2sxx_gps.time_s - s16_temp.time_s_min, 1) as s16_dist_s_rnd1,
-- round(public.t_can_dist2sxx_gps.time_s - s17_temp.time_s_min, 1) as s17_dist_s_rnd1,
-- round(public.t_can_dist2sxx_gps.time_s - s18_temp.time_s_min, 1) as s18_dist_s_rnd1,
-- round(public.t_can_dist2sxx_gps.time_s - s99_temp.time_s_min, 1) as s99_dist_s_rnd1,
--
"public".t_can_dist2sxx_gps.dist_m - s01_temp.dist_m_min as s01_dist_m,
"public".t_can_dist2sxx_gps.dist_m - s02_temp.dist_m_min as s02_dist_m,
"public".t_can_dist2sxx_gps.dist_m - s03_temp.dist_m_min as s03_dist_m,
"public".t_can_dist2sxx_gps.dist_m - s04_temp.dist_m_min as s04_dist_m,
"public".t_can_dist2sxx_gps.dist_m - s05_temp.dist_m_min as s05_dist_m,
"public".t_can_dist2sxx_gps.dist_m - s06_temp.dist_m_min as s06_dist_m,
"public".t_can_dist2sxx_gps.dist_m - s07_temp.dist_m_min as s07_dist_m,
"public".t_can_dist2sxx_gps.dist_m - s08_temp.dist_m_min as s08_dist_m,
"public".t_can_dist2sxx_gps.dist_m - s09_temp.dist_m_min as s09_dist_m,
"public".t_can_dist2sxx_gps.dist_m - s10_temp.dist_m_min as s10_dist_m,
"public".t_can_dist2sxx_gps.dist_m - s11_temp.dist_m_min as s11_dist_m,
"public".t_can_dist2sxx_gps.dist_m - s12_temp.dist_m_min as s12_dist_m,
"public".t_can_dist2sxx_gps.dist_m - s13_temp.dist_m_min as s13_dist_m,
"public".t_can_dist2sxx_gps.dist_m - s14_temp.dist_m_min as s14_dist_m,
"public".t_can_dist2sxx_gps.dist_m - s15_temp.dist_m_min as s15_dist_m,
"public".t_can_dist2sxx_gps.dist_m - s16_temp.dist_m_min as s16_dist_m,
"public".t_can_dist2sxx_gps.dist_m - s17_temp.dist_m_min as s17_dist_m,
"public".t_can_dist2sxx_gps.dist_m - s18_temp.dist_m_min as s18_dist_m,
"public".t_can_dist2sxx_gps.dist_m - s99_temp.dist_m_min as s99_dist_m
--
-- save data space
-- round("public".t_can_dist2sxx_gps.dist_m - s01_temp.dist_m_min, 0) as s01_dist_m_rnd0,
-- round("public".t_can_dist2sxx_gps.dist_m - s02_temp.dist_m_min, 0) as s02_dist_m_rnd0,
-- round("public".t_can_dist2sxx_gps.dist_m - s03_temp.dist_m_min, 0) as s03_dist_m_rnd0,
-- round("public".t_can_dist2sxx_gps.dist_m - s04_temp.dist_m_min, 0) as s04_dist_m_rnd0,
-- round("public".t_can_dist2sxx_gps.dist_m - s05_temp.dist_m_min, 0) as s05_dist_m_rnd0,
-- round("public".t_can_dist2sxx_gps.dist_m - s06_temp.dist_m_min, 0) as s06_dist_m_rnd0,
-- round("public".t_can_dist2sxx_gps.dist_m - s07_temp.dist_m_min, 0) as s07_dist_m_rnd0,
-- round("public".t_can_dist2sxx_gps.dist_m - s08_temp.dist_m_min, 0) as s08_dist_m_rnd0,
-- round("public".t_can_dist2sxx_gps.dist_m - s09_temp.dist_m_min, 0) as s09_dist_m_rnd0,
-- round("public".t_can_dist2sxx_gps.dist_m - s10_temp.dist_m_min, 0) as s10_dist_m_rnd0,
-- round("public".t_can_dist2sxx_gps.dist_m - s11_temp.dist_m_min, 0) as s11_dist_m_rnd0,
-- round("public".t_can_dist2sxx_gps.dist_m - s12_temp.dist_m_min, 0) as s12_dist_m_rnd0,
-- round("public".t_can_dist2sxx_gps.dist_m - s13_temp.dist_m_min, 0) as s13_dist_m_rnd0,
-- round("public".t_can_dist2sxx_gps.dist_m - s14_temp.dist_m_min, 0) as s14_dist_m_rnd0,
-- round("public".t_can_dist2sxx_gps.dist_m - s15_temp.dist_m_min, 0) as s15_dist_m_rnd0,
-- round("public".t_can_dist2sxx_gps.dist_m - s16_temp.dist_m_min, 0) as s16_dist_m_rnd0,
-- round("public".t_can_dist2sxx_gps.dist_m - s17_temp.dist_m_min, 0) as s17_dist_m_rnd0,
-- round("public".t_can_dist2sxx_gps.dist_m - s18_temp.dist_m_min, 0) as s18_dist_m_rnd0,
-- round("public".t_can_dist2sxx_gps.dist_m - s99_temp.dist_m_min, 0) as s99_dist_m_rnd0,
-- --
-- round("public".t_can_dist2sxx_gps.dist_m - s01_temp.dist_m_min, 1) as s01_dist_m_rnd1,
-- round("public".t_can_dist2sxx_gps.dist_m - s02_temp.dist_m_min, 1) as s02_dist_m_rnd1,
-- round("public".t_can_dist2sxx_gps.dist_m - s03_temp.dist_m_min, 1) as s03_dist_m_rnd1,
-- round("public".t_can_dist2sxx_gps.dist_m - s04_temp.dist_m_min, 1) as s04_dist_m_rnd1,
-- round("public".t_can_dist2sxx_gps.dist_m - s05_temp.dist_m_min, 1) as s05_dist_m_rnd1,
-- round("public".t_can_dist2sxx_gps.dist_m - s06_temp.dist_m_min, 1) as s06_dist_m_rnd1,
-- round("public".t_can_dist2sxx_gps.dist_m - s07_temp.dist_m_min, 1) as s07_dist_m_rnd1,
-- round("public".t_can_dist2sxx_gps.dist_m - s08_temp.dist_m_min, 1) as s08_dist_m_rnd1,
-- round("public".t_can_dist2sxx_gps.dist_m - s09_temp.dist_m_min, 1) as s09_dist_m_rnd1,
-- round("public".t_can_dist2sxx_gps.dist_m - s10_temp.dist_m_min, 1) as s10_dist_m_rnd1,
-- round("public".t_can_dist2sxx_gps.dist_m - s11_temp.dist_m_min, 1) as s11_dist_m_rnd1,
-- round("public".t_can_dist2sxx_gps.dist_m - s12_temp.dist_m_min, 1) as s12_dist_m_rnd1,
-- round("public".t_can_dist2sxx_gps.dist_m - s13_temp.dist_m_min, 1) as s13_dist_m_rnd1,
-- round("public".t_can_dist2sxx_gps.dist_m - s14_temp.dist_m_min, 1) as s14_dist_m_rnd1,
-- round("public".t_can_dist2sxx_gps.dist_m - s15_temp.dist_m_min, 1) as s15_dist_m_rnd1,
-- round("public".t_can_dist2sxx_gps.dist_m - s16_temp.dist_m_min, 1) as s16_dist_m_rnd1,
-- round("public".t_can_dist2sxx_gps.dist_m - s17_temp.dist_m_min, 1) as s17_dist_m_rnd1,
-- round("public".t_can_dist2sxx_gps.dist_m - s18_temp.dist_m_min, 1) as s18_dist_m_rnd1,
-- round("public".t_can_dist2sxx_gps.dist_m - s99_temp.dist_m_min, 1) as s99_dist_m_rnd1

FROM
"public".t_can_dist2sxx_gps,

--save distance and time when driver reaches gps distance signal
( SELECT
	"public".t_can_dist2sxx_gps.subid,
	"public".t_can_dist2sxx_gps.round,
	--min("public".t_can_dist2sxx_gps.rownr) as rownr_min,
	min("public".t_can_dist2sxx_gps.time_s) as time_s_min,
	min("public".t_can_dist2sxx_gps.dist_m) as dist_m_min

	FROM
	"public".t_can_dist2sxx_gps

	WHERE
	"public".t_can_dist2sxx_gps.round_part = 1 AND
	"public".t_can_dist2sxx_gps.s01_gps_dist_m = "public".t_can_dist2sxx_gps.s01_gps_dist_m_min

	GROUP BY
	"public".t_can_dist2sxx_gps.subid,
	"public".t_can_dist2sxx_gps.round
) s01_temp,

( SELECT
	"public".t_can_dist2sxx_gps.subid,
	"public".t_can_dist2sxx_gps.round,
	--min("public".t_can_dist2sxx_gps.rownr) as rownr_min,
	min("public".t_can_dist2sxx_gps.time_s) as time_s_min,
	min("public".t_can_dist2sxx_gps.dist_m) as dist_m_min

	FROM
	"public".t_can_dist2sxx_gps

	WHERE
	"public".t_can_dist2sxx_gps.round_part = 1 AND
	"public".t_can_dist2sxx_gps.s02_gps_dist_m = "public".t_can_dist2sxx_gps.s02_gps_dist_m_min

	GROUP BY
	"public".t_can_dist2sxx_gps.subid,
	"public".t_can_dist2sxx_gps.round
) s02_temp,

( SELECT
	"public".t_can_dist2sxx_gps.subid,
	"public".t_can_dist2sxx_gps.round,
	--min("public".t_can_dist2sxx_gps.rownr) as rownr_min,
	min("public".t_can_dist2sxx_gps.time_s) as time_s_min,
	min("public".t_can_dist2sxx_gps.dist_m) as dist_m_min

	FROM
	"public".t_can_dist2sxx_gps

	WHERE
	"public".t_can_dist2sxx_gps.round_part = 1 AND
	"public".t_can_dist2sxx_gps.s03_gps_dist_m = "public".t_can_dist2sxx_gps.s03_gps_dist_m_min

	GROUP BY
	"public".t_can_dist2sxx_gps.subid,
	"public".t_can_dist2sxx_gps.round
) s03_temp,

( SELECT
	"public".t_can_dist2sxx_gps.subid,
	"public".t_can_dist2sxx_gps.round,
	--min("public".t_can_dist2sxx_gps.rownr) as rownr_min,
	min("public".t_can_dist2sxx_gps.time_s) as time_s_min,
	min("public".t_can_dist2sxx_gps.dist_m) as dist_m_min

	FROM
	"public".t_can_dist2sxx_gps

	WHERE
	"public".t_can_dist2sxx_gps.round_part = 1 AND
	"public".t_can_dist2sxx_gps.s04_gps_dist_m = "public".t_can_dist2sxx_gps.s04_gps_dist_m_min

	GROUP BY
	"public".t_can_dist2sxx_gps.subid,
	"public".t_can_dist2sxx_gps.round
) s04_temp,

( SELECT
	"public".t_can_dist2sxx_gps.subid,
	"public".t_can_dist2sxx_gps.round,
	--min("public".t_can_dist2sxx_gps.rownr) as rownr_min,
	min("public".t_can_dist2sxx_gps.time_s) as time_s_min,
	min("public".t_can_dist2sxx_gps.dist_m) as dist_m_min

	FROM
	"public".t_can_dist2sxx_gps

	WHERE
	"public".t_can_dist2sxx_gps.round_part = 1 AND
	"public".t_can_dist2sxx_gps.s05_gps_dist_m = "public".t_can_dist2sxx_gps.s05_gps_dist_m_min

	GROUP BY
	"public".t_can_dist2sxx_gps.subid,
	"public".t_can_dist2sxx_gps.round
) s05_temp,

( SELECT
	"public".t_can_dist2sxx_gps.subid,
	"public".t_can_dist2sxx_gps.round,
	--min("public".t_can_dist2sxx_gps.rownr) as rownr_min,
	min("public".t_can_dist2sxx_gps.time_s) as time_s_min,
	min("public".t_can_dist2sxx_gps.dist_m) as dist_m_min

	FROM
	"public".t_can_dist2sxx_gps

	WHERE
	"public".t_can_dist2sxx_gps.round_part = 1 AND
	"public".t_can_dist2sxx_gps.s06_gps_dist_m = "public".t_can_dist2sxx_gps.s06_gps_dist_m_min

	GROUP BY
	"public".t_can_dist2sxx_gps.subid,
	"public".t_can_dist2sxx_gps.round
) s06_temp,

( SELECT
	"public".t_can_dist2sxx_gps.subid,
	"public".t_can_dist2sxx_gps.round,
	--min("public".t_can_dist2sxx_gps.rownr) as rownr_min,
	min("public".t_can_dist2sxx_gps.time_s) as time_s_min,
	min("public".t_can_dist2sxx_gps.dist_m) as dist_m_min

	FROM
	"public".t_can_dist2sxx_gps

	WHERE 
	"public".t_can_dist2sxx_gps.round_part = 1 AND
	"public".t_can_dist2sxx_gps.s07_gps_dist_m = "public".t_can_dist2sxx_gps.s07_gps_dist_m_min

	GROUP BY
	"public".t_can_dist2sxx_gps.subid,
	"public".t_can_dist2sxx_gps.round
) s07_temp,

( SELECT
	"public".t_can_dist2sxx_gps.subid,
	"public".t_can_dist2sxx_gps.round,
	--min("public".t_can_dist2sxx_gps.rownr) as rownr_min,
	min("public".t_can_dist2sxx_gps.time_s) as time_s_min,
	min("public".t_can_dist2sxx_gps.dist_m) as dist_m_min

	FROM
	"public".t_can_dist2sxx_gps

	WHERE
	"public".t_can_dist2sxx_gps.round_part = 1 AND
	"public".t_can_dist2sxx_gps.s08_gps_dist_m = "public".t_can_dist2sxx_gps.s08_gps_dist_m_min

	GROUP BY
	"public".t_can_dist2sxx_gps.subid,
	"public".t_can_dist2sxx_gps.round
) s08_temp,

( SELECT
	"public".t_can_dist2sxx_gps.subid,
	"public".t_can_dist2sxx_gps.round,
	--min("public".t_can_dist2sxx_gps.rownr) as rownr_min,
	min("public".t_can_dist2sxx_gps.time_s) as time_s_min,
	min("public".t_can_dist2sxx_gps.dist_m) as dist_m_min

	FROM
	"public".t_can_dist2sxx_gps

	WHERE
	"public".t_can_dist2sxx_gps.round_part_v2 = 1 AND
	"public".t_can_dist2sxx_gps.s09_gps_dist_m = "public".t_can_dist2sxx_gps.s09_gps_dist_m_min

	GROUP BY
	"public".t_can_dist2sxx_gps.subid,
	"public".t_can_dist2sxx_gps.round
) s09_temp,

( SELECT
	"public".t_can_dist2sxx_gps.subid,
	"public".t_can_dist2sxx_gps.round,
	--min("public".t_can_dist2sxx_gps.rownr) as rownr_min,
	min("public".t_can_dist2sxx_gps.time_s) as time_s_min,
	min("public".t_can_dist2sxx_gps.dist_m) as dist_m_min

	FROM
	"public".t_can_dist2sxx_gps

	WHERE
	"public".t_can_dist2sxx_gps.round_part_v2 = 1 AND
	"public".t_can_dist2sxx_gps.s10_gps_dist_m = "public".t_can_dist2sxx_gps.s10_gps_dist_m_min

	GROUP BY
	"public".t_can_dist2sxx_gps.subid,
	"public".t_can_dist2sxx_gps.round
) s10_temp,

( SELECT
	"public".t_can_dist2sxx_gps.subid,
	"public".t_can_dist2sxx_gps.round,
	--min("public".t_can_dist2sxx_gps.rownr) as rownr_min,
	min("public".t_can_dist2sxx_gps.time_s) as time_s_min,
	min("public".t_can_dist2sxx_gps.dist_m) as dist_m_min

	FROM
	"public".t_can_dist2sxx_gps

	WHERE
	"public".t_can_dist2sxx_gps.round_part_v2 = 1 AND 
	"public".t_can_dist2sxx_gps.s11_gps_dist_m = "public".t_can_dist2sxx_gps.s11_gps_dist_m_min

	GROUP BY
	"public".t_can_dist2sxx_gps.subid,
	"public".t_can_dist2sxx_gps.round
) s11_temp,

( SELECT
	"public".t_can_dist2sxx_gps.subid,
	"public".t_can_dist2sxx_gps.round,
	--min("public".t_can_dist2sxx_gps.rownr) as rownr_min,
	min("public".t_can_dist2sxx_gps.time_s) as time_s_min,
	min("public".t_can_dist2sxx_gps.dist_m) as dist_m_min

	FROM
	"public".t_can_dist2sxx_gps

	WHERE
	"public".t_can_dist2sxx_gps.round_part = 2 AND 
	"public".t_can_dist2sxx_gps.s12_gps_dist_m = "public".t_can_dist2sxx_gps.s12_gps_dist_m_min

	GROUP BY
	"public".t_can_dist2sxx_gps.subid,
	"public".t_can_dist2sxx_gps.round
) s12_temp,

( SELECT
	"public".t_can_dist2sxx_gps.subid,
	"public".t_can_dist2sxx_gps.round,
	--min("public".t_can_dist2sxx_gps.rownr) as rownr_min,
	min("public".t_can_dist2sxx_gps.time_s) as time_s_min,
	min("public".t_can_dist2sxx_gps.dist_m) as dist_m_min

	FROM
	"public".t_can_dist2sxx_gps

	WHERE
	"public".t_can_dist2sxx_gps.round_part = 2 AND 
	"public".t_can_dist2sxx_gps.s13_gps_dist_m = "public".t_can_dist2sxx_gps.s13_gps_dist_m_min

	GROUP BY
	"public".t_can_dist2sxx_gps.subid,
	"public".t_can_dist2sxx_gps.round
) s13_temp,

( SELECT
	"public".t_can_dist2sxx_gps.subid,
	"public".t_can_dist2sxx_gps.round,
	--min("public".t_can_dist2sxx_gps.rownr) as rownr_min,
	min("public".t_can_dist2sxx_gps.time_s) as time_s_min,
	min("public".t_can_dist2sxx_gps.dist_m) as dist_m_min

	FROM
	"public".t_can_dist2sxx_gps

	WHERE
	"public".t_can_dist2sxx_gps.round_part = 2 AND 
	"public".t_can_dist2sxx_gps.s14_gps_dist_m = "public".t_can_dist2sxx_gps.s14_gps_dist_m_min

	GROUP BY
	"public".t_can_dist2sxx_gps.subid,
	"public".t_can_dist2sxx_gps.round
) s14_temp,

( SELECT
	"public".t_can_dist2sxx_gps.subid,
	"public".t_can_dist2sxx_gps.round,
	--min("public".t_can_dist2sxx_gps.rownr) as rownr_min,
	min("public".t_can_dist2sxx_gps.time_s) as time_s_min,
	min("public".t_can_dist2sxx_gps.dist_m) as dist_m_min

	FROM
	"public".t_can_dist2sxx_gps

	WHERE
	"public".t_can_dist2sxx_gps.round_part = 2 AND 
	"public".t_can_dist2sxx_gps.s15_gps_dist_m = "public".t_can_dist2sxx_gps.s15_gps_dist_m_min

	GROUP BY
	"public".t_can_dist2sxx_gps.subid,
	"public".t_can_dist2sxx_gps.round
) s15_temp,

( SELECT
	"public".t_can_dist2sxx_gps.subid,
	"public".t_can_dist2sxx_gps.round,
	--min("public".t_can_dist2sxx_gps.rownr) as rownr_min,
	min("public".t_can_dist2sxx_gps.time_s) as time_s_min,
	min("public".t_can_dist2sxx_gps.dist_m) as dist_m_min

	FROM
	"public".t_can_dist2sxx_gps

	WHERE
	"public".t_can_dist2sxx_gps.round_part = 2 AND 
	"public".t_can_dist2sxx_gps.s16_gps_dist_m = "public".t_can_dist2sxx_gps.s16_gps_dist_m_min

	GROUP BY
	"public".t_can_dist2sxx_gps.subid,
	"public".t_can_dist2sxx_gps.round
) s16_temp,

( SELECT
	"public".t_can_dist2sxx_gps.subid,
	"public".t_can_dist2sxx_gps.round,
	--min("public".t_can_dist2sxx_gps.rownr) as rownr_min,
	min("public".t_can_dist2sxx_gps.time_s) as time_s_min,
	min("public".t_can_dist2sxx_gps.dist_m) as dist_m_min

	FROM
	"public".t_can_dist2sxx_gps

	WHERE
	"public".t_can_dist2sxx_gps.round_part = 2 AND 
	"public".t_can_dist2sxx_gps.s17_gps_dist_m = "public".t_can_dist2sxx_gps.s17_gps_dist_m_min

	GROUP BY
	"public".t_can_dist2sxx_gps.subid,
	"public".t_can_dist2sxx_gps.round
) s17_temp,

( SELECT
	"public".t_can_dist2sxx_gps.subid,
	"public".t_can_dist2sxx_gps.round,
	--min("public".t_can_dist2sxx_gps.rownr) as rownr_min,
	min("public".t_can_dist2sxx_gps.time_s) as time_s_min,
	min("public".t_can_dist2sxx_gps.dist_m) as dist_m_min

	FROM
	"public".t_can_dist2sxx_gps

	WHERE
	"public".t_can_dist2sxx_gps.round_part = 2 AND 
	"public".t_can_dist2sxx_gps.s18_gps_dist_m = "public".t_can_dist2sxx_gps.s18_gps_dist_m_min

	GROUP BY
	"public".t_can_dist2sxx_gps.subid,
	"public".t_can_dist2sxx_gps.round
) s18_temp,

( SELECT
	"public".t_can_dist2sxx_gps.subid,
	"public".t_can_dist2sxx_gps.round,
	--min("public".t_can_dist2sxx_gps.rownr) as rownr_min,
	min("public".t_can_dist2sxx_gps.time_s) as time_s_min,
	min("public".t_can_dist2sxx_gps.dist_m) as dist_m_min

	FROM
	"public".t_can_dist2sxx_gps

	WHERE
	"public".t_can_dist2sxx_gps.round_part = 2 AND 
	"public".t_can_dist2sxx_gps.s99_gps_dist_m = "public".t_can_dist2sxx_gps.s99_gps_dist_m_min

	GROUP BY
	"public".t_can_dist2sxx_gps.subid,
	"public".t_can_dist2sxx_gps.round
) s99_temp

WHERE 
"public".t_can_dist2sxx_gps.subid = s01_temp.subid AND
"public".t_can_dist2sxx_gps.subid = s02_temp.subid AND
"public".t_can_dist2sxx_gps.subid = s03_temp.subid AND
"public".t_can_dist2sxx_gps.subid = s04_temp.subid AND
"public".t_can_dist2sxx_gps.subid = s05_temp.subid AND
"public".t_can_dist2sxx_gps.subid = s06_temp.subid AND
"public".t_can_dist2sxx_gps.subid = s07_temp.subid AND
"public".t_can_dist2sxx_gps.subid = s08_temp.subid AND
"public".t_can_dist2sxx_gps.subid = s09_temp.subid AND
"public".t_can_dist2sxx_gps.subid = s10_temp.subid AND
"public".t_can_dist2sxx_gps.subid = s11_temp.subid AND
"public".t_can_dist2sxx_gps.subid = s12_temp.subid AND
"public".t_can_dist2sxx_gps.subid = s13_temp.subid AND
"public".t_can_dist2sxx_gps.subid = s14_temp.subid AND
"public".t_can_dist2sxx_gps.subid = s15_temp.subid AND
"public".t_can_dist2sxx_gps.subid = s16_temp.subid AND
"public".t_can_dist2sxx_gps.subid = s17_temp.subid AND
"public".t_can_dist2sxx_gps.subid = s18_temp.subid AND
"public".t_can_dist2sxx_gps.subid = s99_temp.subid AND
"public".t_can_dist2sxx_gps.round = s01_temp.round AND
"public".t_can_dist2sxx_gps.round = s02_temp.round AND
"public".t_can_dist2sxx_gps.round = s03_temp.round AND
"public".t_can_dist2sxx_gps.round = s04_temp.round AND
"public".t_can_dist2sxx_gps.round = s05_temp.round AND
"public".t_can_dist2sxx_gps.round = s06_temp.round AND
"public".t_can_dist2sxx_gps.round = s07_temp.round AND
"public".t_can_dist2sxx_gps.round = s08_temp.round AND
"public".t_can_dist2sxx_gps.round = s09_temp.round AND
"public".t_can_dist2sxx_gps.round = s10_temp.round AND
"public".t_can_dist2sxx_gps.round = s11_temp.round AND
"public".t_can_dist2sxx_gps.round = s12_temp.round AND
"public".t_can_dist2sxx_gps.round = s13_temp.round AND
"public".t_can_dist2sxx_gps.round = s14_temp.round AND
"public".t_can_dist2sxx_gps.round = s15_temp.round AND
"public".t_can_dist2sxx_gps.round = s16_temp.round AND
"public".t_can_dist2sxx_gps.round = s17_temp.round AND
"public".t_can_dist2sxx_gps.round = s18_temp.round AND
"public".t_can_dist2sxx_gps.round = s99_temp.round

ORDER BY
"public".t_can_dist2sxx_gps.rownr ASC
