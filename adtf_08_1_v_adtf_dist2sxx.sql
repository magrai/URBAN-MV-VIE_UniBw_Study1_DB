DROP VIEW IF EXISTS v_adtf_dist2sxx CASCADE;
CREATE OR REPLACE VIEW v_adtf_dist2sxx AS

SELECT
t_adtf_dist2gpsref.rnr,
t_adtf_dist2gpsref.subject_id,
t_adtf_dist2gpsref.round_id,
t_adtf_dist2gpsref.time_s,
t_adtf_dist2gpsref.dist_m,
--
t_adtf_dist2gpsref.time_s - s01.time_s_min AS s01_dist_s,
t_adtf_dist2gpsref.time_s - s02.time_s_min AS s02_dist_s,
t_adtf_dist2gpsref.time_s - s03.time_s_min AS s03_dist_s,
t_adtf_dist2gpsref.time_s - s04.time_s_min AS s04_dist_s,
t_adtf_dist2gpsref.time_s - s05.time_s_min AS s05_dist_s,
t_adtf_dist2gpsref.time_s - s06.time_s_min AS s06_dist_s,
t_adtf_dist2gpsref.time_s - s07.time_s_min AS s07_dist_s,
t_adtf_dist2gpsref.time_s - s08.time_s_min AS s08_dist_s,
t_adtf_dist2gpsref.time_s - s09.time_s_min AS s09_dist_s,
t_adtf_dist2gpsref.time_s - s10.time_s_min AS s10_dist_s,
t_adtf_dist2gpsref.time_s - s11.time_s_min AS s11_dist_s,
t_adtf_dist2gpsref.time_s - s12.time_s_min AS s12_dist_s,
t_adtf_dist2gpsref.time_s - s13.time_s_min AS s13_dist_s,
t_adtf_dist2gpsref.time_s - s14.time_s_min AS s14_dist_s,
t_adtf_dist2gpsref.time_s - s15.time_s_min AS s15_dist_s,
t_adtf_dist2gpsref.time_s - s16.time_s_min AS s16_dist_s,
t_adtf_dist2gpsref.time_s - s17.time_s_min AS s17_dist_s,
t_adtf_dist2gpsref.time_s - s18.time_s_min AS s18_dist_s,
t_adtf_dist2gpsref.time_s - s99.time_s_min AS s99_dist_s,
--
t_adtf_dist2gpsref.dist_m - s01.dist_m_min AS s01_dist_m,
t_adtf_dist2gpsref.dist_m - s02.dist_m_min AS s02_dist_m,
t_adtf_dist2gpsref.dist_m - s03.dist_m_min AS s03_dist_m,
t_adtf_dist2gpsref.dist_m - s04.dist_m_min AS s04_dist_m,
t_adtf_dist2gpsref.dist_m - s05.dist_m_min AS s05_dist_m,
t_adtf_dist2gpsref.dist_m - s06.dist_m_min AS s06_dist_m,
t_adtf_dist2gpsref.dist_m - s07.dist_m_min AS s07_dist_m,
t_adtf_dist2gpsref.dist_m - s08.dist_m_min AS s08_dist_m,
t_adtf_dist2gpsref.dist_m - s09.dist_m_min AS s09_dist_m,
t_adtf_dist2gpsref.dist_m - s10.dist_m_min AS s10_dist_m,
t_adtf_dist2gpsref.dist_m - s11.dist_m_min AS s11_dist_m,
t_adtf_dist2gpsref.dist_m - s12.dist_m_min AS s12_dist_m,
t_adtf_dist2gpsref.dist_m - s13.dist_m_min AS s13_dist_m,
t_adtf_dist2gpsref.dist_m - s14.dist_m_min AS s14_dist_m,
t_adtf_dist2gpsref.dist_m - s15.dist_m_min AS s15_dist_m,
t_adtf_dist2gpsref.dist_m - s16.dist_m_min AS s16_dist_m,
t_adtf_dist2gpsref.dist_m - s17.dist_m_min AS s17_dist_m,
t_adtf_dist2gpsref.dist_m - s18.dist_m_min AS s18_dist_m,
t_adtf_dist2gpsref.dist_m - s99.dist_m_min AS s99_dist_m

