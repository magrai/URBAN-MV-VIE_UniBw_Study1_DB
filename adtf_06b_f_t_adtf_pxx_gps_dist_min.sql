-- Find minimum gps distance
--------------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION f_t_adtf_pxx_gps_dist_min (pos_id INT DEFAULT NULL) 
RETURNS VOID
LANGUAGE plpgsql AS $$
--------------------------------------------------------------------------------
DECLARE colexist INT;
DECLARE pos_id_txt TEXT := LPAD(pos_id::text, 2, '0');
DECLARE helper_varname TEXT;
DECLARE helper_val INT;
--------------------------------------------------------------------------------
BEGIN
RAISE INFO 
'

==================================================
Processing f_t_adtf_pxx_gps_dist_min
GPS reference position %
==================================================

', pos_id;
--------------------------------------------------------------------------------
-- Set values for round identification workaround
-- IF pos_id < 9 OR pos_id > 11
-- Set values for round identification workaround
-- IF pos_id < 9 OR pos_id > 11
-- IF pos_id < 20 AND (pos_id <= 8 OR pos_id >= 12)
IF (pos_id <= 8)
	THEN 
		helper_varname := 'round_helper1'; 
		helper_val := 1;
		RAISE NOTICE 'helper1';
		RAISE NOTICE 'helper_val = 1';
	ELSE
	-- Do nothing
END IF;
		
IF (pos_id >= 12 AND pos_id <= 18) OR (pos_id >= 22 AND pos_id <> 99)
	THEN
		helper_varname := 'round_helper1'; 
		helper_val := 2;
		RAISE NOTICE 'helper1';
		RAISE NOTICE 'helper_val = 2';
	ELSE 
	-- Do nothing
END IF;

IF (pos_id >= 9 AND pos_id <= 11) OR pos_id = 99
	THEN
		helper_varname := 'round_helper2'; 
		helper_val := 1;
		RAISE NOTICE 'helper2';
		RAISE NOTICE 'helper_val = 1';
	ELSE 
	-- Do nothing
END IF;


-- 		IF (pos_id > 8 OR pos_id < 12) OR pos_id = 99
-- 			THEN
-- 				helper_varname := 'round_helper2'; 
-- 				helper_val := 1;
-- 				RAISE NOTICE 'helper2';
-- 				RAISE NOTICE 'helper_val = 1';
-- 		ELSE
-- 				helper_varname := 'round_helper1'; 
-- 				helper_val := 2;
-- 				RAISE NOTICE 'helper1';
-- 				RAISE NOTICE 'helper_val = 2';
-- 		END IF;
-- END IF;

-- IF  pos_id < 20 AND pos_id >= 12 
-- 	THEN 
-- 		helper_val := 2; 
-- 		RAISE NOTICE 'helper_val2';
-- 	ELSE 
-- 		helper_val := 1; 
-- 		RAISE NOTICE 'helper_val1';
--  END IF;

--  IF (pos_id > 20 AND pos_id <= 28) OR pos_id >= 32
-- pos_id must be greater than 20, but only between 20:28 or 32:x
-- ... but not between 29:31
--  	THEN 
--  		helper_varname := 'round_helper1'; 
--  		RAISE NOTICE 'helper1';
--  	ELSE 
--  		helper_varname := 'round_helper2'; 
--  		RAISE NOTICE 'helper2';
--  END IF;

--  IF pos_id > 20 AND pos_id >= 32
--  	THEN 
--  		helper_val := 2; 
--  		RAISE NOTICE 'helper_val2';
--  	ELSE 
--  		helper_val := 1; 
--  		RAISE NOTICE 'helper_val1';
--  END IF;


--------------------------------------------------------------------------------
EXECUTE '
--------------------------------------------------------------------------------
DROP TABLE IF EXISTS t_adtf_p' || pos_id_txt || '_gps_dist_min CASCADE;
CREATE TABLE t_adtf_p' || pos_id_txt || '_gps_dist_min AS
--------------------------------------------------------------------------------
SELECT
t_adtf_p' || pos_id_txt || '_gps_dist.subject_id,
t_adtf_p' || pos_id_txt || '_gps_dist.round_nr,
MIN(t_adtf_p' || pos_id_txt || '_gps_dist.row_nr) AS row_nr,
MIN(t_adtf_p' || pos_id_txt || '_gps_dist.time_s) AS time_s,
MIN(t_adtf_p' || pos_id_txt || '_gps_dist.dist_m) AS dist_m,
p' || pos_id_txt || '_gps_dist_m_min

FROM
t_adtf_p' || pos_id_txt || '_gps_dist,
(
	SELECT 
	subject_id, 
	round_nr,
	MIN(p' || pos_id_txt || '_gps_dist_m) AS p' || pos_id_txt || '_gps_dist_m_min

	FROM 
	t_adtf_p' || pos_id_txt || '_gps_dist

	WHERE 
' || helper_varname || ' = ' || helper_val || ' 

	GROUP BY 
	subject_id, 
	round_nr	
) temp

WHERE 
t_adtf_p' || pos_id_txt || '_gps_dist.p' || pos_id_txt || '_gps_dist_m = temp.p' || pos_id_txt || '_gps_dist_m_min AND
t_adtf_p' || pos_id_txt || '_gps_dist.subject_id = temp.subject_id AND
t_adtf_p' || pos_id_txt || '_gps_dist.round_nr = temp.round_nr

GROUP BY
t_adtf_p' || pos_id_txt || '_gps_dist.subject_id,
t_adtf_p' || pos_id_txt || '_gps_dist.round_nr,
temp.p' || pos_id_txt || '_gps_dist_m_min

ORDER BY
t_adtf_p' || pos_id_txt || '_gps_dist.subject_id, 
t_adtf_p' || pos_id_txt || '_gps_dist.round_nr	
';
--------------------------------------------------------------------------------
END $$;
	
	
