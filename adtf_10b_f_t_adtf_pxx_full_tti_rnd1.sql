CREATE OR REPLACE FUNCTION f_t_adtf_pxx_full_tti_rnd1 (pos_id INT DEFAULT NULL) 
RETURNS VOID
LANGUAGE plpgsql AS $$

DECLARE pos_id_txt TEXT = LPAD(pos_id::text, 2, '0');

BEGIN
EXECUTE '
--------------------------------------------------------------------------------
-- DROP VIEW IF EXISTS v_adtf_p' || pos_id_txt || '_full_tti_rnd1 CASCADE;
-- CREATE OR REPLACE VIEW v_adtf_p' || pos_id_txt || '_full_tti_rnd1 AS
--------------------------------------------------------------------------------
DROP TABLE IF EXISTS t_adtf_p' ||  pos_id_txt || '_full_tti_rnd1 CASCADE;
CREATE TABLE t_adtf_p' ||  pos_id_txt || '_full_tti_rnd1 AS
--------------------------------------------------------------------------------

SELECT
t_adtf_p' || pos_id_txt || '_am_tti_rnd1.row_nr,
t_adtf_p' || pos_id_txt || '_am_tti_rnd1.subject_id,
t_adtf_rounds_by_row.round_txt,
--------------------------------------------------------------------------------
t_adtf_p' || pos_id_txt || '_am_tti_rnd1.time_s,
t_adtf_p' || pos_id_txt || '_am_tti_rnd1.dist_m,
--------------------------------------------------------------------------------
t_adtf_p' || pos_id_txt || '_am_tti_rnd1.p'|| pos_id_txt ||'_tti_s_rnd1,
t_adtf_p' || pos_id_txt || '_am_tti_rnd1.p'|| pos_id_txt ||'_dti_m,
--------------------------------------------------------------------------------
t_adtf_formatted.gps_lat,
t_adtf_formatted.gps_lon,
--------------------------------------------------------------------------------
t_adtf_formatted.speed_kmh,
t_adtf_formatted.speed_ms,
t_adtf_formatted.acc_lat_ms2,
t_adtf_formatted.acc_lon_ms2,
t_adtf_formatted.yaw_rate_degs,
t_adtf_formatted.brake_press_bar,
t_adtf_formatted.brake_status,
t_adtf_formatted.steer_angle_deg,
t_adtf_formatted.steer_angle_degs,
t_adtf_formatted.acc_pedal_pos_perc,
t_adtf_formatted.ind

FROM
t_adtf_p' || pos_id_txt || '_am_tti_rnd1
LEFT JOIN 
	t_adtf_formatted ON 
	t_adtf_p' || pos_id_txt || '_am_tti_rnd1.row_nr = t_adtf_formatted.row_nr
LEFT JOIN 
	t_adtf_rounds_by_row ON 
	t_adtf_p' || pos_id_txt || '_am_tti_rnd1.row_nr = t_adtf_rounds_by_row.row_nr
';
END $$;