CREATE OR REPLACE FUNCTION f_t_adtf_dist_m_rnd1_full_sxx (s INT DEFAULT NULL) 
RETURNS VOID
LANGUAGE plpgsql AS $$

DECLARE s_txt TEXT = LPAD(s::text, 2, '0');

BEGIN
EXECUTE '
--------------------------------------------------------------------------------
-- DROP VIEW IF EXISTS v_adtf_dist_m_rnd1_full_s' || s_txt || ' CASCADE;
-- CREATE OR REPLACE VIEW v_adtf_dist_m_rnd1_full_s' || s_txt || ' AS
--------------------------------------------------------------------------------
DROP TABLE IF EXISTS t_adtf_dist_m_rnd1_full_s' ||  s_txt || ' CASCADE;
CREATE TABLE t_adtf_dist_m_rnd1_full_s' ||  s_txt || ' AS
--------------------------------------------------------------------------------

SELECT
--t_adtf_dist2sxx_s'|| s_txt ||'_dist_m_rnd1.rnr,
t_adtf_dist2sxx_s'|| s_txt ||'_dist_m_rnd1.subject_id,
CASE 
	WHEN t_adtf_dist2sxx_s'|| s_txt ||'_dist_m_rnd1.round_id = 1 THEN ''intro''
	WHEN t_adtf_dist2sxx_s'|| s_txt ||'_dist_m_rnd1.round_id = t_conditions.round_normal THEN ''normal''
	WHEN t_adtf_dist2sxx_s'|| s_txt ||'_dist_m_rnd1.round_id = t_conditions.round_stress THEN ''stress''
END AS round_txt,
--------------------------------------------------------------------------------
t_adtf.time_s,
--------------------------------------------------------------------------------
t_adtf_dist2sxx_s'|| s_txt ||'_dist_m_rnd1.s'|| s_txt ||'_dist_s,
t_adtf_dist2sxx_s'|| s_txt ||'_dist_m_rnd1.s'|| s_txt ||'_dist_m_rnd1,
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
t_adtf.ind,
t_adtf.psd_seqlength_m,
t_adtf.psd_roadtype,
t_adtf.psd_lanes_n
FROM
t_adtf_dist2sxx_s'|| s_txt ||'_dist_m_rnd1
LEFT JOIN t_adtf 													ON t_adtf_dist2sxx_s'|| s_txt ||'_dist_m_rnd1.rnr 	= t_adtf.rnr
LEFT JOIN t_conditions 										ON t_adtf.subject_id 														 = t_conditions.subject_id
';
END $$;