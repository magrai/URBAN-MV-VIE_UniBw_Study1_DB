SELECT 
t_adtf_p01_full.subject_id,
t_adtf_p01_full.round_txt,
t_adtf_p01_full.time_s,
t_adtf_p01_full.dist_m,
t_adtf_p01_full.p01_tti_s,
t_adtf_p01_full.p01_dti_m,

v_glances_format.glance_dir_code,
v_glances_format.glance_dir_label,
v_glances_format.glance_dir_code_v2,
v_glances_format.glance_dir_label_v2,
v_glances_format.glance_time_s_start,
v_glances_format.glance_time_s_end,
v_glances_format.glance_dur_s,
v_glances_format.glance_dur_s_dir_cum,
v_glances_format.glance_nr,
v_glances_format.glance_nr_dir

FROM 
t_adtf_p01_full
INNER JOIN v_glances_format ON 
	t_adtf_p01_full.subject_id =  v_glances_format.subject_id AND (
	t_adtf_p01_full.time_s 		 >= v_glances_format.glance_time_s_start AND
	t_adtf_p01_full.time_s 		 <  v_glances_format.glance_time_s_end)
	
ORDER BY
subject_id,
time_s