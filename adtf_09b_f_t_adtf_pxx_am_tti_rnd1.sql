CREATE OR REPLACE FUNCTION f_t_adtf_pxx_am_tti_rnd1 (pos_id INT DEFAULT NULL) 
RETURNS VOID
LANGUAGE plpgsql AS $$

DECLARE pos_id_txt TEXT = LPAD(pos_id::text, 2, '0');

BEGIN
EXECUTE '

	DROP TABLE IF EXISTS t_adtf_p' ||  pos_id_txt || '_am_tti_rnd1 CASCADE;
	CREATE TABLE t_adtf_p' ||  pos_id_txt || '_am_tti_rnd1 AS

	SELECT 
	MIN(row_nr) as row_nr,
	subject_id,
	round_id,
	MIN(t_adtf_p' || pos_id_txt || '_am.time_s) AS time_s,
	MIN(t_adtf_p' || pos_id_txt || '_am.dist_m) AS dist_m,
	round(p' || pos_id_txt || '_tti_s, 1) as p' || pos_id_txt || '_tti_s_rnd1,
	MIN(p' || pos_id_txt || '_dti_m) as p' || pos_id_txt || '_dti_m
	
	FROM
	t_adtf_p' || pos_id_txt || '_am
	
	WHERE 
	p' || pos_id_txt || '_dti_m >= -200 AND 
	p' || pos_id_txt || '_dti_m <= 100

	GROUP BY
	subject_id,
	round_id,
	round(p' || pos_id_txt || '_tti_s, 1)
	
	ORDER BY
	row_nr

';
END $$;