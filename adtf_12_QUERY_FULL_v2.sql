SELECT
t_adtf_dist2sxx_s01_dist_s_rnd1.rnr,
"public".t_adtf_dist2sxx_s01.subject_id,
CASE 
	WHEN t_adtf_dist2sxx_s01.round_id = 1 THEN 'intro'
	WHEN t_adtf_dist2sxx_s01.round_id = t_conditions.round_normal THEN 'normal'
	WHEN t_adtf_dist2sxx_s01.round_id = t_conditions.round_stress THEN 'stress'
END AS round_txt,
t_adtf_dist2sxx_s01_dist_s_rnd1.time_s_rnd1,
"public".t_adtf_dist2sxx_s01.s01_dist_s,
"public".t_adtf_dist2sxx_s01.dist_m,
"public".t_adtf_dist2sxx_s01.s01_dist_m,
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
"public".t_adtf.psd_seqlength_m,
"public".t_adtf.psd_roadtype,
"public".t_adtf.psd_lanes_n
FROM
"public".t_adtf_dist2sxx_s01
LEFT JOIN "public".t_adtf ON "public".t_adtf_dist2sxx_s01.rnr = "public".t_adtf.rnr
LEFT JOIN "public".t_conditions ON "public".t_adtf_dist2sxx_s01.subject_id = "public".t_conditions.subject_id
LEFT JOIN "public".t_adtf_dist2sxx_s01_summary ON "public".t_adtf_dist2sxx_s01.subject_id = "public".t_adtf_dist2sxx_s01_summary.subject_id AND "public".t_adtf_dist2sxx_s01.round_id = "public".t_adtf_dist2sxx_s01_summary.round_id
WHERE
"public".t_adtf_dist2sxx_s01.s01_dist_m >= -50 AND
"public".t_adtf_dist2sxx_s01.s01_dist_m <= 50
ORDER BY
"public".t_adtf_dist2sxx_s01.rnr ASC
