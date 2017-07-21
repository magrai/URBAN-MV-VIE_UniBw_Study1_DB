DROP TABLE IF EXISTS t_can_full_aggr_time_s_rnd1_min CASCADE;
CREATE TABLE t_can_full_aggr_time_s_rnd1_min AS

SELECT

min("public".t_can_full.rownr) as rownr,
row_number() over (partition by "public".t_can_full.subid, "public".t_can_full.time_s_rnd0 order by min("public".t_can_full.rownr)) as rownr_aggr,
"public".t_can_full.subid,
min("public".t_can_full.time_s) as time_s,
"public".t_can_full.time_s_rnd0,
min("public".t_can_full.time_s_rnd1) as time_s_rnd1,
min("public".t_can_full.dist_m_diff) as dist_m_diff,
min("public".t_can_full.dist_m) as dist_m,
min("public".t_can_full.dist_m_rnd0) as dist_m_rnd0,
min("public".t_can_full.dist_m_rnd1) as dist_m_rnd1,
min("public".t_can_full.round) as round,
"public".t_can_full.round_txt,
min("public".t_can_full.round_dist_m) as round_dist_m,
min("public".t_can_full.round_dist_m_rnd0) as round_dist_m_rnd0,
min("public".t_can_full.round_dist_m_rnd1) as round_dist_m_rnd1,
min("public".t_can_full.gps_lat) as gps_lat,
min("public".t_can_full.gps_long) as gps_long,
--
min("public".t_can_full.s01_gps_lat) as s01_gps_lat,
min("public".t_can_full.s01_gps_long) as s01_gps_long,
min("public".t_can_full.s02_gps_lat) as s02_gps_lat,
min("public".t_can_full.s02_gps_long) as s02_gps_long,
min("public".t_can_full.s03_gps_lat) as s03_gps_lat,
min("public".t_can_full.s03_gps_long) as s03_gps_long,
min("public".t_can_full.s04_gps_lat) as s04_gps_lat,
min("public".t_can_full.s04_gps_long) as s04_gps_long,
min("public".t_can_full.s05_gps_lat) as s05_gps_lat,
min("public".t_can_full.s05_gps_long) as s05_gps_long,
min("public".t_can_full.s06_gps_lat) as s06_gps_lat,
min("public".t_can_full.s06_gps_long) as s06_gps_long,
min("public".t_can_full.s07_gps_lat) as s07_gps_lat,
min("public".t_can_full.s07_gps_long) as s07_gps_long,
min("public".t_can_full.s08_gps_lat) as s08_gps_lat,
min("public".t_can_full.s08_gps_long) as s08_gps_long,
min("public".t_can_full.s09_gps_lat) as s09_gps_lat,
min("public".t_can_full.s09_gps_long) as s09_gps_long,
min("public".t_can_full.s10_gps_lat) as s10_gps_lat,
min("public".t_can_full.s10_gps_long) as s10_gps_long,
min("public".t_can_full.s11_gps_lat) as s11_gps_lat,
min("public".t_can_full.s11_gps_long) as s11_gps_long,
min("public".t_can_full.s12_gps_lat) as s12_gps_lat,
min("public".t_can_full.s12_gps_long) as s12_gps_long,
min("public".t_can_full.s13_gps_lat) as s13_gps_lat,
min("public".t_can_full.s13_gps_long) as s13_gps_long,
min("public".t_can_full.s14_gps_lat) as s14_gps_lat,
min("public".t_can_full.s14_gps_long) as s14_gps_long,
min("public".t_can_full.s15_gps_lat) as s15_gps_lat,
min("public".t_can_full.s15_gps_long) as s15_gps_long,
min("public".t_can_full.s16_gps_lat) as s16_gps_lat,
min("public".t_can_full.s16_gps_long) as s16_gps_long,
min("public".t_can_full.s17_gps_lat) as s17_gps_lat,
min("public".t_can_full.s17_gps_long) as s17_gps_long,
min("public".t_can_full.s18_gps_lat) as s18_gps_lat,
min("public".t_can_full.s18_gps_long) as s18_gps_long,
--
min("public".t_can_full.s01_gps_dist_m) as s01_gps_dist_m,
min("public".t_can_full.s02_gps_dist_m) as s02_gps_dist_m,
min("public".t_can_full.s03_gps_dist_m) as s03_gps_dist_m,
min("public".t_can_full.s04_gps_dist_m) as s04_gps_dist_m,
min("public".t_can_full.s05_gps_dist_m) as s05_gps_dist_m,
min("public".t_can_full.s06_gps_dist_m) as s06_gps_dist_m,
min("public".t_can_full.s07_gps_dist_m) as s07_gps_dist_m,
min("public".t_can_full.s08_gps_dist_m) as s08_gps_dist_m,
min("public".t_can_full.s09_gps_dist_m) as s09_gps_dist_m,
min("public".t_can_full.s10_gps_dist_m) as s10_gps_dist_m,
min("public".t_can_full.s11_gps_dist_m) as s11_gps_dist_m,
min("public".t_can_full.s12_gps_dist_m) as s12_gps_dist_m,
min("public".t_can_full.s13_gps_dist_m) as s13_gps_dist_m,
min("public".t_can_full.s14_gps_dist_m) as s14_gps_dist_m,
min("public".t_can_full.s15_gps_dist_m) as s15_gps_dist_m,
min("public".t_can_full.s16_gps_dist_m) as s16_gps_dist_m,
min("public".t_can_full.s17_gps_dist_m) as s17_gps_dist_m,
min("public".t_can_full.s18_gps_dist_m) as s18_gps_dist_m,
--
min("public".t_can_full.s01_dist_s) as s01_dist_s,
min("public".t_can_full.s02_dist_s) as s02_dist_s,
min("public".t_can_full.s03_dist_s) as s03_dist_s,
min("public".t_can_full.s04_dist_s) as s04_dist_s,
min("public".t_can_full.s05_dist_s) as s05_dist_s,
min("public".t_can_full.s06_dist_s) as s06_dist_s,
min("public".t_can_full.s07_dist_s) as s07_dist_s,
min("public".t_can_full.s08_dist_s) as s08_dist_s,
min("public".t_can_full.s09_dist_s) as s09_dist_s,
min("public".t_can_full.s10_dist_s) as s10_dist_s,
min("public".t_can_full.s11_dist_s) as s11_dist_s,
min("public".t_can_full.s12_dist_s) as s12_dist_s,
min("public".t_can_full.s13_dist_s) as s13_dist_s,
min("public".t_can_full.s14_dist_s) as s14_dist_s,
min("public".t_can_full.s15_dist_s) as s15_dist_s,
min("public".t_can_full.s16_dist_s) as s16_dist_s,
min("public".t_can_full.s17_dist_s) as s17_dist_s,
min("public".t_can_full.s18_dist_s) as s18_dist_s,
--
min("public".t_can_full.s01_dist_s_rnd0) as s01_dist_s_rnd0,
min("public".t_can_full.s02_dist_s_rnd0) as s02_dist_s_rnd0,
min("public".t_can_full.s03_dist_s_rnd0) as s03_dist_s_rnd0,
min("public".t_can_full.s04_dist_s_rnd0) as s04_dist_s_rnd0,
min("public".t_can_full.s05_dist_s_rnd0) as s05_dist_s_rnd0,
min("public".t_can_full.s06_dist_s_rnd0) as s06_dist_s_rnd0,
min("public".t_can_full.s07_dist_s_rnd0) as s07_dist_s_rnd0,
min("public".t_can_full.s08_dist_s_rnd0) as s08_dist_s_rnd0,
min("public".t_can_full.s09_dist_s_rnd0) as s09_dist_s_rnd0,
min("public".t_can_full.s10_dist_s_rnd0) as s10_dist_s_rnd0,
min("public".t_can_full.s11_dist_s_rnd0) as s11_dist_s_rnd0,
min("public".t_can_full.s12_dist_s_rnd0) as s12_dist_s_rnd0,
min("public".t_can_full.s13_dist_s_rnd0) as s13_dist_s_rnd0,
min("public".t_can_full.s14_dist_s_rnd0) as s14_dist_s_rnd0,
min("public".t_can_full.s15_dist_s_rnd0) as s15_dist_s_rnd0,
min("public".t_can_full.s16_dist_s_rnd0) as s16_dist_s_rnd0,
min("public".t_can_full.s17_dist_s_rnd0) as s17_dist_s_rnd0,
min("public".t_can_full.s18_dist_s_rnd0) as s18_dist_s_rnd0,
--
min("public".t_can_full.s01_dist_s_rnd1) as s01_dist_s_rnd1,
min("public".t_can_full.s02_dist_s_rnd1) as s02_dist_s_rnd1,
min("public".t_can_full.s03_dist_s_rnd1) as s03_dist_s_rnd1,
min("public".t_can_full.s04_dist_s_rnd1) as s04_dist_s_rnd1,
min("public".t_can_full.s05_dist_s_rnd1) as s05_dist_s_rnd1,
min("public".t_can_full.s06_dist_s_rnd1) as s06_dist_s_rnd1,
min("public".t_can_full.s07_dist_s_rnd1) as s07_dist_s_rnd1,
min("public".t_can_full.s08_dist_s_rnd1) as s08_dist_s_rnd1,
min("public".t_can_full.s09_dist_s_rnd1) as s09_dist_s_rnd1,
min("public".t_can_full.s10_dist_s_rnd1) as s10_dist_s_rnd1,
min("public".t_can_full.s11_dist_s_rnd1) as s11_dist_s_rnd1,
min("public".t_can_full.s12_dist_s_rnd1) as s12_dist_s_rnd1,
min("public".t_can_full.s13_dist_s_rnd1) as s13_dist_s_rnd1,
min("public".t_can_full.s14_dist_s_rnd1) as s14_dist_s_rnd1,
min("public".t_can_full.s15_dist_s_rnd1) as s15_dist_s_rnd1,
min("public".t_can_full.s16_dist_s_rnd1) as s16_dist_s_rnd1,
min("public".t_can_full.s17_dist_s_rnd1) as s17_dist_s_rnd1,
min("public".t_can_full.s18_dist_s_rnd1) as s18_dist_s_rnd1,
--
min("public".t_can_full.s01_dist_m) as s01_dist_m,
min("public".t_can_full.s02_dist_m) as s02_dist_m,
min("public".t_can_full.s03_dist_m) as s03_dist_m,
min("public".t_can_full.s04_dist_m) as s04_dist_m,
min("public".t_can_full.s05_dist_m) as s05_dist_m,
min("public".t_can_full.s06_dist_m) as s06_dist_m,
min("public".t_can_full.s07_dist_m) as s07_dist_m,
min("public".t_can_full.s08_dist_m) as s08_dist_m,
min("public".t_can_full.s09_dist_m) as s09_dist_m,
min("public".t_can_full.s10_dist_m) as s10_dist_m,
min("public".t_can_full.s11_dist_m) as s11_dist_m,
min("public".t_can_full.s12_dist_m) as s12_dist_m,
min("public".t_can_full.s13_dist_m) as s13_dist_m,
min("public".t_can_full.s14_dist_m) as s14_dist_m,
min("public".t_can_full.s15_dist_m) as s15_dist_m,
min("public".t_can_full.s16_dist_m) as s16_dist_m,
min("public".t_can_full.s17_dist_m) as s17_dist_m,
min("public".t_can_full.s18_dist_m) as s18_dist_m,
--
min("public".t_can_full.s01_dist_m_rnd0) as s01_dist_m_rnd0,
min("public".t_can_full.s02_dist_m_rnd0) as s02_dist_m_rnd0,
min("public".t_can_full.s03_dist_m_rnd0) as s03_dist_m_rnd0,
min("public".t_can_full.s04_dist_m_rnd0) as s04_dist_m_rnd0,
min("public".t_can_full.s05_dist_m_rnd0) as s05_dist_m_rnd0,
min("public".t_can_full.s06_dist_m_rnd0) as s06_dist_m_rnd0,
min("public".t_can_full.s07_dist_m_rnd0) as s07_dist_m_rnd0,
min("public".t_can_full.s08_dist_m_rnd0) as s08_dist_m_rnd0,
min("public".t_can_full.s09_dist_m_rnd0) as s09_dist_m_rnd0,
min("public".t_can_full.s10_dist_m_rnd0) as s10_dist_m_rnd0,
min("public".t_can_full.s11_dist_m_rnd0) as s11_dist_m_rnd0,
min("public".t_can_full.s12_dist_m_rnd0) as s12_dist_m_rnd0,
min("public".t_can_full.s13_dist_m_rnd0) as s13_dist_m_rnd0,
min("public".t_can_full.s14_dist_m_rnd0) as s14_dist_m_rnd0,
min("public".t_can_full.s15_dist_m_rnd0) as s15_dist_m_rnd0,
min("public".t_can_full.s16_dist_m_rnd0) as s16_dist_m_rnd0,
min("public".t_can_full.s17_dist_m_rnd0) as s17_dist_m_rnd0,
min("public".t_can_full.s18_dist_m_rnd0) as s18_dist_m_rnd0,
--
min("public".t_can_full.s01_dist_m_rnd1) as s01_dist_m_rnd1,
min("public".t_can_full.s02_dist_m_rnd1) as s02_dist_m_rnd1,
min("public".t_can_full.s03_dist_m_rnd1) as s03_dist_m_rnd1,
min("public".t_can_full.s04_dist_m_rnd1) as s04_dist_m_rnd1,
min("public".t_can_full.s05_dist_m_rnd1) as s05_dist_m_rnd1,
min("public".t_can_full.s06_dist_m_rnd1) as s06_dist_m_rnd1,
min("public".t_can_full.s07_dist_m_rnd1) as s07_dist_m_rnd1,
min("public".t_can_full.s08_dist_m_rnd1) as s08_dist_m_rnd1,
min("public".t_can_full.s09_dist_m_rnd1) as s09_dist_m_rnd1,
min("public".t_can_full.s10_dist_m_rnd1) as s10_dist_m_rnd1,
min("public".t_can_full.s11_dist_m_rnd1) as s11_dist_m_rnd1,
min("public".t_can_full.s12_dist_m_rnd1) as s12_dist_m_rnd1,
min("public".t_can_full.s13_dist_m_rnd1) as s13_dist_m_rnd1,
min("public".t_can_full.s14_dist_m_rnd1) as s14_dist_m_rnd1,
min("public".t_can_full.s15_dist_m_rnd1) as s15_dist_m_rnd1,
min("public".t_can_full.s16_dist_m_rnd1) as s16_dist_m_rnd1,
min("public".t_can_full.s17_dist_m_rnd1) as s17_dist_m_rnd1,
min("public".t_can_full.s18_dist_m_rnd1) as s18_dist_m_rnd1,
--
-- min("public".t_can_full.s01_ttc_s) as s01_ttc_s,
-- min("public".t_can_full.s02_ttc_s) as s02_ttc_s,
-- min("public".t_can_full.s03_ttc_s) as s03_ttc_s,
-- min("public".t_can_full.s04_ttc_s) as s04_ttc_s,
-- min("public".t_can_full.s05_ttc_s) as s05_ttc_s,
-- min("public".t_can_full.s06_ttc_s) as s06_ttc_s,
-- min("public".t_can_full.s07_ttc_s) as s07_ttc_s,
-- min("public".t_can_full.s08_ttc_s) as s08_ttc_s,
-- min("public".t_can_full.s09_ttc_s) as s09_ttc_s,
-- min("public".t_can_full.s10_ttc_s) as s10_ttc_s,
-- min("public".t_can_full.s11_ttc_s) as s11_ttc_s,
-- min("public".t_can_full.s12_ttc_s) as s12_ttc_s,
-- min("public".t_can_full.s13_ttc_s) as s13_ttc_s,
-- min("public".t_can_full.s14_ttc_s) as s14_ttc_s,
-- min("public".t_can_full.s15_ttc_s) as s15_ttc_s,
-- min("public".t_can_full.s16_ttc_s) as s16_ttc_s,
-- min("public".t_can_full.s17_ttc_s) as s17_ttc_s,
-- min("public".t_can_full.s18_ttc_s) as s18_ttc_s,
-- --
-- min("public".t_can_full.s01_ttc_s_rnd) as s01_ttc_s_rnd,
-- min("public".t_can_full.s02_ttc_s_rnd) as s02_ttc_s_rnd,
-- min("public".t_can_full.s03_ttc_s_rnd) as s03_ttc_s_rnd,
-- min("public".t_can_full.s04_ttc_s_rnd) as s04_ttc_s_rnd,
-- min("public".t_can_full.s05_ttc_s_rnd) as s05_ttc_s_rnd,
-- min("public".t_can_full.s06_ttc_s_rnd) as s06_ttc_s_rnd,
-- min("public".t_can_full.s07_ttc_s_rnd) as s07_ttc_s_rnd,
-- min("public".t_can_full.s08_ttc_s_rnd) as s08_ttc_s_rnd,
-- min("public".t_can_full.s09_ttc_s_rnd) as s09_ttc_s_rnd,
-- min("public".t_can_full.s10_ttc_s_rnd) as s10_ttc_s_rnd,
-- min("public".t_can_full.s11_ttc_s_rnd) as s11_ttc_s_rnd,
-- min("public".t_can_full.s12_ttc_s_rnd) as s12_ttc_s_rnd,
-- min("public".t_can_full.s13_ttc_s_rnd) as s13_ttc_s_rnd,
-- min("public".t_can_full.s14_ttc_s_rnd) as s14_ttc_s_rnd,
-- min("public".t_can_full.s15_ttc_s_rnd) as s15_ttc_s_rnd,
-- min("public".t_can_full.s16_ttc_s_rnd) as s16_ttc_s_rnd,
-- min("public".t_can_full.s17_ttc_s_rnd) as s17_ttc_s_rnd,
-- min("public".t_can_full.s18_ttc_s_rnd) as s18_ttc_s_rnd,
--
min("public".t_can_full.speed_kmh) as speed_kmh,
min("public".t_can_full.speed_kmh_diff) as speed_kmh_diff,
min("public".t_can_full.acclat_ms2) as acclat_ms2,
min("public".t_can_full.acclat_ms2_diff) as acclat_ms2_diff,
min("public".t_can_full.acclong_ms2) as acclong_ms2,
min("public".t_can_full.acclong_ms2_diff) as acclong_ms2_diff,
min("public".t_can_full.yawrate_degs) as yawrate_degs,
min("public".t_can_full.yawrate_degs_diff) as yawrate_degs_diff,
min("public".t_can_full.brakepress_bar) as brakepress_bar,
min("public".t_can_full.brakepress_bar_diff) as brakepress_bar_diff,
min("public".t_can_full.brakepress_status) as brakepress_status,
min("public".t_can_full.steerangle_deg) as steerangle_deg,
min("public".t_can_full.steerangle_deg_diff) as steerangle_deg_diff,
min("public".t_can_full.steerangle_speed) as steerangle_speed,
min("public".t_can_full.steerangle_speed_diff) as steerangle_speed_diff,
min("public".t_can_full.accpedalpos_perc) as accpedalpos_perc,
min("public".t_can_full.accpedalpos_perc_diff) as accpedalpos_perc_diff,
min("public".t_can_full.ind_left) as ind_left,
min("public".t_can_full.ind_right) as ind_right,
min("public".t_can_full.ind) as ind,
min("public".t_can_full.ldw_side) as ldw_side,
min("public".t_can_full.ldw_tlc_s) as ldw_tlc_s,
min("public".t_can_full.ldw_tlc_s_diff) as ldw_tlc_s_diff,
min("public".t_can_full.ldw_dlc_m) as ldw_dlc_m,
min("public".t_can_full.ldw_dlc_m_diff) as ldw_dlc_m_diff,
min("public".t_can_full.dist_intersect_m) as dist_intersect_m,
min("public".t_can_full.road_type) as road_type,
min("public".t_can_full.lanes_count) as lanes_count,
--
min("public".t_can_full.filename) as filename,
min("public".t_can_full.cond) as cond,
min("public".t_can_full.exid) as exid,
min("public".t_can_full."date") as "date"

FROM
"public".t_can_full

GROUP BY
"public".t_can_full.subid,
"public".t_can_full.round_txt,
"public".t_can_full.time_s_rnd0

ORDER BY
min("public".t_can_full.rownr)