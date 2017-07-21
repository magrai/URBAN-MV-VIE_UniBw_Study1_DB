CREATE OR REPLACE FUNCTION f_t_adtf_dist2sxx_dist_s_rnd1 (s INT DEFAULT NULL) 
RETURNS VOID
LANGUAGE plpgsql AS $$

DECLARE s_txt TEXT = LPAD(s::text, 2, '0');

BEGIN
EXECUTE '

	DROP TABLE IF EXISTS t_adtf_dist2sxx_s' ||  s_txt || '_dist_s_rnd1 CASCADE;
	CREATE TABLE t_adtf_dist2sxx_s' ||  s_txt || '_dist_s_rnd1 AS

	SELECT 
	MIN(rnr) as rnr,
	subject_id,
	round_id,
	round(s' || s_txt || '_dist_s, 1) as s' || s_txt || '_dist_s_rnd1,
	MIN(s' || s_txt || '_dist_m) as s' || s_txt || '_dist_m
	
	FROM
	t_adtf_dist2sxx_s' || s_txt || '
	--t_adtf_dist2s' || s_txt || '
	
	WHERE 
	--s' || s_txt || '_dist_s >= -15 AND 
	--s' || s_txt || '_dist_s <= 5
	s' || s_txt || '_dist_m >= -200 AND 
	s' || s_txt || '_dist_m <= 50

	GROUP BY
	subject_id,
	round_id,
	round(s' || s_txt || '_dist_s, 1)

';
END $$;