FROM
t_adtf_dist2gpsref,
--------------------------------------------------------------------------------
( SELECT
	t_adtf_dist2gpsref.subject_id,
	t_adtf_dist2gpsref.round_id,
	MIN(t_adtf_dist2gpsref.time_s) AS time_s_min,
	MIN(t_adtf_dist2gpsref.dist_m) AS dist_m_min

	FROM
	t_adtf_dist2gpsref LEFT JOIN v_adtf_dist2gpsref_min ON 
		t_adtf_dist2gpsref.subject_id = v_adtf_dist2gpsref_min.subject_id AND
		t_adtf_dist2gpsref.round_id = v_adtf_dist2gpsref_min.round_id

	WHERE
	round_helper1 = 1 AND
	s01_gps_dist_m = s01_gps_dist_m_min

	GROUP BY
	t_adtf_dist2gpsref.subject_id,
	t_adtf_dist2gpsref.round_id
) s01,
--------------------------------------------------------------------------------
( SELECT
	t_adtf_dist2gpsref.subject_id,
	t_adtf_dist2gpsref.round_id,
	MIN(t_adtf_dist2gpsref.time_s) AS time_s_min,
	MIN(t_adtf_dist2gpsref.dist_m) AS dist_m_min

	FROM
	t_adtf_dist2gpsref LEFT JOIN v_adtf_dist2gpsref_min ON 
		t_adtf_dist2gpsref.subject_id = v_adtf_dist2gpsref_min.subject_id AND
		t_adtf_dist2gpsref.round_id = v_adtf_dist2gpsref_min.round_id

	WHERE
	round_helper1 = 1 AND
	s02_gps_dist_m = s02_gps_dist_m_min

	GROUP BY
	t_adtf_dist2gpsref.subject_id,
	t_adtf_dist2gpsref.round_id
) s02,
--------------------------------------------------------------------------------
( SELECT
	t_adtf_dist2gpsref.subject_id,
	t_adtf_dist2gpsref.round_id,
	MIN(t_adtf_dist2gpsref.time_s) AS time_s_min,
	MIN(t_adtf_dist2gpsref.dist_m) AS dist_m_min

	FROM
	t_adtf_dist2gpsref LEFT JOIN v_adtf_dist2gpsref_min ON 
		t_adtf_dist2gpsref.subject_id = v_adtf_dist2gpsref_min.subject_id AND
		t_adtf_dist2gpsref.round_id = v_adtf_dist2gpsref_min.round_id

	WHERE
	round_helper1 = 1 AND
	s03_gps_dist_m = s03_gps_dist_m_min

	GROUP BY
	t_adtf_dist2gpsref.subject_id,
	t_adtf_dist2gpsref.round_id
) s03,
--------------------------------------------------------------------------------
( SELECT
	t_adtf_dist2gpsref.subject_id,
	t_adtf_dist2gpsref.round_id,
	MIN(t_adtf_dist2gpsref.time_s) AS time_s_min,
	MIN(t_adtf_dist2gpsref.dist_m) AS dist_m_min

	FROM
	t_adtf_dist2gpsref LEFT JOIN v_adtf_dist2gpsref_min ON 
		t_adtf_dist2gpsref.subject_id = v_adtf_dist2gpsref_min.subject_id AND
		t_adtf_dist2gpsref.round_id = v_adtf_dist2gpsref_min.round_id

	WHERE
	round_helper1 = 1 AND
	s04_gps_dist_m = s04_gps_dist_m_min

	GROUP BY
	t_adtf_dist2gpsref.subject_id,
	t_adtf_dist2gpsref.round_id
) s04,
--------------------------------------------------------------------------------
( SELECT
	t_adtf_dist2gpsref.subject_id,
	t_adtf_dist2gpsref.round_id,
	MIN(t_adtf_dist2gpsref.time_s) AS time_s_min,
	MIN(t_adtf_dist2gpsref.dist_m) AS dist_m_min

	FROM
	t_adtf_dist2gpsref LEFT JOIN v_adtf_dist2gpsref_min ON 
		t_adtf_dist2gpsref.subject_id = v_adtf_dist2gpsref_min.subject_id AND
		t_adtf_dist2gpsref.round_id = v_adtf_dist2gpsref_min.round_id

	WHERE
	round_helper1 = 1 AND
	s05_gps_dist_m = s05_gps_dist_m_min

	GROUP BY
	t_adtf_dist2gpsref.subject_id,
	t_adtf_dist2gpsref.round_id
) s05,
--------------------------------------------------------------------------------
( SELECT
	t_adtf_dist2gpsref.subject_id,
	t_adtf_dist2gpsref.round_id,
	MIN(t_adtf_dist2gpsref.time_s) AS time_s_min,
	MIN(t_adtf_dist2gpsref.dist_m) AS dist_m_min

	FROM
	t_adtf_dist2gpsref LEFT JOIN v_adtf_dist2gpsref_min ON 
		t_adtf_dist2gpsref.subject_id = v_adtf_dist2gpsref_min.subject_id AND
		t_adtf_dist2gpsref.round_id = v_adtf_dist2gpsref_min.round_id

	WHERE
	round_helper1 = 1 AND
	s06_gps_dist_m = s06_gps_dist_m_min

	GROUP BY
	t_adtf_dist2gpsref.subject_id,
	t_adtf_dist2gpsref.round_id
) s06,
--------------------------------------------------------------------------------
( SELECT
	t_adtf_dist2gpsref.subject_id,
	t_adtf_dist2gpsref.round_id,
	MIN(t_adtf_dist2gpsref.time_s) AS time_s_min,
	MIN(t_adtf_dist2gpsref.dist_m) AS dist_m_min

	FROM
	t_adtf_dist2gpsref LEFT JOIN v_adtf_dist2gpsref_min ON 
		t_adtf_dist2gpsref.subject_id = v_adtf_dist2gpsref_min.subject_id AND
		t_adtf_dist2gpsref.round_id = v_adtf_dist2gpsref_min.round_id

	WHERE
	round_helper1 = 1 AND
	s07_gps_dist_m = s07_gps_dist_m_min

	GROUP BY
	t_adtf_dist2gpsref.subject_id,
	t_adtf_dist2gpsref.round_id
) s07,
--------------------------------------------------------------------------------
( SELECT
	t_adtf_dist2gpsref.subject_id,
	t_adtf_dist2gpsref.round_id,
	MIN(t_adtf_dist2gpsref.time_s) AS time_s_min,
	MIN(t_adtf_dist2gpsref.dist_m) AS dist_m_min

	FROM
	t_adtf_dist2gpsref LEFT JOIN v_adtf_dist2gpsref_min ON 
		t_adtf_dist2gpsref.subject_id = v_adtf_dist2gpsref_min.subject_id AND
		t_adtf_dist2gpsref.round_id = v_adtf_dist2gpsref_min.round_id

	WHERE
	round_helper1 = 1 AND
	s08_gps_dist_m = s08_gps_dist_m_min

	GROUP BY
	t_adtf_dist2gpsref.subject_id,
	t_adtf_dist2gpsref.round_id
) s08,
--------------------------------------------------------------------------------
( SELECT
	t_adtf_dist2gpsref.subject_id,
	t_adtf_dist2gpsref.round_id,
	MIN(t_adtf_dist2gpsref.time_s) AS time_s_min,
	MIN(t_adtf_dist2gpsref.dist_m) AS dist_m_min

	FROM
	t_adtf_dist2gpsref LEFT JOIN v_adtf_dist2gpsref_min ON 
		t_adtf_dist2gpsref.subject_id = v_adtf_dist2gpsref_min.subject_id AND
		t_adtf_dist2gpsref.round_id = v_adtf_dist2gpsref_min.round_id

	WHERE
	round_helper2 = 1 AND
	s09_gps_dist_m = s09_gps_dist_m_min

	GROUP BY
	t_adtf_dist2gpsref.subject_id,
	t_adtf_dist2gpsref.round_id
) s09,
--------------------------------------------------------------------------------
( SELECT
	t_adtf_dist2gpsref.subject_id,
	t_adtf_dist2gpsref.round_id,
	MIN(t_adtf_dist2gpsref.time_s) AS time_s_min,
	MIN(t_adtf_dist2gpsref.dist_m) AS dist_m_min

	FROM
	t_adtf_dist2gpsref LEFT JOIN v_adtf_dist2gpsref_min ON 
		t_adtf_dist2gpsref.subject_id = v_adtf_dist2gpsref_min.subject_id AND
		t_adtf_dist2gpsref.round_id = v_adtf_dist2gpsref_min.round_id

	WHERE
	round_helper2 = 1 AND
	s10_gps_dist_m = s10_gps_dist_m_min

	GROUP BY
	t_adtf_dist2gpsref.subject_id,
	t_adtf_dist2gpsref.round_id
) s10,
--------------------------------------------------------------------------------
( SELECT
	t_adtf_dist2gpsref.subject_id,
	t_adtf_dist2gpsref.round_id,
	MIN(t_adtf_dist2gpsref.time_s) AS time_s_min,
	MIN(t_adtf_dist2gpsref.dist_m) AS dist_m_min

	FROM
	t_adtf_dist2gpsref LEFT JOIN v_adtf_dist2gpsref_min ON 
		t_adtf_dist2gpsref.subject_id = v_adtf_dist2gpsref_min.subject_id AND
		t_adtf_dist2gpsref.round_id = v_adtf_dist2gpsref_min.round_id

	WHERE
	round_helper2 = 1 AND
	s11_gps_dist_m = s11_gps_dist_m_min

	GROUP BY
	t_adtf_dist2gpsref.subject_id,
	t_adtf_dist2gpsref.round_id
) s11,
--------------------------------------------------------------------------------
( SELECT
	t_adtf_dist2gpsref.subject_id,
	t_adtf_dist2gpsref.round_id,
	MIN(t_adtf_dist2gpsref.time_s) AS time_s_min,
	MIN(t_adtf_dist2gpsref.dist_m) AS dist_m_min

	FROM
	t_adtf_dist2gpsref LEFT JOIN v_adtf_dist2gpsref_min ON 
		t_adtf_dist2gpsref.subject_id = v_adtf_dist2gpsref_min.subject_id AND
		t_adtf_dist2gpsref.round_id = v_adtf_dist2gpsref_min.round_id

	WHERE
	round_helper1 = 2 AND
	s12_gps_dist_m = s12_gps_dist_m_min

	GROUP BY
	t_adtf_dist2gpsref.subject_id,
	t_adtf_dist2gpsref.round_id
) s12,
--------------------------------------------------------------------------------
( SELECT
	t_adtf_dist2gpsref.subject_id,
	t_adtf_dist2gpsref.round_id,
	MIN(t_adtf_dist2gpsref.time_s) AS time_s_min,
	MIN(t_adtf_dist2gpsref.dist_m) AS dist_m_min

	FROM
	t_adtf_dist2gpsref LEFT JOIN v_adtf_dist2gpsref_min ON 
		t_adtf_dist2gpsref.subject_id = v_adtf_dist2gpsref_min.subject_id AND
		t_adtf_dist2gpsref.round_id = v_adtf_dist2gpsref_min.round_id

	WHERE
	round_helper1 = 2 AND
	s13_gps_dist_m = s13_gps_dist_m_min

	GROUP BY
	t_adtf_dist2gpsref.subject_id,
	t_adtf_dist2gpsref.round_id
) s13,
--------------------------------------------------------------------------------
( SELECT
	t_adtf_dist2gpsref.subject_id,
	t_adtf_dist2gpsref.round_id,
	MIN(t_adtf_dist2gpsref.time_s) AS time_s_min,
	MIN(t_adtf_dist2gpsref.dist_m) AS dist_m_min

	FROM
	t_adtf_dist2gpsref LEFT JOIN v_adtf_dist2gpsref_min ON 
		t_adtf_dist2gpsref.subject_id = v_adtf_dist2gpsref_min.subject_id AND
		t_adtf_dist2gpsref.round_id = v_adtf_dist2gpsref_min.round_id

	WHERE
	round_helper1 = 2 AND
	s14_gps_dist_m = s14_gps_dist_m_min

	GROUP BY
	t_adtf_dist2gpsref.subject_id,
	t_adtf_dist2gpsref.round_id
) s14,
--------------------------------------------------------------------------------
( SELECT
	t_adtf_dist2gpsref.subject_id,
	t_adtf_dist2gpsref.round_id,
	MIN(t_adtf_dist2gpsref.time_s) AS time_s_min,
	MIN(t_adtf_dist2gpsref.dist_m) AS dist_m_min

	FROM
	t_adtf_dist2gpsref LEFT JOIN v_adtf_dist2gpsref_min ON 
		t_adtf_dist2gpsref.subject_id = v_adtf_dist2gpsref_min.subject_id AND
		t_adtf_dist2gpsref.round_id = v_adtf_dist2gpsref_min.round_id

	WHERE
	round_helper1 = 2 AND
	s15_gps_dist_m = s15_gps_dist_m_min

	GROUP BY
	t_adtf_dist2gpsref.subject_id,
	t_adtf_dist2gpsref.round_id
) s15,
--------------------------------------------------------------------------------
( SELECT
	t_adtf_dist2gpsref.subject_id,
	t_adtf_dist2gpsref.round_id,
	MIN(t_adtf_dist2gpsref.time_s) AS time_s_min,
	MIN(t_adtf_dist2gpsref.dist_m) AS dist_m_min

	FROM
	t_adtf_dist2gpsref LEFT JOIN v_adtf_dist2gpsref_min ON 
		t_adtf_dist2gpsref.subject_id = v_adtf_dist2gpsref_min.subject_id AND
		t_adtf_dist2gpsref.round_id = v_adtf_dist2gpsref_min.round_id

	WHERE
	round_helper1 = 2 AND
	s16_gps_dist_m = s16_gps_dist_m_min

	GROUP BY
	t_adtf_dist2gpsref.subject_id,
	t_adtf_dist2gpsref.round_id
) s16,
--------------------------------------------------------------------------------
( SELECT
	t_adtf_dist2gpsref.subject_id,
	t_adtf_dist2gpsref.round_id,
	MIN(t_adtf_dist2gpsref.time_s) AS time_s_min,
	MIN(t_adtf_dist2gpsref.dist_m) AS dist_m_min

	FROM
	t_adtf_dist2gpsref LEFT JOIN v_adtf_dist2gpsref_min ON 
		t_adtf_dist2gpsref.subject_id = v_adtf_dist2gpsref_min.subject_id AND
		t_adtf_dist2gpsref.round_id = v_adtf_dist2gpsref_min.round_id

	WHERE
	round_helper1 = 2 AND
	s17_gps_dist_m = s17_gps_dist_m_min

	GROUP BY
	t_adtf_dist2gpsref.subject_id,
	t_adtf_dist2gpsref.round_id
) s17,
--------------------------------------------------------------------------------
( SELECT
	t_adtf_dist2gpsref.subject_id,
	t_adtf_dist2gpsref.round_id,
	MIN(t_adtf_dist2gpsref.time_s) AS time_s_min,
	MIN(t_adtf_dist2gpsref.dist_m) AS dist_m_min

	FROM
	t_adtf_dist2gpsref LEFT JOIN v_adtf_dist2gpsref_min ON 
		t_adtf_dist2gpsref.subject_id = v_adtf_dist2gpsref_min.subject_id AND
		t_adtf_dist2gpsref.round_id = v_adtf_dist2gpsref_min.round_id

	WHERE
	round_helper1 = 2 AND
	s18_gps_dist_m = s18_gps_dist_m_min

	GROUP BY
	t_adtf_dist2gpsref.subject_id,
	t_adtf_dist2gpsref.round_id
) s18,
--------------------------------------------------------------------------------
( SELECT
	t_adtf_dist2gpsref.subject_id,
	t_adtf_dist2gpsref.round_id,
	MIN(t_adtf_dist2gpsref.time_s) AS time_s_min,
	MIN(t_adtf_dist2gpsref.dist_m) AS dist_m_min

	FROM
	t_adtf_dist2gpsref LEFT JOIN v_adtf_dist2gpsref_min ON 
		t_adtf_dist2gpsref.subject_id = v_adtf_dist2gpsref_min.subject_id AND
		t_adtf_dist2gpsref.round_id = v_adtf_dist2gpsref_min.round_id

	WHERE
	round_helper1 = 2 AND
	s99_gps_dist_m = s99_gps_dist_m_min

	GROUP BY
	t_adtf_dist2gpsref.subject_id,
	t_adtf_dist2gpsref.round_id
) s99
--------------------------------------------------------------------------------
WHERE 
t_adtf_dist2gpsref.subject_id = s01.subject_id AND t_adtf_dist2gpsref.round_id = s01.round_id AND
t_adtf_dist2gpsref.subject_id = s02.subject_id AND t_adtf_dist2gpsref.round_id = s02.round_id AND
t_adtf_dist2gpsref.subject_id = s03.subject_id AND t_adtf_dist2gpsref.round_id = s03.round_id AND
t_adtf_dist2gpsref.subject_id = s04.subject_id AND t_adtf_dist2gpsref.round_id = s04.round_id AND
t_adtf_dist2gpsref.subject_id = s05.subject_id AND t_adtf_dist2gpsref.round_id = s05.round_id AND
t_adtf_dist2gpsref.subject_id = s06.subject_id AND t_adtf_dist2gpsref.round_id = s06.round_id AND
t_adtf_dist2gpsref.subject_id = s07.subject_id AND t_adtf_dist2gpsref.round_id = s07.round_id AND
t_adtf_dist2gpsref.subject_id = s08.subject_id AND t_adtf_dist2gpsref.round_id = s08.round_id AND
t_adtf_dist2gpsref.subject_id = s09.subject_id AND t_adtf_dist2gpsref.round_id = s09.round_id AND
t_adtf_dist2gpsref.subject_id = s10.subject_id AND t_adtf_dist2gpsref.round_id = s10.round_id AND
t_adtf_dist2gpsref.subject_id = s11.subject_id AND t_adtf_dist2gpsref.round_id = s11.round_id AND
t_adtf_dist2gpsref.subject_id = s12.subject_id AND t_adtf_dist2gpsref.round_id = s12.round_id AND
t_adtf_dist2gpsref.subject_id = s13.subject_id AND t_adtf_dist2gpsref.round_id = s13.round_id AND
t_adtf_dist2gpsref.subject_id = s14.subject_id AND t_adtf_dist2gpsref.round_id = s14.round_id AND
t_adtf_dist2gpsref.subject_id = s15.subject_id AND t_adtf_dist2gpsref.round_id = s15.round_id AND
t_adtf_dist2gpsref.subject_id = s16.subject_id AND t_adtf_dist2gpsref.round_id = s16.round_id AND
t_adtf_dist2gpsref.subject_id = s17.subject_id AND t_adtf_dist2gpsref.round_id = s17.round_id AND
t_adtf_dist2gpsref.subject_id = s18.subject_id AND t_adtf_dist2gpsref.round_id = s18.round_id AND
t_adtf_dist2gpsref.subject_id = s99.subject_id AND t_adtf_dist2gpsref.round_id = s99.round_id 

ORDER BY
rnr ASC