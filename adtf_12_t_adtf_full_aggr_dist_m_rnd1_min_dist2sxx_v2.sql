DROP TABLE IF EXISTS t_adtf_full_aggr_dist_m_rnd1_min_dist2sxx_v2 CASCADE;
CREATE TABLE t_adtf_full_aggr_dist_m_rnd1_min_dist2sxx_v2 AS

SELECT
t_adtf_full.rnr,
t_adtf_full.subject_id,
--v_adtf_full_aggr_dist_m_rnd1_min.round_id,
t_adtf_full.round_txt,
--
t_adtf_full.time_s,
v_adtf_full_aggr_dist_m_rnd1_min.time_s_rnd1,
--v_adtf_full_aggr_dist_m_rnd1_min.dist_m,
v_adtf_full_aggr_dist_m_rnd1_min.dist_m_rnd1,
--
t_adtf_full.gps_lat,
t_adtf_full.gps_lon,
--
v_adtf_full_aggr_dist_m_rnd1_min.time_s_rnd1 - round(v_adtf_dist2sxx_summary.s01_time_s_min, 1) as s01_dist_s_rnd1,
v_adtf_full_aggr_dist_m_rnd1_min.time_s_rnd1 - round(v_adtf_dist2sxx_summary.s02_time_s_min, 1) as s02_dist_s_rnd1,
v_adtf_full_aggr_dist_m_rnd1_min.time_s_rnd1 - round(v_adtf_dist2sxx_summary.s03_time_s_min, 1) as s03_dist_s_rnd1,
v_adtf_full_aggr_dist_m_rnd1_min.time_s_rnd1 - round(v_adtf_dist2sxx_summary.s04_time_s_min, 1) as s04_dist_s_rnd1,
v_adtf_full_aggr_dist_m_rnd1_min.time_s_rnd1 - round(v_adtf_dist2sxx_summary.s05_time_s_min, 1) as s05_dist_s_rnd1,
v_adtf_full_aggr_dist_m_rnd1_min.time_s_rnd1 - round(v_adtf_dist2sxx_summary.s06_time_s_min, 1) as s06_dist_s_rnd1,
v_adtf_full_aggr_dist_m_rnd1_min.time_s_rnd1 - round(v_adtf_dist2sxx_summary.s07_time_s_min, 1) as s07_dist_s_rnd1,
v_adtf_full_aggr_dist_m_rnd1_min.time_s_rnd1 - round(v_adtf_dist2sxx_summary.s08_time_s_min, 1) as s08_dist_s_rnd1,
v_adtf_full_aggr_dist_m_rnd1_min.time_s_rnd1 - round(v_adtf_dist2sxx_summary.s09_time_s_min, 1) as s09_dist_s_rnd1,
v_adtf_full_aggr_dist_m_rnd1_min.time_s_rnd1 - round(v_adtf_dist2sxx_summary.s10_time_s_min, 1) as s10_dist_s_rnd1,
v_adtf_full_aggr_dist_m_rnd1_min.time_s_rnd1 - round(v_adtf_dist2sxx_summary.s11_time_s_min, 1) as s11_dist_s_rnd1,
v_adtf_full_aggr_dist_m_rnd1_min.time_s_rnd1 - round(v_adtf_dist2sxx_summary.s12_time_s_min, 1) as s12_dist_s_rnd1,
v_adtf_full_aggr_dist_m_rnd1_min.time_s_rnd1 - round(v_adtf_dist2sxx_summary.s13_time_s_min, 1) as s13_dist_s_rnd1,
v_adtf_full_aggr_dist_m_rnd1_min.time_s_rnd1 - round(v_adtf_dist2sxx_summary.s14_time_s_min, 1) as s14_dist_s_rnd1,
v_adtf_full_aggr_dist_m_rnd1_min.time_s_rnd1 - round(v_adtf_dist2sxx_summary.s15_time_s_min, 1) as s15_dist_s_rnd1,
v_adtf_full_aggr_dist_m_rnd1_min.time_s_rnd1 - round(v_adtf_dist2sxx_summary.s16_time_s_min, 1) as s16_dist_s_rnd1,
v_adtf_full_aggr_dist_m_rnd1_min.time_s_rnd1 - round(v_adtf_dist2sxx_summary.s17_time_s_min, 1) as s17_dist_s_rnd1,
v_adtf_full_aggr_dist_m_rnd1_min.time_s_rnd1 - round(v_adtf_dist2sxx_summary.s18_time_s_min, 1) as s18_dist_s_rnd1,
v_adtf_full_aggr_dist_m_rnd1_min.time_s_rnd1 - round(v_adtf_dist2sxx_summary.s99_time_s_min, 1) as s99_dist_s_rnd1,
--
v_adtf_full_aggr_dist_m_rnd1_min.dist_m_rnd1 - round(v_adtf_dist2sxx_summary.s01_dist_m_min, 1) as s01_dist_m_rnd1,
v_adtf_full_aggr_dist_m_rnd1_min.dist_m_rnd1 - round(v_adtf_dist2sxx_summary.s02_dist_m_min, 1) as s02_dist_m_rnd1,
v_adtf_full_aggr_dist_m_rnd1_min.dist_m_rnd1 - round(v_adtf_dist2sxx_summary.s03_dist_m_min, 1) as s03_dist_m_rnd1,
v_adtf_full_aggr_dist_m_rnd1_min.dist_m_rnd1 - round(v_adtf_dist2sxx_summary.s04_dist_m_min, 1) as s04_dist_m_rnd1,
v_adtf_full_aggr_dist_m_rnd1_min.dist_m_rnd1 - round(v_adtf_dist2sxx_summary.s05_dist_m_min, 1) as s05_dist_m_rnd1,
v_adtf_full_aggr_dist_m_rnd1_min.dist_m_rnd1 - round(v_adtf_dist2sxx_summary.s06_dist_m_min, 1) as s06_dist_m_rnd1,
v_adtf_full_aggr_dist_m_rnd1_min.dist_m_rnd1 - round(v_adtf_dist2sxx_summary.s07_dist_m_min, 1) as s07_dist_m_rnd1,
v_adtf_full_aggr_dist_m_rnd1_min.dist_m_rnd1 - round(v_adtf_dist2sxx_summary.s08_dist_m_min, 1) as s08_dist_m_rnd1,
v_adtf_full_aggr_dist_m_rnd1_min.dist_m_rnd1 - round(v_adtf_dist2sxx_summary.s09_dist_m_min, 1) as s09_dist_m_rnd1,
v_adtf_full_aggr_dist_m_rnd1_min.dist_m_rnd1 - round(v_adtf_dist2sxx_summary.s10_dist_m_min, 1) as s10_dist_m_rnd1,
v_adtf_full_aggr_dist_m_rnd1_min.dist_m_rnd1 - round(v_adtf_dist2sxx_summary.s11_dist_m_min, 1) as s11_dist_m_rnd1,
v_adtf_full_aggr_dist_m_rnd1_min.dist_m_rnd1 - round(v_adtf_dist2sxx_summary.s12_dist_m_min, 1) as s12_dist_m_rnd1,
v_adtf_full_aggr_dist_m_rnd1_min.dist_m_rnd1 - round(v_adtf_dist2sxx_summary.s13_dist_m_min, 1) as s13_dist_m_rnd1,
v_adtf_full_aggr_dist_m_rnd1_min.dist_m_rnd1 - round(v_adtf_dist2sxx_summary.s14_dist_m_min, 1) as s14_dist_m_rnd1,
v_adtf_full_aggr_dist_m_rnd1_min.dist_m_rnd1 - round(v_adtf_dist2sxx_summary.s15_dist_m_min, 1) as s15_dist_m_rnd1,
v_adtf_full_aggr_dist_m_rnd1_min.dist_m_rnd1 - round(v_adtf_dist2sxx_summary.s16_dist_m_min, 1) as s16_dist_m_rnd1,
v_adtf_full_aggr_dist_m_rnd1_min.dist_m_rnd1 - round(v_adtf_dist2sxx_summary.s17_dist_m_min, 1) as s17_dist_m_rnd1,
v_adtf_full_aggr_dist_m_rnd1_min.dist_m_rnd1 - round(v_adtf_dist2sxx_summary.s18_dist_m_min, 1) as s18_dist_m_rnd1,
v_adtf_full_aggr_dist_m_rnd1_min.dist_m_rnd1 - round(v_adtf_dist2sxx_summary.s99_dist_m_min, 1) as s99_dist_m_rnd1,
--
t_adtf_full.speed_kmh,
t_adtf_full.acclat_ms2,
t_adtf_full.acclon_ms2,
t_adtf_full.yawrate_degs,
t_adtf_full.brakepress_bar,
t_adtf_full.brakepress_status,
t_adtf_full.steerangle_deg,
t_adtf_full.steerangle_degs,
t_adtf_full.accpedalpos_perc,
t_adtf_full.ind,
t_adtf_full.ldw_side,
t_adtf_full.ldw_tlc_s,
t_adtf_full.ldw_dlc_m,
t_adtf_full.psd_roadtype,
t_adtf_full.psd_seqlength_m,
t_adtf_full.psd_lanes_n

FROM
t_adtf_full
LEFT JOIN v_adtf_dist2sxx_summary ON 
	t_adtf_full.subject_id = v_adtf_dist2sxx_summary.subject_id AND
	t_adtf_full.round_id = v_adtf_dist2sxx_summary.round_id
LEFT JOIN v_adtf_full_aggr_dist_m_rnd1_min ON
	t_adtf_full.rnr = v_adtf_full_aggr_dist_m_rnd1_min.rnr