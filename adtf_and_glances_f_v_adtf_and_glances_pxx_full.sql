CREATE OR REPLACE FUNCTION f_v_adtf_and_glances_pxx_full (pos_id INT DEFAULT NULL) 
RETURNS VOID
LANGUAGE plpgsql AS $$

DECLARE pos_id_txt TEXT = LPAD(pos_id::text, 2, '0');

BEGIN
EXECUTE '

DROP VIEW IF EXISTS v_adtf_and_glances_p' ||  pos_id_txt || '_full CASCADE;
CREATE VIEW v_adtf_and_glances_p' ||  pos_id_txt || '_full AS

SELECT
t_adtf_p' ||  pos_id_txt || '_full.subject_id,
t_adtf_p' ||  pos_id_txt || '_full.round_txt,
t_adtf_p' ||  pos_id_txt || '_full.time_s,
t_adtf_p' ||  pos_id_txt || '_full.p' ||  pos_id_txt || '_tti_s,
t_adtf_p' ||  pos_id_txt || '_full.p' ||  pos_id_txt || '_dti_m,
t_adtf_p' ||  pos_id_txt || '_full.gps_lat,
t_adtf_p' ||  pos_id_txt || '_full.gps_lon,
t_adtf_p' ||  pos_id_txt || '_full.speed_kmh,
t_adtf_p' ||  pos_id_txt || '_full.dist_m,
t_adtf_p' ||  pos_id_txt || '_full.acc_lat_ms2,
t_adtf_p' ||  pos_id_txt || '_full.acc_lon_ms2,
t_adtf_p' ||  pos_id_txt || '_full.yaw_rate_degs,
t_adtf_p' ||  pos_id_txt || '_full.brake_press_bar,
t_adtf_p' ||  pos_id_txt || '_full.brake_status,
t_adtf_p' ||  pos_id_txt || '_full.steer_angle_deg,
t_adtf_p' ||  pos_id_txt || '_full.steer_angle_degs,
t_adtf_p' ||  pos_id_txt || '_full.acc_pedal_pos_perc,
t_adtf_p' ||  pos_id_txt || '_full.ind,
t_glances_p' ||  pos_id_txt || '_full.glance_dir_level,
t_glances_p' ||  pos_id_txt || '_full.glance_dir_label,
t_glances_p' ||  pos_id_txt || '_full.glance_dir_level_v2,
t_glances_p' ||  pos_id_txt || '_full.glance_dir_label_v2,
t_glances_p' ||  pos_id_txt || '_full.glance_dur_s,
t_glances_p' ||  pos_id_txt || '_full.glance_dur_s_dir_cum,
t_glances_p' ||  pos_id_txt || '_full.glance_nr,
t_glances_p' ||  pos_id_txt || '_full.glance_nr_dir

FROM
t_adtf_p' ||  pos_id_txt || '_full
INNER JOIN t_glances_p' ||  pos_id_txt || '_full ON 
	t_adtf_p' ||  pos_id_txt || '_full.subject_id = t_glances_p' ||  pos_id_txt || '_full.subject_id AND 
	t_adtf_p' ||  pos_id_txt || '_full.time_s = t_glances_p' ||  pos_id_txt || '_full.time_s
	
ORDER BY
t_glances_p' ||  pos_id_txt || '_full.subject_id,
t_glances_p' ||  pos_id_txt || '_full.time_s

';
END $$;