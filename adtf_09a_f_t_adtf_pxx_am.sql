CREATE OR REPLACE FUNCTION f_t_adtf_pxx_am (pos_id INT DEFAULT NULL) 
RETURNS VOID
LANGUAGE plpgsql AS $$
----------------------------------------------------------------------
DECLARE pos_id_txt TEXT := LPAD(pos_id::text, 2, '0');
DECLARE helper_varname TEXT;
DECLARE helper_val INT;
----------------------------------------------------------------------
BEGIN
----------------------------------------------------------------------
	IF pos_id < 20 AND (pos_id <= 8 OR pos_id >= 12)
		THEN 
			RAISE NOTICE 'position_id < 20';
			helper_varname := 'round_helper1'; RAISE NOTICE 'helper1';
		ELSE 
			helper_varname := 'round_helper2'; RAISE NOTICE 'helper2';
	END IF;

	IF pos_id < 20 AND pos_id >= 12
		THEN
			RAISE NOTICE 's < 20';
			helper_val := 2; 
		ELSE 
			helper_val := 1;
	END IF;
----------------------------------------------------------------------
	IF pos_id > 20 AND (pos_id <= 28 OR pos_id >= 32) 
		THEN 
			RAISE NOTICE 'position_id > 20';
			helper_varname := 'round_helper1'; RAISE NOTICE 'helper1';
		ELSE 
			helper_varname := 'round_helper2'; RAISE NOTICE 'helper2';
	END IF;

	IF pos_id > 20 AND pos_id >= 32
		THEN 
			RAISE NOTICE 'position_id > 20';
			helper_val := 2;
		ELSE
			helper_val := 1;
	END IF;

----------------------------------------------------------------------

	EXECUTE '
	DROP TABLE IF EXISTS t_adtf_p' ||  pos_id_txt || '_am CASCADE;
	CREATE TABLE t_adtf_p' ||  pos_id_txt || '_am AS

	SELECT
	t_adtf_p' ||  pos_id_txt || '_gps_dist.row_nr,
	t_adtf_p' ||  pos_id_txt || '_gps_dist.subject_id,
	t_adtf_p' ||  pos_id_txt || '_gps_dist.round_id,
	--
	t_adtf_p' ||  pos_id_txt || '_gps_dist.time_s,
	t_adtf_p' ||  pos_id_txt || '_gps_dist.dist_m,
	--
	t_adtf_p' ||  pos_id_txt || '_gps_dist.time_s - t_adtf_p' ||  pos_id_txt || '_gps_dist_min.time_s AS p' ||  pos_id_txt || '_tti_s,
	t_adtf_p' ||  pos_id_txt || '_gps_dist.dist_m - t_adtf_p' ||  pos_id_txt || '_gps_dist_min.dist_m AS p' ||  pos_id_txt || '_dti_m

	FROM
	t_adtf_p' ||  pos_id_txt || '_gps_dist
	LEFT JOIN
	t_adtf_p' ||  pos_id_txt || '_gps_dist_min ON
		t_adtf_p' ||  pos_id_txt || '_gps_dist.subject_id = t_adtf_p' ||  pos_id_txt || '_gps_dist_min.subject_id AND
		t_adtf_p' ||  pos_id_txt || '_gps_dist.round_id = t_adtf_p' ||  pos_id_txt || '_gps_dist_min.round_id
	
	-- ORDER BY
	-- t_adtf_p' ||  pos_id_txt || '_gps_dist.row_nr
	';
END $$;



