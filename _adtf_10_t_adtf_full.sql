DROP TABLE IF EXISTS t_adtf_full CASCADE;
CREATE TABLE t_adtf_full AS

SELECT
t_adtf_dist2sxx.rnr,
t_adtf_dist2sxx.subject_id,
t_adtf_dist2sxx.round_id,
-- Dependend on condition order
CASE 
	WHEN t_adtf_dist2sxx.round_id = 1 THEN 'intro'
	WHEN t_adtf_dist2sxx.round_id = t_conditions.round_normal THEN 'normal'
	WHEN t_adtf_dist2sxx.round_id = t_conditions.round_stress THEN 'stress'
END AS round_txt,
--
t_adtf_dist2sxx.time_s,
t_adtf_dist2sxx.dist_m,
--
t_adtf.gps_lat,
t_adtf.gps_lon,
--
t_adtf_dist2sxx.s01_dist_s,
t_adtf_dist2sxx.s02_dist_s,
t_adtf_dist2sxx.s03_dist_s,
t_adtf_dist2sxx.s04_dist_s,
t_adtf_dist2sxx.s05_dist_s,
t_adtf_dist2sxx.s06_dist_s,
t_adtf_dist2sxx.s07_dist_s,
t_adtf_dist2sxx.s08_dist_s,
t_adtf_dist2sxx.s09_dist_s,
t_adtf_dist2sxx.s10_dist_s,
t_adtf_dist2sxx.s11_dist_s,
t_adtf_dist2sxx.s12_dist_s,
t_adtf_dist2sxx.s13_dist_s,
t_adtf_dist2sxx.s14_dist_s,
t_adtf_dist2sxx.s15_dist_s,
t_adtf_dist2sxx.s16_dist_s,
t_adtf_dist2sxx.s17_dist_s,
t_adtf_dist2sxx.s18_dist_s,
t_adtf_dist2sxx.s99_dist_s,
--
t_adtf_dist2sxx.s01_dist_m,
t_adtf_dist2sxx.s02_dist_m,
t_adtf_dist2sxx.s03_dist_m,
t_adtf_dist2sxx.s04_dist_m,
t_adtf_dist2sxx.s05_dist_m,
t_adtf_dist2sxx.s06_dist_m,
t_adtf_dist2sxx.s07_dist_m,
t_adtf_dist2sxx.s08_dist_m,
t_adtf_dist2sxx.s09_dist_m,
t_adtf_dist2sxx.s10_dist_m,
t_adtf_dist2sxx.s11_dist_m,
t_adtf_dist2sxx.s12_dist_m,
t_adtf_dist2sxx.s13_dist_m,
t_adtf_dist2sxx.s14_dist_m,
t_adtf_dist2sxx.s15_dist_m,
t_adtf_dist2sxx.s16_dist_m,
t_adtf_dist2sxx.s17_dist_m,
t_adtf_dist2sxx.s18_dist_m,
t_adtf_dist2sxx.s99_dist_m,
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
t_adtf_dist2sxx
LEFT OUTER JOIN t_adtf ON t_adtf_dist2sxx.rnr = t_adtf.rnr
LEFT OUTER JOIN t_conditions ON t_adtf_dist2sxx.subject_id = t_conditions.subject_id

ORDER BY
t_adtf_dist2sxx.rnr