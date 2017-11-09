CREATE OR REPLACE FUNCTION f_t_glances_pxx_full (pos_id INT DEFAULT NULL) 
RETURNS VOID
LANGUAGE plpgsql AS $$

DECLARE pos_id_txt TEXT = LPAD(pos_id::text, 2, '0');

BEGIN
EXECUTE '

DROP TABLE IF EXISTS t_glances_p' ||  pos_id_txt || '_full CASCADE;
CREATE TABLE t_glances_p' ||  pos_id_txt || '_full AS

SELECT 
t_adtf_p' ||  pos_id_txt || '_full.subject_id,
t_adtf_p' ||  pos_id_txt || '_full.round_txt,
t_adtf_p' ||  pos_id_txt || '_full.time_s,
t_adtf_p' ||  pos_id_txt || '_full.dist_m,
t_adtf_p' ||  pos_id_txt || '_full.p' ||  pos_id_txt || '_tti_s,
t_adtf_p' ||  pos_id_txt || '_full.p' ||  pos_id_txt || '_dti_m,

v_glances_format.glance_dir_level,
v_glances_format.glance_dir_label,
v_glances_format.glance_dir_level_v2,
v_glances_format.glance_dir_label_v2,
-- v_glances_format.glance_time_s_start,
-- v_glances_format.glance_time_s_end,
v_glances_format.glance_dur_s,
v_glances_format.glance_dur_s_dir_cum,
v_glances_format.glance_nr,
v_glances_format.glance_nr_dir

FROM 
t_adtf_p' ||  pos_id_txt || '_full
INNER JOIN v_glances_format ON 
	t_adtf_p' ||  pos_id_txt || '_full.subject_id =  v_glances_format.subject_id AND (
	t_adtf_p' ||  pos_id_txt || '_full.time_s 		>= v_glances_format.glance_time_s_start AND
	t_adtf_p' ||  pos_id_txt || '_full.time_s 		<  v_glances_format.glance_time_s_end)
	
ORDER BY
subject_id,
time_s
';
END $$;