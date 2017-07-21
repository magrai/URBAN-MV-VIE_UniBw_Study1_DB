DROP VIEW IF EXISTS v_adtf_roundtimes CASCADE;
CREATE OR REPLACE VIEW v_adtf_roundtimes AS 

SELECT *
FROM 
-- Combine actual data with round data, but remove cases that will be NULL
-- NULL cases resulting quick and dirty 
(	SELECT
	t_adtf.rnr, 
	t_adtf.subject_id, 
	t_adtf.time_s, 
	CASE
		WHEN 
		t_adtf.time_s >= temp_roundtimes.starttime_s AND
		t_adtf.time_s <= temp_roundtimes.endtime_s
		THEN temp_roundtimes.round_id
	END AS round_id

	FROM 
	t_adtf,
	-- Create temporary table with minimum and maximum times in each round
	( SELECT
		subject_id,
		round_id,
		MIN(starttime_s) as starttime_s,
		MAX(endtime_s) as endtime_s

		FROM
		t_trigger_times

		GROUP BY 
		subject_id,
		round_id

		ORDER BY 
		subject_id,
		round_id,
		MIN(starttime_s)
	) temp_roundtimes

	WHERE 
	t_adtf.subject_id = temp_roundtimes.subject_id
) temp_fusewdata

WHERE 
round_id IS NOT NULL

--ORDER BY 
--rnr