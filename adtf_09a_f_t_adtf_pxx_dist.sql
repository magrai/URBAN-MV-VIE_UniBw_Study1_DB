CREATE OR REPLACE FUNCTION f_t_adtf_pxx_dist (pos_id INT DEFAULT NULL) 
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
	DROP TABLE IF EXISTS t_adtf_p' ||  pos_id_txt || '_dist CASCADE;
	CREATE TABLE t_adtf_p' ||  pos_id_txt || '_dist AS

	SELECT
	t_adtf_p' ||  pos_id_txt || '_dist_gps.row_nr,
	t_adtf_p' ||  pos_id_txt || '_dist_gps.subject_id,
	t_adtf_p' ||  pos_id_txt || '_dist_gps.round_id,
	t_adtf_p' ||  pos_id_txt || '_dist_gps.time_s,
	t_adtf_p' ||  pos_id_txt || '_dist_gps.dist_m,
	--
	t_adtf_p' ||  pos_id_txt || '_dist_gps.time_s - t_adtf_p' ||  pos_id_txt || '_dist_gps_min.time_s AS p' ||  pos_id_txt || '_dist_s,
	t_adtf_p' ||  pos_id_txt || '_dist_gps.dist_m - t_adtf_p' ||  pos_id_txt || '_dist_gps_min.dist_m AS p' ||  pos_id_txt || '_dist_m

	FROM
	t_adtf_p' ||  pos_id_txt || '_dist_gps
	LEFT JOIN
	t_adtf_p' ||  pos_id_txt || '_dist_gps_min ON
		t_adtf_p' ||  pos_id_txt || '_dist_gps.subject_id = t_adtf_p' ||  pos_id_txt || '_dist_gps_min.subject_id AND
		t_adtf_p' ||  pos_id_txt || '_dist_gps.round_id = t_adtf_p' ||  pos_id_txt || '_dist_gps_min.round_id
	
	-- ORDER BY
	-- t_adtf_p' ||  pos_id_txt || '_dist_gps.row_nr
	';
END $$;



