CREATE OR REPLACE FUNCTION f_t_adtf_pxx_am_aggr_dti_rnd1 (pos_id INT DEFAULT NULL) 
RETURNS VOID
LANGUAGE plpgsql AS $$

DECLARE pos_id_txt TEXT = LPAD(pos_id::text, 2, '0');

BEGIN
EXECUTE '

	DROP TABLE IF EXISTS t_adtf_p' ||  pos_id_txt || '_am_dti_rnd1 CASCADE;
	CREATE TABLE t_adtf_p' ||  pos_id_txt || '_am_dti_rnd1 AS

	SELECT 
	MIN(row_nr) as row_nr,
	subject_id,
	round_nr,
	MIN(t_adtf_p' || pos_id_txt || '_am.time_s) AS time_s,
	MIN(t_adtf_p' || pos_id_txt || '_am.dist_m) AS dist_m,
	MIN(p' || pos_id_txt || '_tti_s) as p' || pos_id_txt || '_tti_s,
	round(p' || pos_id_txt || '_dti_m, 1) as p' || pos_id_txt || '_dti_m_rnd1

	FROM
	t_adtf_p' || pos_id_txt || '_am
	
	WHERE 
	p' || pos_id_txt || '_dti_m >= -200 AND 
	p' || pos_id_txt || '_dti_m <= 100

	GROUP BY
	subject_id,
	round_nr,
	round(p' || pos_id_txt || '_dti_m, 1)
	
	ORDER BY
	row_nr

';
END $$;