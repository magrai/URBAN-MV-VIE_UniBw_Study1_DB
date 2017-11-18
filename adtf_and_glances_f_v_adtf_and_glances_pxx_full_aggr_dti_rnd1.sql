CREATE OR REPLACE FUNCTION f_v_adtf_and_glances_pxx_full_aggr_dti_rnd1 (pos_id INT DEFAULT NULL) 
RETURNS VOID
LANGUAGE plpgsql AS $$

DECLARE pos_id_txt TEXT = LPAD(pos_id::text, 2, '0');

BEGIN
EXECUTE '

DROP VIEW IF EXISTS v_adtf_and_glances_p' ||  pos_id_txt || '_full_aggr_dti_rnd1 CASCADE;
CREATE VIEW v_adtf_and_glances_p' ||  pos_id_txt || '_full_aggr_dti_rnd1 AS

SELECT
t_adtf_p' ||  pos_id_txt || '_full_dti_rnd1.subject_id,
t_adtf_p' ||  pos_id_txt || '_full_dti_rnd1.round_txt,
t_adtf_p' ||  pos_id_txt || '_full_dti_rnd1.time_s,
t_adtf_p' ||  pos_id_txt || '_full_dti_rnd1.p' ||  pos_id_txt || '_tti_s,
t_adtf_p' ||  pos_id_txt || '_full_dti_rnd1.p' ||  pos_id_txt || '_dti_m_rnd1,
t_adtf_p' ||  pos_id_txt || '_full_dti_rnd1.gps_lat,
t_adtf_p' ||  pos_id_txt || '_full_dti_rnd1.gps_lon,
t_adtf_p' ||  pos_id_txt || '_full_dti_rnd1.speed_kmh,
t_adtf_p' ||  pos_id_txt || '_full_dti_rnd1.dist_m,
t_adtf_p' ||  pos_id_txt || '_full_dti_rnd1.acc_lat_ms2,
t_adtf_p' ||  pos_id_txt || '_full_dti_rnd1.acc_lon_ms2,
t_adtf_p' ||  pos_id_txt || '_full_dti_rnd1.yaw_rate_degs,
t_adtf_p' ||  pos_id_txt || '_full_dti_rnd1.brake_press_bar,
t_adtf_p' ||  pos_id_txt || '_full_dti_rnd1.brake_status,
t_adtf_p' ||  pos_id_txt || '_full_dti_rnd1.steer_angle_deg,
t_adtf_p' ||  pos_id_txt || '_full_dti_rnd1.steer_angle_degs,
t_adtf_p' ||  pos_id_txt || '_full_dti_rnd1.acc_pedal_pos_perc,
t_adtf_p' ||  pos_id_txt || '_full_dti_rnd1.ind,
t_glances_p' ||  pos_id_txt || '_full_dti_rnd1.glance_dir_level,
t_glances_p' ||  pos_id_txt || '_full_dti_rnd1.glance_dir_label,
t_glances_p' ||  pos_id_txt || '_full_dti_rnd1.glance_dir_level_v2,
t_glances_p' ||  pos_id_txt || '_full_dti_rnd1.glance_dir_label_v2,
t_glances_p' ||  pos_id_txt || '_full_dti_rnd1.glance_dur_s,
t_glances_p' ||  pos_id_txt || '_full_dti_rnd1.glance_dur_s_dir_cum,
t_glances_p' ||  pos_id_txt || '_full_dti_rnd1.glance_nr,
t_glances_p' ||  pos_id_txt || '_full_dti_rnd1.glance_nr_dir

FROM
t_adtf_p' ||  pos_id_txt || '_full_dti_rnd1
INNER JOIN t_glances_p' ||  pos_id_txt || '_full_dti_rnd1 ON 
	t_adtf_p' ||  pos_id_txt || '_full_dti_rnd1.subject_id = t_glances_p' ||  pos_id_txt || '_full_dti_rnd1.subject_id AND 
	t_adtf_p' ||  pos_id_txt || '_full_dti_rnd1.time_s = t_glances_p' ||  pos_id_txt || '_full_dti_rnd1.time_s
	
ORDER BY
t_glances_p' ||  pos_id_txt || '_full_dti_rnd1.subject_id,
t_glances_p' ||  pos_id_txt || '_full_dti_rnd1.time_s

';
END $$;