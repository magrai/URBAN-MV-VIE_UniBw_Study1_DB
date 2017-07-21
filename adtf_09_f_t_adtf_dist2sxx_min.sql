CREATE OR REPLACE FUNCTION f_t_adtf_dist2sxx_min (s INT DEFAULT NULL) 
RETURNS VOID
LANGUAGE plpgsql AS $$
--------------------------------------------------------------------------------
DECLARE colexist INT;
DECLARE s INT := s;
DECLARE s_txt TEXT := LPAD(s::text, 2, '0');
DECLARE helper_varname TEXT;
DECLARE helper_val INT;
--------------------------------------------------------------------------------
BEGIN
--------------------------------------------------------------------------------
	-- Create table if not exists
	IF NOT EXISTS (
		SELECT 1 FROM pg_catalog.pg_tables 
		WHERE 
		schemaname = 'public' AND 
		tablename  = 't_adtf_dist2sxx_min'
	) THEN
			CREATE TABLE t_adtf_dist2sxx_min (
				subject_id INT,
				round_id INT);
			INSERT INTO t_adtf_dist2sxx_min (subject_id, round_id)
				SELECT DISTINCT subject_id, round_id
				FROM t_adtf_dist2gpsref_min;
	END IF;
--------------------------------------------------------------------------------
	-- Set values for round identification workaround
	IF s < 9 OR s > 11 
		THEN helper_varname := 'round_helper1'; RAISE NOTICE 'helper1';
		ELSE helper_varname := 'round_helper2'; RAISE NOTICE 'helper2';
	END IF;
	IF s >= 12
		THEN helper_val := 2; RAISE NOTICE 'helper_val1';
		ELSE helper_val := 1; RAISE NOTICE 'helper_val1';
	END IF;
--------------------------------------------------------------------------------
	EXECUTE '
	SELECT (
		SELECT 1 
		FROM 
		information_schema.columns 
		WHERE 
		table_schema=''public'' AND 
		table_name = ''t_adtf_dist2sxx_min'' AND 
		column_name = ''s' || s_txt || '_time_s_min'')' 
	INTO colexist;
--------------------------------------------------------------------------------	
	IF colexist IS NOT NULL
	THEN 
		RAISE NOTICE 'COLUMN ALREADY EXISTS';
	ELSE 
		RAISE NOTICE 'COLUMN DOES NOT EXIST';
		EXECUTE '
		ALTER TABLE t_adtf_dist2sxx_min 
		ADD COLUMN s' || s_txt || '_time_s_min NUMERIC,
		ADD COLUMN s' || s_txt || '_dist_m_min NUMERIC;
		';	
	END IF;
--------------------------------------------------------------------------------
	EXECUTE '
	UPDATE t_adtf_dist2sxx_min
--------------------------------------------------------------------------------
	SET 
	--s' || s_txt || '_time_s_min = MIN(sxx.time_s_min),
	--s' || s_txt || '_dist_m_min = MIN(sxx.dist_m_min)
	s' || s_txt || '_time_s_min = temp_sxx.time_s_min,
	s' || s_txt || '_dist_m_min = temp_sxx.dist_m_min
--------------------------------------------------------------------------------
	FROM
	( SELECT
		t_adtf_dist2gpsref_s' || s_txt || '.subject_id,
		t_adtf_dist2gpsref_s' || s_txt || '.round_id,
		MIN(t_adtf_dist2gpsref_s' || s_txt || '.time_s) AS time_s_min,
		MIN(t_adtf_dist2gpsref_s' || s_txt || '.dist_m) AS dist_m_min
--------------------------------------------------------------------------------
		FROM
		t_adtf_dist2gpsref_s' ||  s_txt || ',
		t_adtf_dist2gpsref_min
--------------------------------------------------------------------------------
		WHERE '
		|| helper_varname || ' = ' || helper_val || ' AND
		s' || s_txt || '_gps_dist_m = s' || s_txt || '_gps_dist_m_min AND
		t_adtf_dist2gpsref_s' || s_txt || '.rnr >= t_adtf_dist2gpsref_min.rnr_min AND
		t_adtf_dist2gpsref_s' || s_txt || '.rnr <= t_adtf_dist2gpsref_min.rnr_max
--------------------------------------------------------------------------------
		GROUP BY
		t_adtf_dist2gpsref_s' || s_txt || '.subject_id,
		t_adtf_dist2gpsref_s' || s_txt || '.round_id
	 ) temp_sxx	
--------------------------------------------------------------------------------
	WHERE 
	t_adtf_dist2sxx_min.subject_id = temp_sxx.subject_id AND 
	t_adtf_dist2sxx_min.round_id = temp_sxx.round_id
	';
END $$;



