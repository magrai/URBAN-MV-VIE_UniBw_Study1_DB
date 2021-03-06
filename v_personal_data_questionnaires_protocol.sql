DROP VIEW IF EXISTS v_personal_data_questionnaires_procotol CASCADE;
CREATE VIEW v_personal_data_questionnaires_procotol AS

 SELECT t_personaldata.subid,
    t_personaldata.age,
    t_personaldata.gender,
    t_personaldata.education,
    t_q_demography.glasses,
    t_q_demography.licence,
    t_q_demography.drivingperweek,
    t_q_demography.km_year,
    t_q_demography.km_overall,
	CASE 
		WHEN t_q_demography.km_overall < 30000 THEN 'inexperienced'::VARCHAR
		WHEN t_q_demography.km_overall > 100000 AND t_q_demography.licence >= 6 THEN 'experienced'::VARCHAR 
		WHEN t_q_demography.km_overall IS NULL AND t_q_demography.licence < 6 THEN 'inexperienced'
    WHEN t_q_demography.km_year >= 4 THEN 'moderate'
		WHEN t_q_demography.km_overall IS NULL THEN 'unknown'
		ELSE 'moderate'
	END AS driving_exp,
    t_q_demography.vehicle_brand,
    t_q_demography.vehicle_hp,
    t_q_demography.vehicle_build,
    t_q_demography.vehicle_milage,
    t_q_demography.roadtype_country,
    t_q_demography.roadtype_motorway,
    t_q_demography.roadtype_city,
    t_q_demography.roadtype_town,
    t_q_demography.freq_automatic,
    t_q_demography.freq_tempomat,
    t_q_demography.freq_acc,
    t_q_demography.drivingstyle,
    t_q_vip.vip_duration,
    t_q_vip.vip_01,
    t_q_vip.vip_02,
    t_q_vip.vip_03,
    t_q_vip.vip_04,
    t_q_vip.vip_05,
    t_q_vip.vip_06,
    t_q_vip.vip_07,
    t_q_vip.vip_08,
    t_q_vip.vip_09,
    t_q_vip.vip_10,
    t_q_vip.vip_11,
    t_q_vip.vip_12,
    t_q_vip.vip_13,
    t_q_vip.vip_14,
    t_q_vip.vip_15,
    t_q_vip.vip_16,
    t_q_vip.vip_17,
    t_q_vip.vip_18,
    t_q_vip.vip_19,
    t_q_vip.vip_20,
    t_q_vip.vip_21,
    t_q_vip.vip_22,
    t_q_vip.vip_23,
    t_q_vip.vip_24,
    t_q_vip.vip_25,
    t_q_vip.vip_26,
    t_q_vip.vip_27,
    t_q_vip.vip_28,
    t_q_vip.vip_29,
    t_q_vip.vip_30,
    t_q_vip.vip_31,
    t_q_vip.vip_32,
    t_q_vip.vip_33,
    t_q_vip.vip_34,
    t_q_vip.vip_35,
    t_q_vip.vip_36,
    t_q_vip.vip_37,
    t_q_vip.vip_38,
    t_q_vip.vip_39,
    t_q_vip.vip_40,
    t_q_vip.vip_41,
    t_q_vip.vip_42,
    t_q_vip.vip_43,
    t_q_vip.vip_44,
    t_q_vip.vip_45,
    t_q_vip.vip_46,
    t_q_vip.vip_47,
    t_q_vip.vip_48,
    t_q_vip.vip_49,
    t_q_vip.vip_rw_us,
    t_q_vip.vip_rw_ai,
    t_q_vip.vip_rw_ea,
    t_q_vip.vip_rw_se,
    t_q_vip.vip_pr_us,
    t_q_vip.vip_pr_ai,
    t_q_vip.vip_pr_ea,
    t_q_vip.vip_pr_se,
    t_q_vip.vip_t_us,
    t_q_vip.vip_t_ai,
    t_q_vip.vip_t_ea,
    t_q_vip.vip_t_se,
    t_q_vip.vip_z_us,
    t_q_vip.vip_z_ai,
    t_q_vip.vip_z_ea,
    t_q_vip.vip_z_se,
    t_q_vip.vip_iq_us,
    t_q_vip.vip_iq_ai,
    t_q_vip.vip_iq_ea,
    t_q_vip.vip_iq_se,
    t_q_vip.vip_staw_us,
    t_q_vip.vip_staw_ai,
    t_q_vip.vip_staw_ea,
    t_q_vip.vip_staw_se,
    t_q_vip.vip_ste_us,
    t_q_vip.vip_ste_ai,
    t_q_vip.vip_ste_ea,
    t_q_vip.vip_ste_se,
    t_q_vip.vip_c11_us,
    t_q_vip.vip_c11_ai,
    t_q_vip.vip_s11_ea,
    t_q_vip.vip_c11_se,
    t_q_assessment_ext.ext_drivingstyle_start,
    t_q_assessment_ext.ext_drivingstyle_coverstory,
    t_q_assessment_ext.ext_change_drivingstyle,
    t_q_assessment_ext.ext_change_speed,
    t_q_assessment_ext.ext_change_acceleration,
    t_q_assessment_ext.ext_change_gap,
    t_q_assessment_ext.ext_change_curve,
    t_q_assessment_ext.ext_change_mirror_ext,
    t_q_assessment_ext.ext_change_mirror_int,
    t_q_assessment_ext.ext_change_shouldercheck,
    t_q_assessment_ext.ext_change_comment,
    t_q_assessment_int.int_change_drivingstyle,
    t_q_assessment_int.int_change_speed,
    t_q_assessment_int.int_change_acceleration,
    t_q_assessment_int.int_change_gap,
    t_q_assessment_int.int_change_curve,
    t_q_assessment_int.int_change_mirror_ext,
    t_q_assessment_int.int_change_mirror_int,
    t_q_assessment_int.int_change_shouldercheck,
		t_q_assessment_int.int_empathy,
    t_protocol.examiner,
    t_protocol.date,
    t_protocol.time_start,
    t_protocol.time_end,
    t_protocol.duration,
    t_protocol.temperature,
    t_protocol.sightdistance_start,
    t_protocol.sightdistance_trip,
    t_protocol.rain_start,
    t_protocol.rain_trip,
    t_protocol.roadway_start,
    t_protocol.roadway_trip
   FROM (((((t_personaldata
   JOIN t_q_demography ON ((t_personaldata.subid = t_q_demography.subid)))
   JOIN t_q_vip ON ((t_personaldata.subid = t_q_vip.subid)))
   JOIN t_q_assessment_ext ON ((t_personaldata.subid = t_q_assessment_ext.subid)))
   JOIN t_q_assessment_int ON ((t_personaldata.subid = t_q_assessment_int.subid)))
   JOIN t_protocol ON ((t_personaldata.subid = t_protocol.subid)))
  ORDER BY t_personaldata.subid;