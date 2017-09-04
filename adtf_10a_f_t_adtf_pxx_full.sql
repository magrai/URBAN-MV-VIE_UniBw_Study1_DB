CREATE OR REPLACE FUNCTION f_t_adtf_pxx_full (pos_id INT DEFAULT NULL) 
RETURNS VOID
LANGUAGE plpgsql AS $$

DECLARE pos_id_txt TEXT = LPAD(pos_id::text, 2, '0');

BEGIN
	EXECUTE '
	DROP TABLE IF EXISTS t_adtf_p' || pos_id_txt || '_full CASCADE;
	CREATE TABLE t_adtf_p' || pos_id_txt || '_full AS

	SELECT
	t_adtf_p' || pos_id_txt || '_dist.row_nr,
	t_adtf_p' || pos_id_txt || '_dist.subject_id,
t_adtf_rounds_by_row.round_txt,
	--
	t_adtf_p' || pos_id_txt || '_dist.time_s,
	t_adtf_p' || pos_id_txt || '_dist.dist_m,
	--
	--
	t_adtf_p' || pos_id_txt || '_dist.p' ||  pos_id_txt || '_dist_s,
	t_adtf_p' || pos_id_txt || '_dist.p' ||  pos_id_txt || '_dist_m,
	--
t_adtf_formatted.gps_lat,
t_adtf_formatted.gps_lon,
--------------------------------------------------------------------------------
t_adtf_formatted.speed_kmh,
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
	t_adtf_p' ||  pos_id_txt || '_dist
	LEFT OUTER JOIN t_adtf_formatted ON t_adtf_p' || pos_id_txt || '_dist.row_nr = t_adtf_formatted.row_nr
LEFT JOIN 
	t_adtf_rounds_by_row ON 
	t_adtf_p' ||  pos_id_txt || '_dist.row_nr = t_adtf_rounds_by_row.row_nr
	
	WHERE
	p' || pos_id_txt || '_dist_m >= -200 AND 
	p' || pos_id_txt || '_dist_m <= 50
	';
END $$;



