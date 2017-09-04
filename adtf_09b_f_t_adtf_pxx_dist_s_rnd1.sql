CREATE OR REPLACE FUNCTION f_t_adtf_pxx_dist_s_rnd1 (pos_id INT DEFAULT NULL) 
RETURNS VOID
LANGUAGE plpgsql AS $$

DECLARE pos_id_txt TEXT = LPAD(pos_id::text, 2, '0');

BEGIN
EXECUTE '

	DROP TABLE IF EXISTS t_adtf_p' ||  pos_id_txt || '_dist_s_rnd1 CASCADE;
	CREATE TABLE t_adtf_p' ||  pos_id_txt || '_dist_s_rnd1 AS

	SELECT 
	MIN(row_nr) as row_nr,
	subject_id,
	round_id,
	round(p' || pos_id_txt || '_dist_s, 1) as p' || pos_id_txt || '_dist_s_rnd1,
	MIN(p' || pos_id_txt || '_dist_m) as p' || pos_id_txt || '_dist_m
	
	FROM
	t_adtf_p' || pos_id_txt || '_dist
	
	WHERE 
	p' || pos_id_txt || '_dist_m >= -200 AND 
	p' || pos_id_txt || '_dist_m <= 50

	GROUP BY
	subject_id,
	round_id,
	round(p' || pos_id_txt || '_dist_s, 1)

';
END $$;