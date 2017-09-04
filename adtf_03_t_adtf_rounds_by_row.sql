DROP TABLE IF EXISTS t_adtf_rounds_by_row CASCADE;
CREATE TABLE t_adtf_rounds_by_row AS 
--------------------------------------------------------------------------------
SELECT
t_adtf_formatted.row_nr, 
t_adtf_formatted.subject_id, 
t_adtf_formatted.time_s, 
t_adtf_rounds_summary.round_id,
CASE 
	WHEN t_adtf_rounds_summary.round_id = 1 THEN 'intro'
	WHEN t_adtf_rounds_summary.round_id = t_conditions.round_normal THEN 'normal'
	WHEN t_adtf_rounds_summary.round_id = t_conditions.round_stress THEN 'stress'
END AS round_txt
--------------------------------------------------------------------------------
FROM 
t_adtf_formatted
LEFT JOIN 
	t_conditions ON 
	t_adtf_formatted.subject_id = t_conditions.subject_id,
t_adtf_rounds_summary


--------------------------------------------------------------------------------
WHERE 
t_adtf_formatted.subject_id = t_adtf_rounds_summary.subject_id AND 
t_adtf_formatted.time_s >= t_adtf_rounds_summary.time_s_round_start AND
t_adtf_formatted.time_s <= t_adtf_rounds_summary.time_s_round_end AND  
round_id IS NOT NULL