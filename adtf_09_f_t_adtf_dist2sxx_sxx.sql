CREATE OR REPLACE FUNCTION f_t_adtf_dist2sxx_sxx (s INT DEFAULT NULL) 
RETURNS VOID
LANGUAGE plpgsql AS $$
----------------------------------------------------------------------
DECLARE s INT := s;
DECLARE s_txt TEXT := LPAD(s::text, 2, '0');
DECLARE helper_varname TEXT;
DECLARE helper_val INT;
----------------------------------------------------------------------
BEGIN
----------------------------------------------------------------------
	IF s < 20 AND (s <= 8 OR s >= 12)
		THEN 
			RAISE NOTICE 's < 20';
			helper_varname := 'round_helper1'; RAISE NOTICE 'helper1';
		ELSE 
			helper_varname := 'round_helper2'; RAISE NOTICE 'helper2';
	END IF;

	IF s < 20 AND s >= 12
		THEN
			RAISE NOTICE 's < 20';
			helper_val := 2; 
		ELSE 
			helper_val := 1;
	END IF;
----------------------------------------------------------------------
	IF s > 20 AND s <= 28 OR s >= 32 
		THEN 
			RAISE NOTICE 's > 20';
			helper_varname := 'round_helper1'; RAISE NOTICE 'helper1';
		ELSE 
			helper_varname := 'round_helper2'; RAISE NOTICE 'helper2';
	END IF;

	IF s > 20 AND s >= 32
		THEN 
			RAISE NOTICE 's > 20';
			helper_val := 2;
		ELSE
			helper_val := 1;
	END IF;

----------------------------------------------------------------------

	EXECUTE '
	DROP TABLE IF EXISTS t_adtf_dist2sxx_s' ||  s_txt || ' CASCADE;
	CREATE TABLE t_adtf_dist2sxx_s' ||  s_txt || ' AS

	SELECT
	t_adtf_dist2gpsref_s' ||  s_txt || '.rnr,
	t_adtf_dist2gpsref_s' ||  s_txt || '.subject_id,
	t_adtf_dist2gpsref_s' ||  s_txt || '.round_id,
	t_adtf_dist2gpsref_s' ||  s_txt || '.time_s,
	t_adtf_dist2gpsref_s' ||  s_txt || '.dist_m,
	--
	t_adtf_dist2gpsref_s' ||  s_txt || '.time_s - temp_sxx.time_s_min AS s' ||  s_txt || '_dist_s,
	t_adtf_dist2gpsref_s' ||  s_txt || '.dist_m - temp_sxx.dist_m_min AS s' ||  s_txt || '_dist_m

	FROM
	t_adtf_dist2gpsref_s' ||  s_txt || ',
	--
	( SELECT
		t_adtf_dist2gpsref_s' ||  s_txt || '.subject_id,
		t_adtf_dist2gpsref_s' ||  s_txt || '.round_id,
		MIN(t_adtf_dist2gpsref_s' ||  s_txt || '.time_s) AS time_s_min,
		MIN(t_adtf_dist2gpsref_s' ||  s_txt || '.dist_m) AS dist_m_min

		FROM
		t_adtf_dist2gpsref_s' ||  s_txt || ' LEFT JOIN t_adtf_dist2gpsref_min ON 
			t_adtf_dist2gpsref_s' ||  s_txt || '.subject_id = t_adtf_dist2gpsref_min.subject_id AND
			t_adtf_dist2gpsref_s' ||  s_txt || '.round_id = t_adtf_dist2gpsref_min.round_id

		WHERE '
		|| helper_varname || ' = ' || helper_val || ' AND
		s' ||  s_txt || '_gps_dist_m = s' ||  s_txt || '_gps_dist_m_min

		GROUP BY
		t_adtf_dist2gpsref_s' ||  s_txt || '.subject_id,
		t_adtf_dist2gpsref_s' ||  s_txt || '.round_id
	) temp_sxx

	WHERE 
	t_adtf_dist2gpsref_s' ||  s_txt || '.subject_id = temp_sxx.subject_id AND 
	t_adtf_dist2gpsref_s' ||  s_txt || '.round_id = temp_sxx.round_id
	';
END $$;



