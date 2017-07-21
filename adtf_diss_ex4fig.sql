SELECT
"public".t_adtf_dist2sxx_s01_dist_s_rnd1.subject_id,
CASE 
	WHEN t_adtf_dist2sxx_s01_dist_s_rnd1.round_id = 1 THEN 'intro'
	WHEN t_adtf_dist2sxx_s01_dist_s_rnd1.round_id = t_conditions.round_normal THEN 'normal'
	WHEN t_adtf_dist2sxx_s01_dist_s_rnd1.round_id = t_conditions.round_stress THEN 'stress'
END AS round_txt,
"public".t_adtf.time_s,
"public".t_adtf_dist2sxx_s01_dist_s_rnd1.s01_dist_s_rnd1,
"public".t_adtf_dist2sxx_s01_dist_s_rnd1.s01_dist_m,
"public".t_adtf.gps_lat,
"public".t_adtf.gps_lon,
"public".t_adtf.speed_kmh,
"public".t_adtf.acclat_ms2,
"public".t_adtf.acclon_ms2,
"public".t_adtf.yawrate_degs,
"public".t_adtf.brakepress_bar,
"public".t_adtf.brakepress_status,
"public".t_adtf.steerangle_deg,
"public".t_adtf.steerangle_degs,
"public".t_adtf.accpedalpos_perc,
"public".t_adtf.ind
FROM
"public".t_adtf_dist2sxx_s01_dist_s_rnd1
LEFT JOIN "public".t_adtf ON "public".t_adtf_dist2sxx_s01_dist_s_rnd1.rnr = "public".t_adtf.rnr
LEFT JOIN "public".t_conditions ON "public".t_adtf.subject_id = "public".t_conditions.subject_id
INNER JOIN "public".t_q_vip ON "public".t_adtf.subject_id = "public".t_q_vip.subid
