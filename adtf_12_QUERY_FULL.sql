SELECT
	t_adtf_dist2sxx_s01.rnr,
	t_adtf_dist2sxx_s01.subject_id,
	CASE
WHEN t_adtf_dist2sxx_s01.round_id = 1 THEN
	'intro'
WHEN t_adtf_dist2sxx_s01.round_id = t_conditions.round_normal THEN
	'normal'
WHEN t_adtf_dist2sxx_s01.round_id = t_conditions.round_stress THEN
	'stress'
END AS round_txt,
 --
t_adtf_dist2sxx_s01.time_s,
 --t_adtf_dist_m_rnd1.time_s_rnd1,
t_adtf_dist2sxx_s01.s01_dist_s,
 --round(t_adtf_dist2sxx_s01.s01_dist_s, 1) as s01_dist_s_rnd1,
--t_adtf_dist2sxx_s01_summary.s01_time_s_min,
--t_adtf_dist_m_rnd1.time_s_rnd1 - round(t_adtf_dist2sxx_s01_summary.s01_time_s_min, 1) AS s01_dist_s_rnd1,
--
t_adtf_dist2sxx_s01.dist_m,
 --t_adtf_dist_m_rnd1.dist_m_rnd1,
t_adtf_dist2sxx_s01.s01_dist_m,
 --round(t_adtf_dist2sxx_s01.s01_dist_m, 1) as s01_dist_m_rnd1,
--t_adtf_dist2sxx_s01_summary.s01_dist_m_min,
--t_adtf_dist_m_rnd1.dist_m_rnd1 - round(t_adtf_dist2sxx_s01_summary.s01_dist_m_min, 1) AS s01_dist_m_rnd1,
--------------------------------------------------------------------------------
t_adtf.gps_lat,
 t_adtf.gps_lon,
 --------------------------------------------------------------------------------
t_adtf.speed_kmh,
 t_adtf.acclat_ms2,
 t_adtf.acclon_ms2,
 t_adtf.yawrate_degs,
 t_adtf.brakepress_bar,
 t_adtf.brakepress_status,
 t_adtf.steerangle_deg,
 t_adtf.steerangle_degs,
 t_adtf.accpedalpos_perc,
 t_adtf.psd_seqlength_m,
 t_adtf.psd_roadtype,
 t_adtf.psd_lanes_n,
 t_adtf_dist_m_rnd1.dist_m_rnd1 --------------------------------------------------------------------------------
FROM
	t_adtf_dist2sxx_s01
LEFT JOIN t_adtf ON t_adtf_dist2sxx_s01.rnr = t_adtf.rnr
LEFT JOIN t_conditions ON t_adtf_dist2sxx_s01.subject_id = t_conditions.subject_id
RIGHT JOIN t_adtf_dist_m_rnd1 ON t_adtf_dist2sxx_s01.rnr = t_adtf_dist_m_rnd1.rnr
LEFT JOIN t_adtf_dist2sxx_s01_summary ON t_adtf_dist2sxx_s01.subject_id = t_adtf_dist2sxx_s01_summary.subject_id
AND t_adtf_dist2sxx_s01.round_id = t_adtf_dist2sxx_s01_summary.round_id --------------------------------------------------------------------------------
WHERE
	t_adtf_dist2sxx_s01.s01_dist_m >= - 50
AND t_adtf_dist2sxx_s01.s01_dist_m <= 50 --------------------------------------------------------------------------------
ORDER BY
	t_adtf_dist2sxx_s01.rnr ASC