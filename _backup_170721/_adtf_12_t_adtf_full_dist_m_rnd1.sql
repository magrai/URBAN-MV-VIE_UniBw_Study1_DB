DROP TABLE IF EXISTS t_adtf_full_aggr_dist_m_rnd1_min_dist2sxx_v2 CASCADE;
CREATE TABLE t_adtf_full_aggr_dist_m_rnd1_min_dist2sxx_v2 AS

SELECT
t_adtf.rnr,
t_adtf.subject_id,
t_adtf.round_txt,
--
t_adtf.time_s,
v_adtf_full_aggr_dist_m_rnd1_min.time_s_rnd1,
--v_adtf_full_aggr_dist_m_rnd1_min.dist_m,
v_adtf_full_aggr_dist_m_rnd1_min.dist_m_rnd1,
--
t_adtf.gps_lat,
t_adtf.gps_lon,
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
t_adtf.speed_kmh,
t_adtf.acclat_ms2,
t_adtf.acclon_ms2,
t_adtf.yawrate_degs,
t_adtf.brakepress_bar,
t_adtf.brakepress_status,
t_adtf.steerangle_deg,
t_adtf.steerangle_degs,
t_adtf.accpedalpos_perc,
t_adtf.ind,
t_adtf.ldw_side,
t_adtf.ldw_tlc_s,
t_adtf.ldw_dlc_m,
t_adtf.psd_roadtype,
t_adtf.psd_seqlength_m,
t_adtf.psd_lanes_n

FROM
t_adtf
LEFT JOIN v_adtf_full_aggr_dist_m_rnd1_min ON t_adtf.rnr             = v_adtf_full_aggr_dist_m_rnd1_min.rnr
LEFT JOIN v_adtf_dist2sxx_summary 				 ON t_adtf.subject_id = v_adtf_dist2sxx_summary.subject_id AND
																							t_adtf.round_id   = v_adtf_dist2sxx_summary.round_id