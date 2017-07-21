DROP TABLE IF EXISTS t_can_sxx_blinker_seq;
CREATE TABLE t_can_sxx_blinker_seq AS

SELECT 
t_can_sxx_gesamt_aggr_zeit_blinker.znr_aggr,
t_can_sxx_gesamt_aggr_zeit_blinker.vp,
t_can_sxx_gesamt_aggr_zeit_blinker.zeit_s_rounded,
t_can_sxx_gesamt_aggr_zeit_blinker.runde,
t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt,
--
t_can_sxx_gesamt_aggr_zeit_blinker.blinker,
t_can_sxx_gesamt_aggr_zeit_blinker.znr_blinker,
t_can_sxx_gesamt_aggr_zeit_blinker.blinker_seq,

t_can_sxx_gesamt_aggr_zeit_blinker.s01_entf_s_rounded,
CASE
	WHEN s01_temp3.blinker_kum_rel IS NULL
	THEN CASE
		WHEN max(s01_temp3.blinker_kum_rel) OVER (PARTITION BY t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt ORDER BY t_can_sxx_gesamt_aggr_zeit_blinker.s01_entf_s_rounded) IS NULL
		THEN 0::numeric
		ELSE max(s01_temp3.blinker_kum_rel) OVER (PARTITION BY t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt ORDER BY t_can_sxx_gesamt_aggr_zeit_blinker.s01_entf_s_rounded)
		END
	ELSE s01_temp3.blinker_kum_rel
END AS s01_blinker_kum_rel,

t_can_sxx_gesamt_aggr_zeit_blinker.s02_entf_s_rounded,
CASE
	WHEN s02_temp3.blinker_kum_rel IS NULL
	THEN CASE
		WHEN max(s02_temp3.blinker_kum_rel) OVER (PARTITION BY t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt ORDER BY t_can_sxx_gesamt_aggr_zeit_blinker.s02_entf_s_rounded) IS NULL
		THEN 0::numeric
		ELSE max(s02_temp3.blinker_kum_rel) OVER (PARTITION BY t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt ORDER BY t_can_sxx_gesamt_aggr_zeit_blinker.s02_entf_s_rounded)
		END
	ELSE s02_temp3.blinker_kum_rel
END AS s02_blinker_kum_rel,

t_can_sxx_gesamt_aggr_zeit_blinker.s03_entf_s_rounded,
CASE
	WHEN s03_temp3.blinker_kum_rel IS NULL
	THEN CASE
		WHEN max(s03_temp3.blinker_kum_rel) OVER (PARTITION BY t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt ORDER BY t_can_sxx_gesamt_aggr_zeit_blinker.s03_entf_s_rounded) IS NULL
		THEN 0::numeric
		ELSE max(s03_temp3.blinker_kum_rel) OVER (PARTITION BY t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt ORDER BY t_can_sxx_gesamt_aggr_zeit_blinker.s03_entf_s_rounded)
		END
	ELSE s03_temp3.blinker_kum_rel
END AS s03_blinker_kum_rel,

t_can_sxx_gesamt_aggr_zeit_blinker.s04_entf_s_rounded,
CASE
	WHEN s04_temp3.blinker_kum_rel IS NULL
	THEN CASE
		WHEN max(s04_temp3.blinker_kum_rel) OVER (PARTITION BY t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt ORDER BY t_can_sxx_gesamt_aggr_zeit_blinker.s04_entf_s_rounded) IS NULL
		THEN 0::numeric
		ELSE max(s04_temp3.blinker_kum_rel) OVER (PARTITION BY t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt ORDER BY t_can_sxx_gesamt_aggr_zeit_blinker.s04_entf_s_rounded)
		END
	ELSE s04_temp3.blinker_kum_rel
END AS s04_blinker_kum_rel,

t_can_sxx_gesamt_aggr_zeit_blinker.s05_entf_s_rounded,
CASE
	WHEN s05_temp3.blinker_kum_rel IS NULL
	THEN CASE
		WHEN max(s05_temp3.blinker_kum_rel) OVER (PARTITION BY t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt ORDER BY t_can_sxx_gesamt_aggr_zeit_blinker.s05_entf_s_rounded) IS NULL
		THEN 0::numeric
		ELSE max(s05_temp3.blinker_kum_rel) OVER (PARTITION BY t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt ORDER BY t_can_sxx_gesamt_aggr_zeit_blinker.s05_entf_s_rounded)
		END
	ELSE s05_temp3.blinker_kum_rel
END AS s05_blinker_kum_rel,

t_can_sxx_gesamt_aggr_zeit_blinker.s06_entf_s_rounded,
CASE
	WHEN s06_temp3.blinker_kum_rel IS NULL
	THEN CASE
		WHEN max(s06_temp3.blinker_kum_rel) OVER (PARTITION BY t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt ORDER BY t_can_sxx_gesamt_aggr_zeit_blinker.s06_entf_s_rounded) IS NULL
		THEN 0::numeric
		ELSE max(s06_temp3.blinker_kum_rel) OVER (PARTITION BY t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt ORDER BY t_can_sxx_gesamt_aggr_zeit_blinker.s06_entf_s_rounded)
		END
	ELSE s06_temp3.blinker_kum_rel
END AS s06_blinker_kum_rel,

t_can_sxx_gesamt_aggr_zeit_blinker.s07_entf_s_rounded,
CASE
	WHEN s07_temp3.blinker_kum_rel IS NULL
	THEN CASE
		WHEN max(s07_temp3.blinker_kum_rel) OVER (PARTITION BY t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt ORDER BY t_can_sxx_gesamt_aggr_zeit_blinker.s07_entf_s_rounded) IS NULL
		THEN 0::numeric
		ELSE max(s07_temp3.blinker_kum_rel) OVER (PARTITION BY t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt ORDER BY t_can_sxx_gesamt_aggr_zeit_blinker.s07_entf_s_rounded)
		END
	ELSE s07_temp3.blinker_kum_rel
END AS s07_blinker_kum_rel,

t_can_sxx_gesamt_aggr_zeit_blinker.s08_entf_s_rounded,
CASE
	WHEN s08_temp3.blinker_kum_rel IS NULL
	THEN CASE
		WHEN max(s08_temp3.blinker_kum_rel) OVER (PARTITION BY t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt ORDER BY t_can_sxx_gesamt_aggr_zeit_blinker.s08_entf_s_rounded) IS NULL
		THEN 0::numeric
		ELSE max(s08_temp3.blinker_kum_rel) OVER (PARTITION BY t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt ORDER BY t_can_sxx_gesamt_aggr_zeit_blinker.s08_entf_s_rounded)
		END
	ELSE s08_temp3.blinker_kum_rel
END AS s08_blinker_kum_rel,

t_can_sxx_gesamt_aggr_zeit_blinker.s09_entf_s_rounded,
CASE
	WHEN s09_temp3.blinker_kum_rel IS NULL
	THEN CASE
		WHEN max(s09_temp3.blinker_kum_rel) OVER (PARTITION BY t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt ORDER BY t_can_sxx_gesamt_aggr_zeit_blinker.s09_entf_s_rounded) IS NULL
		THEN 0::numeric
		ELSE max(s09_temp3.blinker_kum_rel) OVER (PARTITION BY t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt ORDER BY t_can_sxx_gesamt_aggr_zeit_blinker.s09_entf_s_rounded)
		END
	ELSE s09_temp3.blinker_kum_rel
END AS s09_blinker_kum_rel,

t_can_sxx_gesamt_aggr_zeit_blinker.s10_entf_s_rounded,
CASE
	WHEN s10_temp3.blinker_kum_rel IS NULL
	THEN CASE
		WHEN max(s10_temp3.blinker_kum_rel) OVER (PARTITION BY t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt ORDER BY t_can_sxx_gesamt_aggr_zeit_blinker.s10_entf_s_rounded) IS NULL
		THEN 0::numeric
		ELSE max(s10_temp3.blinker_kum_rel) OVER (PARTITION BY t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt ORDER BY t_can_sxx_gesamt_aggr_zeit_blinker.s10_entf_s_rounded)
		END
	ELSE s10_temp3.blinker_kum_rel
END AS s10_blinker_kum_rel,

t_can_sxx_gesamt_aggr_zeit_blinker.s11_entf_s_rounded,
CASE
	WHEN s11_temp3.blinker_kum_rel IS NULL
	THEN CASE
		WHEN max(s11_temp3.blinker_kum_rel) OVER (PARTITION BY t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt ORDER BY t_can_sxx_gesamt_aggr_zeit_blinker.s11_entf_s_rounded) IS NULL
		THEN 0::numeric
		ELSE max(s11_temp3.blinker_kum_rel) OVER (PARTITION BY t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt ORDER BY t_can_sxx_gesamt_aggr_zeit_blinker.s11_entf_s_rounded)
		END
	ELSE s11_temp3.blinker_kum_rel
END AS s11_blinker_kum_rel,

t_can_sxx_gesamt_aggr_zeit_blinker.s12_entf_s_rounded,
CASE
	WHEN s12_temp3.blinker_kum_rel IS NULL
	THEN CASE
		WHEN max(s12_temp3.blinker_kum_rel) OVER (PARTITION BY t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt ORDER BY t_can_sxx_gesamt_aggr_zeit_blinker.s12_entf_s_rounded) IS NULL
		THEN 0::numeric
		ELSE max(s12_temp3.blinker_kum_rel) OVER (PARTITION BY t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt ORDER BY t_can_sxx_gesamt_aggr_zeit_blinker.s12_entf_s_rounded)
		END
	ELSE s12_temp3.blinker_kum_rel
END AS s12_blinker_kum_rel,

t_can_sxx_gesamt_aggr_zeit_blinker.s13_entf_s_rounded,
CASE
	WHEN s13_temp3.blinker_kum_rel IS NULL
	THEN CASE
		WHEN max(s13_temp3.blinker_kum_rel) OVER (PARTITION BY t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt ORDER BY t_can_sxx_gesamt_aggr_zeit_blinker.s13_entf_s_rounded) IS NULL
		THEN 0::numeric
		ELSE max(s13_temp3.blinker_kum_rel) OVER (PARTITION BY t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt ORDER BY t_can_sxx_gesamt_aggr_zeit_blinker.s13_entf_s_rounded)
		END
	ELSE s13_temp3.blinker_kum_rel
END AS s13_blinker_kum_rel,

t_can_sxx_gesamt_aggr_zeit_blinker.s14_entf_s_rounded,
CASE
	WHEN s14_temp3.blinker_kum_rel IS NULL
	THEN CASE
		WHEN max(s14_temp3.blinker_kum_rel) OVER (PARTITION BY t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt ORDER BY t_can_sxx_gesamt_aggr_zeit_blinker.s14_entf_s_rounded) IS NULL
		THEN 0::numeric
		ELSE max(s14_temp3.blinker_kum_rel) OVER (PARTITION BY t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt ORDER BY t_can_sxx_gesamt_aggr_zeit_blinker.s14_entf_s_rounded)
		END
	ELSE s14_temp3.blinker_kum_rel
END AS s14_blinker_kum_rel,

t_can_sxx_gesamt_aggr_zeit_blinker.s15_entf_s_rounded,
CASE
	WHEN s15_temp3.blinker_kum_rel IS NULL
	THEN CASE
		WHEN max(s15_temp3.blinker_kum_rel) OVER (PARTITION BY t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt ORDER BY t_can_sxx_gesamt_aggr_zeit_blinker.s15_entf_s_rounded) IS NULL
		THEN 0::numeric
		ELSE max(s15_temp3.blinker_kum_rel) OVER (PARTITION BY t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt ORDER BY t_can_sxx_gesamt_aggr_zeit_blinker.s15_entf_s_rounded)
		END
	ELSE s15_temp3.blinker_kum_rel
END AS s15_blinker_kum_rel,

t_can_sxx_gesamt_aggr_zeit_blinker.s16_entf_s_rounded,
CASE
	WHEN s16_temp3.blinker_kum_rel IS NULL
	THEN CASE
		WHEN max(s16_temp3.blinker_kum_rel) OVER (PARTITION BY t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt ORDER BY t_can_sxx_gesamt_aggr_zeit_blinker.s16_entf_s_rounded) IS NULL
		THEN 0::numeric
		ELSE max(s16_temp3.blinker_kum_rel) OVER (PARTITION BY t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt ORDER BY t_can_sxx_gesamt_aggr_zeit_blinker.s16_entf_s_rounded)
		END
	ELSE s16_temp3.blinker_kum_rel
END AS s16_blinker_kum_rel,

t_can_sxx_gesamt_aggr_zeit_blinker.s17_entf_s_rounded,
CASE
	WHEN s17_temp3.blinker_kum_rel IS NULL
	THEN CASE
		WHEN max(s17_temp3.blinker_kum_rel) OVER (PARTITION BY t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt ORDER BY t_can_sxx_gesamt_aggr_zeit_blinker.s17_entf_s_rounded) IS NULL
		THEN 0::numeric
		ELSE max(s17_temp3.blinker_kum_rel) OVER (PARTITION BY t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt ORDER BY t_can_sxx_gesamt_aggr_zeit_blinker.s17_entf_s_rounded)
		END
	ELSE s17_temp3.blinker_kum_rel
END AS s17_blinker_kum_rel,

t_can_sxx_gesamt_aggr_zeit_blinker.s18_entf_s_rounded,
CASE
	WHEN s18_temp3.blinker_kum_rel IS NULL
	THEN CASE
		WHEN max(s18_temp3.blinker_kum_rel) OVER (PARTITION BY t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt ORDER BY t_can_sxx_gesamt_aggr_zeit_blinker.s18_entf_s_rounded) IS NULL
		THEN 0::numeric
		ELSE max(s18_temp3.blinker_kum_rel) OVER (PARTITION BY t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt ORDER BY t_can_sxx_gesamt_aggr_zeit_blinker.s18_entf_s_rounded)
		END
	ELSE s18_temp3.blinker_kum_rel
END AS s18_blinker_kum_rel



FROM 
t_can_sxx_gesamt_aggr_zeit_blinker

LEFT OUTER JOIN
( 
	SELECT
	min(s01_temp2.znr_aggr) as znr_aggr,
	min(s01_temp2.zeit_s_rounded) as zeit_s_rounded,
	s01_temp2.runde_txt,
	min(s01_temp2.blinker) as blinker,
	s01_temp2.s01_entf_s_rounded_min,
	max(s01_temp2.blinker_kum_rel) as blinker_kum_rel

	FROM
	(
		SELECT
		min(s01_temp1.znr_aggr) as znr_aggr,
		s01_temp1.vp,
		min(s01_temp1.zeit_s_rounded) as zeit_s_rounded,
		s01_temp1.runde_txt,
		min(s01_temp1.blinker) AS blinker,
		min(s01_temp1.blinker_seq) as blinker_seq,
		min(s01_temp1.s01_entf_s_rounded_min) AS s01_entf_s_rounded_min,
		row_number() OVER (PARTITION BY s01_temp1.runde_txt ORDER BY min(s01_temp1.s01_entf_s_rounded_min)) as blinker_kum,
		(100::numeric/30::numeric)*row_number() OVER (PARTITION BY s01_temp1.runde_txt ORDER BY min(s01_temp1.s01_entf_s_rounded_min)) as blinker_kum_rel

		FROM
			(
			SELECT 
			min(t_can_sxx_gesamt_aggr_zeit_blinker.znr_aggr) AS znr_aggr,
			t_can_sxx_gesamt_aggr_zeit_blinker.vp,
			min(t_can_sxx_gesamt_aggr_zeit_blinker.zeit_s_rounded) AS zeit_s_rounded,
			min(t_can_sxx_gesamt_aggr_zeit_blinker.runde) AS runde,
			t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt,
			min(t_can_sxx_gesamt_aggr_zeit_blinker.blinker) AS blinker,
			t_can_sxx_gesamt_aggr_zeit_blinker.blinker_seq,
			min(t_can_sxx_gesamt_aggr_zeit_blinker.s01_entf_s_rounded) AS s01_entf_s_rounded_min
			
			FROM 
			t_can_sxx_gesamt_aggr_zeit_blinker 
			
			WHERE
			t_can_sxx_gesamt_aggr_zeit_blinker.s01_entf_s_rounded >= -15 AND
			t_can_sxx_gesamt_aggr_zeit_blinker.s01_entf_s_rounded <= 5 AND 
			t_can_sxx_gesamt_aggr_zeit_blinker.blinker = 1
			
			GROUP BY 
			t_can_sxx_gesamt_aggr_zeit_blinker.vp, 
			t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt, 
			t_can_sxx_gesamt_aggr_zeit_blinker.blinker_seq
			
			ORDER BY 
			t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt,
			t_can_sxx_gesamt_aggr_zeit_blinker.vp
			)	s01_temp1

		GROUP BY
		s01_temp1.vp,
		s01_temp1.runde_txt

		ORDER BY
		s01_temp1.runde_txt,
		min(s01_temp1.s01_entf_s_rounded_min)
	) s01_temp2

	GROUP BY
	s01_temp2.runde_txt,
	s01_temp2.s01_entf_s_rounded_min

	ORDER BY
	s01_temp2.runde_txt,
	s01_temp2.s01_entf_s_rounded_min
) s01_temp3
ON 
t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt = s01_temp3.runde_txt AND
t_can_sxx_gesamt_aggr_zeit_blinker.s01_entf_s_rounded = s01_temp3.s01_entf_s_rounded_min


LEFT OUTER JOIN
( 
	SELECT
	min(s02_temp2.znr_aggr) as znr_aggr,
	min(s02_temp2.zeit_s_rounded) as zeit_s_rounded,
	s02_temp2.runde_txt,
	min(s02_temp2.blinker) as blinker,
	s02_temp2.s02_entf_s_rounded_min,
	max(s02_temp2.blinker_kum_rel) as blinker_kum_rel

	FROM
	(
		SELECT
		min(s02_temp1.znr_aggr) as znr_aggr,
		s02_temp1.vp,
		min(s02_temp1.zeit_s_rounded) as zeit_s_rounded,
		s02_temp1.runde_txt,
		min(s02_temp1.blinker) AS blinker,
		min(s02_temp1.blinker_seq) as blinker_seq,
		min(s02_temp1.s02_entf_s_rounded_min) AS s02_entf_s_rounded_min,
		row_number() OVER (PARTITION BY s02_temp1.runde_txt ORDER BY min(s02_temp1.s02_entf_s_rounded_min)) as blinker_kum,
		(100::numeric/30::numeric)*row_number() OVER (PARTITION BY s02_temp1.runde_txt ORDER BY min(s02_temp1.s02_entf_s_rounded_min)) as blinker_kum_rel

		FROM
			(
			SELECT 
			min(t_can_sxx_gesamt_aggr_zeit_blinker.znr_aggr) AS znr_aggr,
			t_can_sxx_gesamt_aggr_zeit_blinker.vp,
			min(t_can_sxx_gesamt_aggr_zeit_blinker.zeit_s_rounded) AS zeit_s_rounded,
			min(t_can_sxx_gesamt_aggr_zeit_blinker.runde) AS runde,
			t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt,
			min(t_can_sxx_gesamt_aggr_zeit_blinker.blinker) AS blinker,
			t_can_sxx_gesamt_aggr_zeit_blinker.blinker_seq,
			min(t_can_sxx_gesamt_aggr_zeit_blinker.s02_entf_s_rounded) AS s02_entf_s_rounded_min
			
			FROM 
			t_can_sxx_gesamt_aggr_zeit_blinker 
			
			WHERE
			t_can_sxx_gesamt_aggr_zeit_blinker.s02_entf_s_rounded >= -15 AND
			t_can_sxx_gesamt_aggr_zeit_blinker.s02_entf_s_rounded <= 5 AND 
			t_can_sxx_gesamt_aggr_zeit_blinker.blinker = 1
			
			GROUP BY 
			t_can_sxx_gesamt_aggr_zeit_blinker.vp, 
			t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt, 
			t_can_sxx_gesamt_aggr_zeit_blinker.blinker_seq
			
			ORDER BY 
			t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt,
			t_can_sxx_gesamt_aggr_zeit_blinker.vp
			)	s02_temp1

		GROUP BY
		s02_temp1.vp,
		s02_temp1.runde_txt

		ORDER BY
		s02_temp1.runde_txt,
		min(s02_temp1.s02_entf_s_rounded_min)
	) s02_temp2

	GROUP BY
	s02_temp2.runde_txt,
	s02_temp2.s02_entf_s_rounded_min

	ORDER BY
	s02_temp2.runde_txt,
	s02_temp2.s02_entf_s_rounded_min
) s02_temp3
ON 
t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt = s02_temp3.runde_txt AND
t_can_sxx_gesamt_aggr_zeit_blinker.s02_entf_s_rounded = s02_temp3.s02_entf_s_rounded_min


LEFT OUTER JOIN
( 
	SELECT
	min(s03_temp2.znr_aggr) as znr_aggr,
	min(s03_temp2.zeit_s_rounded) as zeit_s_rounded,
	s03_temp2.runde_txt,
	min(s03_temp2.blinker) as blinker,
	s03_temp2.s03_entf_s_rounded_min,
	max(s03_temp2.blinker_kum_rel) as blinker_kum_rel

	FROM
	(
		SELECT
		min(s03_temp1.znr_aggr) as znr_aggr,
		s03_temp1.vp,
		min(s03_temp1.zeit_s_rounded) as zeit_s_rounded,
		s03_temp1.runde_txt,
		min(s03_temp1.blinker) AS blinker,
		min(s03_temp1.blinker_seq) as blinker_seq,
		min(s03_temp1.s03_entf_s_rounded_min) AS s03_entf_s_rounded_min,
		row_number() OVER (PARTITION BY s03_temp1.runde_txt ORDER BY min(s03_temp1.s03_entf_s_rounded_min)) as blinker_kum,
		(100::numeric/30::numeric)*row_number() OVER (PARTITION BY s03_temp1.runde_txt ORDER BY min(s03_temp1.s03_entf_s_rounded_min)) as blinker_kum_rel

		FROM
			(
			SELECT 
			min(t_can_sxx_gesamt_aggr_zeit_blinker.znr_aggr) AS znr_aggr,
			t_can_sxx_gesamt_aggr_zeit_blinker.vp,
			min(t_can_sxx_gesamt_aggr_zeit_blinker.zeit_s_rounded) AS zeit_s_rounded,
			min(t_can_sxx_gesamt_aggr_zeit_blinker.runde) AS runde,
			t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt,
			min(t_can_sxx_gesamt_aggr_zeit_blinker.blinker) AS blinker,
			t_can_sxx_gesamt_aggr_zeit_blinker.blinker_seq,
			min(t_can_sxx_gesamt_aggr_zeit_blinker.s03_entf_s_rounded) AS s03_entf_s_rounded_min
			
			FROM 
			t_can_sxx_gesamt_aggr_zeit_blinker 
			
			WHERE
			t_can_sxx_gesamt_aggr_zeit_blinker.s03_entf_s_rounded >= -15 AND
			t_can_sxx_gesamt_aggr_zeit_blinker.s03_entf_s_rounded <= 5 AND 
			t_can_sxx_gesamt_aggr_zeit_blinker.blinker = -1
			
			GROUP BY 
			t_can_sxx_gesamt_aggr_zeit_blinker.vp, 
			t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt, 
			t_can_sxx_gesamt_aggr_zeit_blinker.blinker_seq
			
			ORDER BY 
			t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt,
			t_can_sxx_gesamt_aggr_zeit_blinker.vp
			)	s03_temp1

		GROUP BY
		s03_temp1.vp,
		s03_temp1.runde_txt

		ORDER BY
		s03_temp1.runde_txt,
		min(s03_temp1.s03_entf_s_rounded_min)
	) s03_temp2

	GROUP BY
	s03_temp2.runde_txt,
	s03_temp2.s03_entf_s_rounded_min

	ORDER BY
	s03_temp2.runde_txt,
	s03_temp2.s03_entf_s_rounded_min
) s03_temp3
ON 
t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt = s03_temp3.runde_txt AND
t_can_sxx_gesamt_aggr_zeit_blinker.s03_entf_s_rounded = s03_temp3.s03_entf_s_rounded_min


LEFT OUTER JOIN
( 
	SELECT
	min(s04_temp2.znr_aggr) as znr_aggr,
	min(s04_temp2.zeit_s_rounded) as zeit_s_rounded,
	s04_temp2.runde_txt,
	min(s04_temp2.blinker) as blinker,
	s04_temp2.s04_entf_s_rounded_min,
	max(s04_temp2.blinker_kum_rel) as blinker_kum_rel

	FROM
	(
		SELECT
		min(s04_temp1.znr_aggr) as znr_aggr,
		s04_temp1.vp,
		min(s04_temp1.zeit_s_rounded) as zeit_s_rounded,
		s04_temp1.runde_txt,
		min(s04_temp1.blinker) AS blinker,
		min(s04_temp1.blinker_seq) as blinker_seq,
		min(s04_temp1.s04_entf_s_rounded_min) AS s04_entf_s_rounded_min,
		row_number() OVER (PARTITION BY s04_temp1.runde_txt ORDER BY min(s04_temp1.s04_entf_s_rounded_min)) as blinker_kum,
		(100::numeric/30::numeric)*row_number() OVER (PARTITION BY s04_temp1.runde_txt ORDER BY min(s04_temp1.s04_entf_s_rounded_min)) as blinker_kum_rel

		FROM
			(
			SELECT 
			min(t_can_sxx_gesamt_aggr_zeit_blinker.znr_aggr) AS znr_aggr,
			t_can_sxx_gesamt_aggr_zeit_blinker.vp,
			min(t_can_sxx_gesamt_aggr_zeit_blinker.zeit_s_rounded) AS zeit_s_rounded,
			min(t_can_sxx_gesamt_aggr_zeit_blinker.runde) AS runde,
			t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt,
			min(t_can_sxx_gesamt_aggr_zeit_blinker.blinker) AS blinker,
			t_can_sxx_gesamt_aggr_zeit_blinker.blinker_seq,
			min(t_can_sxx_gesamt_aggr_zeit_blinker.s04_entf_s_rounded) AS s04_entf_s_rounded_min
			
			FROM 
			t_can_sxx_gesamt_aggr_zeit_blinker 
			
			WHERE
			t_can_sxx_gesamt_aggr_zeit_blinker.s04_entf_s_rounded >= -15 AND
			t_can_sxx_gesamt_aggr_zeit_blinker.s04_entf_s_rounded <= 5 AND 
			t_can_sxx_gesamt_aggr_zeit_blinker.blinker = 1
			
			GROUP BY 
			t_can_sxx_gesamt_aggr_zeit_blinker.vp, 
			t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt, 
			t_can_sxx_gesamt_aggr_zeit_blinker.blinker_seq
			
			ORDER BY 
			t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt,
			t_can_sxx_gesamt_aggr_zeit_blinker.vp
			)	s04_temp1

		GROUP BY
		s04_temp1.vp,
		s04_temp1.runde_txt

		ORDER BY
		s04_temp1.runde_txt,
		min(s04_temp1.s04_entf_s_rounded_min)
	) s04_temp2

	GROUP BY
	s04_temp2.runde_txt,
	s04_temp2.s04_entf_s_rounded_min

	ORDER BY
	s04_temp2.runde_txt,
	s04_temp2.s04_entf_s_rounded_min
) s04_temp3
ON 
t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt = s04_temp3.runde_txt AND
t_can_sxx_gesamt_aggr_zeit_blinker.s04_entf_s_rounded = s04_temp3.s04_entf_s_rounded_min


LEFT OUTER JOIN
( 
	SELECT
	min(s05_temp2.znr_aggr) as znr_aggr,
	min(s05_temp2.zeit_s_rounded) as zeit_s_rounded,
	s05_temp2.runde_txt,
	min(s05_temp2.blinker) as blinker,
	s05_temp2.s05_entf_s_rounded_min,
	max(s05_temp2.blinker_kum_rel) as blinker_kum_rel

	FROM
	(
		SELECT
		min(s05_temp1.znr_aggr) as znr_aggr,
		s05_temp1.vp,
		min(s05_temp1.zeit_s_rounded) as zeit_s_rounded,
		s05_temp1.runde_txt,
		min(s05_temp1.blinker) AS blinker,
		min(s05_temp1.blinker_seq) as blinker_seq,
		min(s05_temp1.s05_entf_s_rounded_min) AS s05_entf_s_rounded_min,
		row_number() OVER (PARTITION BY s05_temp1.runde_txt ORDER BY min(s05_temp1.s05_entf_s_rounded_min)) as blinker_kum,
		(100::numeric/30::numeric)*row_number() OVER (PARTITION BY s05_temp1.runde_txt ORDER BY min(s05_temp1.s05_entf_s_rounded_min)) as blinker_kum_rel

		FROM
			(
			SELECT 
			min(t_can_sxx_gesamt_aggr_zeit_blinker.znr_aggr) AS znr_aggr,
			t_can_sxx_gesamt_aggr_zeit_blinker.vp,
			min(t_can_sxx_gesamt_aggr_zeit_blinker.zeit_s_rounded) AS zeit_s_rounded,
			min(t_can_sxx_gesamt_aggr_zeit_blinker.runde) AS runde,
			t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt,
			min(t_can_sxx_gesamt_aggr_zeit_blinker.blinker) AS blinker,
			t_can_sxx_gesamt_aggr_zeit_blinker.blinker_seq,
			min(t_can_sxx_gesamt_aggr_zeit_blinker.s05_entf_s_rounded) AS s05_entf_s_rounded_min
			
			FROM 
			t_can_sxx_gesamt_aggr_zeit_blinker 
			
			WHERE
			t_can_sxx_gesamt_aggr_zeit_blinker.s05_entf_s_rounded >= -15 AND
			t_can_sxx_gesamt_aggr_zeit_blinker.s05_entf_s_rounded <= 5 AND 
			t_can_sxx_gesamt_aggr_zeit_blinker.blinker = 1
			
			GROUP BY 
			t_can_sxx_gesamt_aggr_zeit_blinker.vp, 
			t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt, 
			t_can_sxx_gesamt_aggr_zeit_blinker.blinker_seq
			
			ORDER BY 
			t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt,
			t_can_sxx_gesamt_aggr_zeit_blinker.vp
			)	s05_temp1

		GROUP BY
		s05_temp1.vp,
		s05_temp1.runde_txt

		ORDER BY
		s05_temp1.runde_txt,
		min(s05_temp1.s05_entf_s_rounded_min)
	) s05_temp2

	GROUP BY
	s05_temp2.runde_txt,
	s05_temp2.s05_entf_s_rounded_min

	ORDER BY
	s05_temp2.runde_txt,
	s05_temp2.s05_entf_s_rounded_min
) s05_temp3
ON 
t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt = s05_temp3.runde_txt AND
t_can_sxx_gesamt_aggr_zeit_blinker.s05_entf_s_rounded = s05_temp3.s05_entf_s_rounded_min


LEFT OUTER JOIN
( 
	SELECT
	min(s06_temp2.znr_aggr) as znr_aggr,
	min(s06_temp2.zeit_s_rounded) as zeit_s_rounded,
	s06_temp2.runde_txt,
	min(s06_temp2.blinker) as blinker,
	s06_temp2.s06_entf_s_rounded_min,
	max(s06_temp2.blinker_kum_rel) as blinker_kum_rel

	FROM
	(
		SELECT
		min(s06_temp1.znr_aggr) as znr_aggr,
		s06_temp1.vp,
		min(s06_temp1.zeit_s_rounded) as zeit_s_rounded,
		s06_temp1.runde_txt,
		min(s06_temp1.blinker) AS blinker,
		min(s06_temp1.blinker_seq) as blinker_seq,
		min(s06_temp1.s06_entf_s_rounded_min) AS s06_entf_s_rounded_min,
		row_number() OVER (PARTITION BY s06_temp1.runde_txt ORDER BY min(s06_temp1.s06_entf_s_rounded_min)) as blinker_kum,
		(100::numeric/30::numeric)*row_number() OVER (PARTITION BY s06_temp1.runde_txt ORDER BY min(s06_temp1.s06_entf_s_rounded_min)) as blinker_kum_rel

		FROM
			(
			SELECT 
			min(t_can_sxx_gesamt_aggr_zeit_blinker.znr_aggr) AS znr_aggr,
			t_can_sxx_gesamt_aggr_zeit_blinker.vp,
			min(t_can_sxx_gesamt_aggr_zeit_blinker.zeit_s_rounded) AS zeit_s_rounded,
			min(t_can_sxx_gesamt_aggr_zeit_blinker.runde) AS runde,
			t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt,
			min(t_can_sxx_gesamt_aggr_zeit_blinker.blinker) AS blinker,
			t_can_sxx_gesamt_aggr_zeit_blinker.blinker_seq,
			min(t_can_sxx_gesamt_aggr_zeit_blinker.s06_entf_s_rounded) AS s06_entf_s_rounded_min
			
			FROM 
			t_can_sxx_gesamt_aggr_zeit_blinker 
			
			WHERE
			t_can_sxx_gesamt_aggr_zeit_blinker.s06_entf_s_rounded >= -15 AND
			t_can_sxx_gesamt_aggr_zeit_blinker.s06_entf_s_rounded <= 5 AND 
			t_can_sxx_gesamt_aggr_zeit_blinker.blinker = -1
			
			GROUP BY 
			t_can_sxx_gesamt_aggr_zeit_blinker.vp, 
			t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt, 
			t_can_sxx_gesamt_aggr_zeit_blinker.blinker_seq
			
			ORDER BY 
			t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt,
			t_can_sxx_gesamt_aggr_zeit_blinker.vp
			)	s06_temp1

		GROUP BY
		s06_temp1.vp,
		s06_temp1.runde_txt

		ORDER BY
		s06_temp1.runde_txt,
		min(s06_temp1.s06_entf_s_rounded_min)
	) s06_temp2

	GROUP BY
	s06_temp2.runde_txt,
	s06_temp2.s06_entf_s_rounded_min

	ORDER BY
	s06_temp2.runde_txt,
	s06_temp2.s06_entf_s_rounded_min
) s06_temp3
ON 
t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt = s06_temp3.runde_txt AND
t_can_sxx_gesamt_aggr_zeit_blinker.s06_entf_s_rounded = s06_temp3.s06_entf_s_rounded_min


LEFT OUTER JOIN
( 
	SELECT
	min(s07_temp2.znr_aggr) as znr_aggr,
	min(s07_temp2.zeit_s_rounded) as zeit_s_rounded,
	s07_temp2.runde_txt,
	min(s07_temp2.blinker) as blinker,
	s07_temp2.s07_entf_s_rounded_min,
	max(s07_temp2.blinker_kum_rel) as blinker_kum_rel

	FROM
	(
		SELECT
		min(s07_temp1.znr_aggr) as znr_aggr,
		s07_temp1.vp,
		min(s07_temp1.zeit_s_rounded) as zeit_s_rounded,
		s07_temp1.runde_txt,
		min(s07_temp1.blinker) AS blinker,
		min(s07_temp1.blinker_seq) as blinker_seq,
		min(s07_temp1.s07_entf_s_rounded_min) AS s07_entf_s_rounded_min,
		row_number() OVER (PARTITION BY s07_temp1.runde_txt ORDER BY min(s07_temp1.s07_entf_s_rounded_min)) as blinker_kum,
		(100::numeric/30::numeric)*row_number() OVER (PARTITION BY s07_temp1.runde_txt ORDER BY min(s07_temp1.s07_entf_s_rounded_min)) as blinker_kum_rel

		FROM
			(
			SELECT 
			min(t_can_sxx_gesamt_aggr_zeit_blinker.znr_aggr) AS znr_aggr,
			t_can_sxx_gesamt_aggr_zeit_blinker.vp,
			min(t_can_sxx_gesamt_aggr_zeit_blinker.zeit_s_rounded) AS zeit_s_rounded,
			min(t_can_sxx_gesamt_aggr_zeit_blinker.runde) AS runde,
			t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt,
			min(t_can_sxx_gesamt_aggr_zeit_blinker.blinker) AS blinker,
			t_can_sxx_gesamt_aggr_zeit_blinker.blinker_seq,
			min(t_can_sxx_gesamt_aggr_zeit_blinker.s07_entf_s_rounded) AS s07_entf_s_rounded_min
			
			FROM 
			t_can_sxx_gesamt_aggr_zeit_blinker 
			
			WHERE
			t_can_sxx_gesamt_aggr_zeit_blinker.s07_entf_s_rounded >= -15 AND
			t_can_sxx_gesamt_aggr_zeit_blinker.s07_entf_s_rounded <= 5 AND 
			t_can_sxx_gesamt_aggr_zeit_blinker.blinker = 1
			
			GROUP BY 
			t_can_sxx_gesamt_aggr_zeit_blinker.vp, 
			t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt, 
			t_can_sxx_gesamt_aggr_zeit_blinker.blinker_seq
			
			ORDER BY 
			t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt,
			t_can_sxx_gesamt_aggr_zeit_blinker.vp
			)	s07_temp1

		GROUP BY
		s07_temp1.vp,
		s07_temp1.runde_txt

		ORDER BY
		s07_temp1.runde_txt,
		min(s07_temp1.s07_entf_s_rounded_min)
	) s07_temp2

	GROUP BY
	s07_temp2.runde_txt,
	s07_temp2.s07_entf_s_rounded_min

	ORDER BY
	s07_temp2.runde_txt,
	s07_temp2.s07_entf_s_rounded_min
) s07_temp3
ON 
t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt = s07_temp3.runde_txt AND
t_can_sxx_gesamt_aggr_zeit_blinker.s07_entf_s_rounded = s07_temp3.s07_entf_s_rounded_min


LEFT OUTER JOIN
( 
	SELECT
	min(s08_temp2.znr_aggr) as znr_aggr,
	min(s08_temp2.zeit_s_rounded) as zeit_s_rounded,
	s08_temp2.runde_txt,
	min(s08_temp2.blinker) as blinker,
	s08_temp2.s08_entf_s_rounded_min,
	max(s08_temp2.blinker_kum_rel) as blinker_kum_rel

	FROM
	(
		SELECT
		min(s08_temp1.znr_aggr) as znr_aggr,
		s08_temp1.vp,
		min(s08_temp1.zeit_s_rounded) as zeit_s_rounded,
		s08_temp1.runde_txt,
		min(s08_temp1.blinker) AS blinker,
		min(s08_temp1.blinker_seq) as blinker_seq,
		min(s08_temp1.s08_entf_s_rounded_min) AS s08_entf_s_rounded_min,
		row_number() OVER (PARTITION BY s08_temp1.runde_txt ORDER BY min(s08_temp1.s08_entf_s_rounded_min)) as blinker_kum,
		(100::numeric/30::numeric)*row_number() OVER (PARTITION BY s08_temp1.runde_txt ORDER BY min(s08_temp1.s08_entf_s_rounded_min)) as blinker_kum_rel

		FROM
			(
			SELECT 
			min(t_can_sxx_gesamt_aggr_zeit_blinker.znr_aggr) AS znr_aggr,
			t_can_sxx_gesamt_aggr_zeit_blinker.vp,
			min(t_can_sxx_gesamt_aggr_zeit_blinker.zeit_s_rounded) AS zeit_s_rounded,
			min(t_can_sxx_gesamt_aggr_zeit_blinker.runde) AS runde,
			t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt,
			min(t_can_sxx_gesamt_aggr_zeit_blinker.blinker) AS blinker,
			t_can_sxx_gesamt_aggr_zeit_blinker.blinker_seq,
			min(t_can_sxx_gesamt_aggr_zeit_blinker.s08_entf_s_rounded) AS s08_entf_s_rounded_min
			
			FROM 
			t_can_sxx_gesamt_aggr_zeit_blinker 
			
			WHERE
			t_can_sxx_gesamt_aggr_zeit_blinker.s08_entf_s_rounded >= -15 AND
			t_can_sxx_gesamt_aggr_zeit_blinker.s08_entf_s_rounded <= 5 AND 
			t_can_sxx_gesamt_aggr_zeit_blinker.blinker = -1
			
			GROUP BY 
			t_can_sxx_gesamt_aggr_zeit_blinker.vp, 
			t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt, 
			t_can_sxx_gesamt_aggr_zeit_blinker.blinker_seq
			
			ORDER BY 
			t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt,
			t_can_sxx_gesamt_aggr_zeit_blinker.vp
			)	s08_temp1

		GROUP BY
		s08_temp1.vp,
		s08_temp1.runde_txt

		ORDER BY
		s08_temp1.runde_txt,
		min(s08_temp1.s08_entf_s_rounded_min)
	) s08_temp2

	GROUP BY
	s08_temp2.runde_txt,
	s08_temp2.s08_entf_s_rounded_min

	ORDER BY
	s08_temp2.runde_txt,
	s08_temp2.s08_entf_s_rounded_min
) s08_temp3
ON 
t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt = s08_temp3.runde_txt AND
t_can_sxx_gesamt_aggr_zeit_blinker.s08_entf_s_rounded = s08_temp3.s08_entf_s_rounded_min


LEFT OUTER JOIN
( 
	SELECT
	min(s09_temp2.znr_aggr) as znr_aggr,
	min(s09_temp2.zeit_s_rounded) as zeit_s_rounded,
	s09_temp2.runde_txt,
	min(s09_temp2.blinker) as blinker,
	s09_temp2.s09_entf_s_rounded_min,
	max(s09_temp2.blinker_kum_rel) as blinker_kum_rel

	FROM
	(
		SELECT
		min(s09_temp1.znr_aggr) as znr_aggr,
		s09_temp1.vp,
		min(s09_temp1.zeit_s_rounded) as zeit_s_rounded,
		s09_temp1.runde_txt,
		min(s09_temp1.blinker) AS blinker,
		min(s09_temp1.blinker_seq) as blinker_seq,
		min(s09_temp1.s09_entf_s_rounded_min) AS s09_entf_s_rounded_min,
		row_number() OVER (PARTITION BY s09_temp1.runde_txt ORDER BY min(s09_temp1.s09_entf_s_rounded_min)) as blinker_kum,
		(100::numeric/30::numeric)*row_number() OVER (PARTITION BY s09_temp1.runde_txt ORDER BY min(s09_temp1.s09_entf_s_rounded_min)) as blinker_kum_rel

		FROM
			(
			SELECT 
			min(t_can_sxx_gesamt_aggr_zeit_blinker.znr_aggr) AS znr_aggr,
			t_can_sxx_gesamt_aggr_zeit_blinker.vp,
			min(t_can_sxx_gesamt_aggr_zeit_blinker.zeit_s_rounded) AS zeit_s_rounded,
			min(t_can_sxx_gesamt_aggr_zeit_blinker.runde) AS runde,
			t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt,
			min(t_can_sxx_gesamt_aggr_zeit_blinker.blinker) AS blinker,
			t_can_sxx_gesamt_aggr_zeit_blinker.blinker_seq,
			min(t_can_sxx_gesamt_aggr_zeit_blinker.s09_entf_s_rounded) AS s09_entf_s_rounded_min
			
			FROM 
			t_can_sxx_gesamt_aggr_zeit_blinker 
			
			WHERE
			t_can_sxx_gesamt_aggr_zeit_blinker.s09_entf_s_rounded >= -15 AND
			t_can_sxx_gesamt_aggr_zeit_blinker.s09_entf_s_rounded <= 5 AND 
			t_can_sxx_gesamt_aggr_zeit_blinker.blinker = 1
			
			GROUP BY 
			t_can_sxx_gesamt_aggr_zeit_blinker.vp, 
			t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt, 
			t_can_sxx_gesamt_aggr_zeit_blinker.blinker_seq
			
			ORDER BY 
			t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt,
			t_can_sxx_gesamt_aggr_zeit_blinker.vp
			)	s09_temp1

		GROUP BY
		s09_temp1.vp,
		s09_temp1.runde_txt

		ORDER BY
		s09_temp1.runde_txt,
		min(s09_temp1.s09_entf_s_rounded_min)
	) s09_temp2

	GROUP BY
	s09_temp2.runde_txt,
	s09_temp2.s09_entf_s_rounded_min

	ORDER BY
	s09_temp2.runde_txt,
	s09_temp2.s09_entf_s_rounded_min
) s09_temp3
ON 
t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt = s09_temp3.runde_txt AND
t_can_sxx_gesamt_aggr_zeit_blinker.s09_entf_s_rounded = s09_temp3.s09_entf_s_rounded_min


LEFT OUTER JOIN
( 
	SELECT
	min(s10_temp2.znr_aggr) as znr_aggr,
	min(s10_temp2.zeit_s_rounded) as zeit_s_rounded,
	s10_temp2.runde_txt,
	min(s10_temp2.blinker) as blinker,
	s10_temp2.s10_entf_s_rounded_min,
	max(s10_temp2.blinker_kum_rel) as blinker_kum_rel

	FROM
	(
		SELECT
		min(s10_temp1.znr_aggr) as znr_aggr,
		s10_temp1.vp,
		min(s10_temp1.zeit_s_rounded) as zeit_s_rounded,
		s10_temp1.runde_txt,
		min(s10_temp1.blinker) AS blinker,
		min(s10_temp1.blinker_seq) as blinker_seq,
		min(s10_temp1.s10_entf_s_rounded_min) AS s10_entf_s_rounded_min,
		row_number() OVER (PARTITION BY s10_temp1.runde_txt ORDER BY min(s10_temp1.s10_entf_s_rounded_min)) as blinker_kum,
		(100::numeric/30::numeric)*row_number() OVER (PARTITION BY s10_temp1.runde_txt ORDER BY min(s10_temp1.s10_entf_s_rounded_min)) as blinker_kum_rel

		FROM
			(
			SELECT 
			min(t_can_sxx_gesamt_aggr_zeit_blinker.znr_aggr) AS znr_aggr,
			t_can_sxx_gesamt_aggr_zeit_blinker.vp,
			min(t_can_sxx_gesamt_aggr_zeit_blinker.zeit_s_rounded) AS zeit_s_rounded,
			min(t_can_sxx_gesamt_aggr_zeit_blinker.runde) AS runde,
			t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt,
			min(t_can_sxx_gesamt_aggr_zeit_blinker.blinker) AS blinker,
			t_can_sxx_gesamt_aggr_zeit_blinker.blinker_seq,
			min(t_can_sxx_gesamt_aggr_zeit_blinker.s10_entf_s_rounded) AS s10_entf_s_rounded_min
			
			FROM 
			t_can_sxx_gesamt_aggr_zeit_blinker 
			
			WHERE
			t_can_sxx_gesamt_aggr_zeit_blinker.s10_entf_s_rounded >= -15 AND
			t_can_sxx_gesamt_aggr_zeit_blinker.s10_entf_s_rounded <= 5 AND 
			t_can_sxx_gesamt_aggr_zeit_blinker.blinker = 1
			
			GROUP BY 
			t_can_sxx_gesamt_aggr_zeit_blinker.vp, 
			t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt, 
			t_can_sxx_gesamt_aggr_zeit_blinker.blinker_seq
			
			ORDER BY 
			t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt,
			t_can_sxx_gesamt_aggr_zeit_blinker.vp
			)	s10_temp1

		GROUP BY
		s10_temp1.vp,
		s10_temp1.runde_txt

		ORDER BY
		s10_temp1.runde_txt,
		min(s10_temp1.s10_entf_s_rounded_min)
	) s10_temp2

	GROUP BY
	s10_temp2.runde_txt,
	s10_temp2.s10_entf_s_rounded_min

	ORDER BY
	s10_temp2.runde_txt,
	s10_temp2.s10_entf_s_rounded_min
) s10_temp3
ON 
t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt = s10_temp3.runde_txt AND
t_can_sxx_gesamt_aggr_zeit_blinker.s10_entf_s_rounded = s10_temp3.s10_entf_s_rounded_min


LEFT OUTER JOIN
( 
	SELECT
	min(s11_temp2.znr_aggr) as znr_aggr,
	min(s11_temp2.zeit_s_rounded) as zeit_s_rounded,
	s11_temp2.runde_txt,
	min(s11_temp2.blinker) as blinker,
	s11_temp2.s11_entf_s_rounded_min,
	max(s11_temp2.blinker_kum_rel) as blinker_kum_rel

	FROM
	(
		SELECT
		min(s11_temp1.znr_aggr) as znr_aggr,
		s11_temp1.vp,
		min(s11_temp1.zeit_s_rounded) as zeit_s_rounded,
		s11_temp1.runde_txt,
		min(s11_temp1.blinker) AS blinker,
		min(s11_temp1.blinker_seq) as blinker_seq,
		min(s11_temp1.s11_entf_s_rounded_min) AS s11_entf_s_rounded_min,
		row_number() OVER (PARTITION BY s11_temp1.runde_txt ORDER BY min(s11_temp1.s11_entf_s_rounded_min)) as blinker_kum,
		(100::numeric/30::numeric)*row_number() OVER (PARTITION BY s11_temp1.runde_txt ORDER BY min(s11_temp1.s11_entf_s_rounded_min)) as blinker_kum_rel

		FROM
			(
			SELECT 
			min(t_can_sxx_gesamt_aggr_zeit_blinker.znr_aggr) AS znr_aggr,
			t_can_sxx_gesamt_aggr_zeit_blinker.vp,
			min(t_can_sxx_gesamt_aggr_zeit_blinker.zeit_s_rounded) AS zeit_s_rounded,
			min(t_can_sxx_gesamt_aggr_zeit_blinker.runde) AS runde,
			t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt,
			min(t_can_sxx_gesamt_aggr_zeit_blinker.blinker) AS blinker,
			t_can_sxx_gesamt_aggr_zeit_blinker.blinker_seq,
			min(t_can_sxx_gesamt_aggr_zeit_blinker.s11_entf_s_rounded) AS s11_entf_s_rounded_min
			
			FROM 
			t_can_sxx_gesamt_aggr_zeit_blinker 
			
			WHERE
			t_can_sxx_gesamt_aggr_zeit_blinker.s11_entf_s_rounded >= -15 AND
			t_can_sxx_gesamt_aggr_zeit_blinker.s11_entf_s_rounded <= 5 AND 
			t_can_sxx_gesamt_aggr_zeit_blinker.blinker = 1
			
			GROUP BY 
			t_can_sxx_gesamt_aggr_zeit_blinker.vp, 
			t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt, 
			t_can_sxx_gesamt_aggr_zeit_blinker.blinker_seq
			
			ORDER BY 
			t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt,
			t_can_sxx_gesamt_aggr_zeit_blinker.vp
			)	s11_temp1

		GROUP BY
		s11_temp1.vp,
		s11_temp1.runde_txt

		ORDER BY
		s11_temp1.runde_txt,
		min(s11_temp1.s11_entf_s_rounded_min)
	) s11_temp2

	GROUP BY
	s11_temp2.runde_txt,
	s11_temp2.s11_entf_s_rounded_min

	ORDER BY
	s11_temp2.runde_txt,
	s11_temp2.s11_entf_s_rounded_min
) s11_temp3
ON 
t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt = s11_temp3.runde_txt AND
t_can_sxx_gesamt_aggr_zeit_blinker.s11_entf_s_rounded = s11_temp3.s11_entf_s_rounded_min


LEFT OUTER JOIN
( 
	SELECT
	min(s12_temp2.znr_aggr) as znr_aggr,
	min(s12_temp2.zeit_s_rounded) as zeit_s_rounded,
	s12_temp2.runde_txt,
	min(s12_temp2.blinker) as blinker,
	s12_temp2.s12_entf_s_rounded_min,
	max(s12_temp2.blinker_kum_rel) as blinker_kum_rel

	FROM
	(
		SELECT
		min(s12_temp1.znr_aggr) as znr_aggr,
		s12_temp1.vp,
		min(s12_temp1.zeit_s_rounded) as zeit_s_rounded,
		s12_temp1.runde_txt,
		min(s12_temp1.blinker) AS blinker,
		min(s12_temp1.blinker_seq) as blinker_seq,
		min(s12_temp1.s12_entf_s_rounded_min) AS s12_entf_s_rounded_min,
		row_number() OVER (PARTITION BY s12_temp1.runde_txt ORDER BY min(s12_temp1.s12_entf_s_rounded_min)) as blinker_kum,
		(100::numeric/30::numeric)*row_number() OVER (PARTITION BY s12_temp1.runde_txt ORDER BY min(s12_temp1.s12_entf_s_rounded_min)) as blinker_kum_rel

		FROM
			(
			SELECT 
			min(t_can_sxx_gesamt_aggr_zeit_blinker.znr_aggr) AS znr_aggr,
			t_can_sxx_gesamt_aggr_zeit_blinker.vp,
			min(t_can_sxx_gesamt_aggr_zeit_blinker.zeit_s_rounded) AS zeit_s_rounded,
			min(t_can_sxx_gesamt_aggr_zeit_blinker.runde) AS runde,
			t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt,
			min(t_can_sxx_gesamt_aggr_zeit_blinker.blinker) AS blinker,
			t_can_sxx_gesamt_aggr_zeit_blinker.blinker_seq,
			min(t_can_sxx_gesamt_aggr_zeit_blinker.s12_entf_s_rounded) AS s12_entf_s_rounded_min
			
			FROM 
			t_can_sxx_gesamt_aggr_zeit_blinker 
			
			WHERE
			t_can_sxx_gesamt_aggr_zeit_blinker.s12_entf_s_rounded >= -15 AND
			t_can_sxx_gesamt_aggr_zeit_blinker.s12_entf_s_rounded <= 5 AND 
			t_can_sxx_gesamt_aggr_zeit_blinker.blinker = -1
			
			GROUP BY 
			t_can_sxx_gesamt_aggr_zeit_blinker.vp, 
			t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt, 
			t_can_sxx_gesamt_aggr_zeit_blinker.blinker_seq
			
			ORDER BY 
			t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt,
			t_can_sxx_gesamt_aggr_zeit_blinker.vp
			)	s12_temp1

		GROUP BY
		s12_temp1.vp,
		s12_temp1.runde_txt

		ORDER BY
		s12_temp1.runde_txt,
		min(s12_temp1.s12_entf_s_rounded_min)
	) s12_temp2

	GROUP BY
	s12_temp2.runde_txt,
	s12_temp2.s12_entf_s_rounded_min

	ORDER BY
	s12_temp2.runde_txt,
	s12_temp2.s12_entf_s_rounded_min
) s12_temp3
ON 
t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt = s12_temp3.runde_txt AND
t_can_sxx_gesamt_aggr_zeit_blinker.s12_entf_s_rounded = s12_temp3.s12_entf_s_rounded_min


LEFT OUTER JOIN
( 
	SELECT
	min(s13_temp2.znr_aggr) as znr_aggr,
	min(s13_temp2.zeit_s_rounded) as zeit_s_rounded,
	s13_temp2.runde_txt,
	min(s13_temp2.blinker) as blinker,
	s13_temp2.s13_entf_s_rounded_min,
	max(s13_temp2.blinker_kum_rel) as blinker_kum_rel

	FROM
	(
		SELECT
		min(s13_temp1.znr_aggr) as znr_aggr,
		s13_temp1.vp,
		min(s13_temp1.zeit_s_rounded) as zeit_s_rounded,
		s13_temp1.runde_txt,
		min(s13_temp1.blinker) AS blinker,
		min(s13_temp1.blinker_seq) as blinker_seq,
		min(s13_temp1.s13_entf_s_rounded_min) AS s13_entf_s_rounded_min,
		row_number() OVER (PARTITION BY s13_temp1.runde_txt ORDER BY min(s13_temp1.s13_entf_s_rounded_min)) as blinker_kum,
		(100::numeric/30::numeric)*row_number() OVER (PARTITION BY s13_temp1.runde_txt ORDER BY min(s13_temp1.s13_entf_s_rounded_min)) as blinker_kum_rel

		FROM
			(
			SELECT 
			min(t_can_sxx_gesamt_aggr_zeit_blinker.znr_aggr) AS znr_aggr,
			t_can_sxx_gesamt_aggr_zeit_blinker.vp,
			min(t_can_sxx_gesamt_aggr_zeit_blinker.zeit_s_rounded) AS zeit_s_rounded,
			min(t_can_sxx_gesamt_aggr_zeit_blinker.runde) AS runde,
			t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt,
			min(t_can_sxx_gesamt_aggr_zeit_blinker.blinker) AS blinker,
			t_can_sxx_gesamt_aggr_zeit_blinker.blinker_seq,
			min(t_can_sxx_gesamt_aggr_zeit_blinker.s13_entf_s_rounded) AS s13_entf_s_rounded_min
			
			FROM 
			t_can_sxx_gesamt_aggr_zeit_blinker 
			
			WHERE
			t_can_sxx_gesamt_aggr_zeit_blinker.s13_entf_s_rounded >= -15 AND
			t_can_sxx_gesamt_aggr_zeit_blinker.s13_entf_s_rounded <= 5 AND 
			t_can_sxx_gesamt_aggr_zeit_blinker.blinker = 1
			
			GROUP BY 
			t_can_sxx_gesamt_aggr_zeit_blinker.vp, 
			t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt, 
			t_can_sxx_gesamt_aggr_zeit_blinker.blinker_seq
			
			ORDER BY 
			t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt,
			t_can_sxx_gesamt_aggr_zeit_blinker.vp
			)	s13_temp1

		GROUP BY
		s13_temp1.vp,
		s13_temp1.runde_txt

		ORDER BY
		s13_temp1.runde_txt,
		min(s13_temp1.s13_entf_s_rounded_min)
	) s13_temp2

	GROUP BY
	s13_temp2.runde_txt,
	s13_temp2.s13_entf_s_rounded_min

	ORDER BY
	s13_temp2.runde_txt,
	s13_temp2.s13_entf_s_rounded_min
) s13_temp3
ON 
t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt = s13_temp3.runde_txt AND
t_can_sxx_gesamt_aggr_zeit_blinker.s13_entf_s_rounded = s13_temp3.s13_entf_s_rounded_min


LEFT OUTER JOIN
( 
	SELECT
	min(s14_temp2.znr_aggr) as znr_aggr,
	min(s14_temp2.zeit_s_rounded) as zeit_s_rounded,
	s14_temp2.runde_txt,
	min(s14_temp2.blinker) as blinker,
	s14_temp2.s14_entf_s_rounded_min,
	max(s14_temp2.blinker_kum_rel) as blinker_kum_rel

	FROM
	(
		SELECT
		min(s14_temp1.znr_aggr) as znr_aggr,
		s14_temp1.vp,
		min(s14_temp1.zeit_s_rounded) as zeit_s_rounded,
		s14_temp1.runde_txt,
		min(s14_temp1.blinker) AS blinker,
		min(s14_temp1.blinker_seq) as blinker_seq,
		min(s14_temp1.s14_entf_s_rounded_min) AS s14_entf_s_rounded_min,
		row_number() OVER (PARTITION BY s14_temp1.runde_txt ORDER BY min(s14_temp1.s14_entf_s_rounded_min)) as blinker_kum,
		(100::numeric/30::numeric)*row_number() OVER (PARTITION BY s14_temp1.runde_txt ORDER BY min(s14_temp1.s14_entf_s_rounded_min)) as blinker_kum_rel

		FROM
			(
			SELECT 
			min(t_can_sxx_gesamt_aggr_zeit_blinker.znr_aggr) AS znr_aggr,
			t_can_sxx_gesamt_aggr_zeit_blinker.vp,
			min(t_can_sxx_gesamt_aggr_zeit_blinker.zeit_s_rounded) AS zeit_s_rounded,
			min(t_can_sxx_gesamt_aggr_zeit_blinker.runde) AS runde,
			t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt,
			min(t_can_sxx_gesamt_aggr_zeit_blinker.blinker) AS blinker,
			t_can_sxx_gesamt_aggr_zeit_blinker.blinker_seq,
			min(t_can_sxx_gesamt_aggr_zeit_blinker.s14_entf_s_rounded) AS s14_entf_s_rounded_min
			
			FROM 
			t_can_sxx_gesamt_aggr_zeit_blinker 
			
			WHERE
			t_can_sxx_gesamt_aggr_zeit_blinker.s14_entf_s_rounded >= -15 AND
			t_can_sxx_gesamt_aggr_zeit_blinker.s14_entf_s_rounded <= 5 AND 
			t_can_sxx_gesamt_aggr_zeit_blinker.blinker = -1
			
			GROUP BY 
			t_can_sxx_gesamt_aggr_zeit_blinker.vp, 
			t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt, 
			t_can_sxx_gesamt_aggr_zeit_blinker.blinker_seq
			
			ORDER BY 
			t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt,
			t_can_sxx_gesamt_aggr_zeit_blinker.vp
			)	s14_temp1

		GROUP BY
		s14_temp1.vp,
		s14_temp1.runde_txt

		ORDER BY
		s14_temp1.runde_txt,
		min(s14_temp1.s14_entf_s_rounded_min)
	) s14_temp2

	GROUP BY
	s14_temp2.runde_txt,
	s14_temp2.s14_entf_s_rounded_min

	ORDER BY
	s14_temp2.runde_txt,
	s14_temp2.s14_entf_s_rounded_min
) s14_temp3
ON 
t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt = s14_temp3.runde_txt AND
t_can_sxx_gesamt_aggr_zeit_blinker.s14_entf_s_rounded = s14_temp3.s14_entf_s_rounded_min


LEFT OUTER JOIN
( 
	SELECT
	min(s15_temp2.znr_aggr) as znr_aggr,
	min(s15_temp2.zeit_s_rounded) as zeit_s_rounded,
	s15_temp2.runde_txt,
	min(s15_temp2.blinker) as blinker,
	s15_temp2.s15_entf_s_rounded_min,
	max(s15_temp2.blinker_kum_rel) as blinker_kum_rel

	FROM
	(
		SELECT
		min(s15_temp1.znr_aggr) as znr_aggr,
		s15_temp1.vp,
		min(s15_temp1.zeit_s_rounded) as zeit_s_rounded,
		s15_temp1.runde_txt,
		min(s15_temp1.blinker) AS blinker,
		min(s15_temp1.blinker_seq) as blinker_seq,
		min(s15_temp1.s15_entf_s_rounded_min) AS s15_entf_s_rounded_min,
		row_number() OVER (PARTITION BY s15_temp1.runde_txt ORDER BY min(s15_temp1.s15_entf_s_rounded_min)) as blinker_kum,
		(100::numeric/30::numeric)*row_number() OVER (PARTITION BY s15_temp1.runde_txt ORDER BY min(s15_temp1.s15_entf_s_rounded_min)) as blinker_kum_rel

		FROM
			(
			SELECT 
			min(t_can_sxx_gesamt_aggr_zeit_blinker.znr_aggr) AS znr_aggr,
			t_can_sxx_gesamt_aggr_zeit_blinker.vp,
			min(t_can_sxx_gesamt_aggr_zeit_blinker.zeit_s_rounded) AS zeit_s_rounded,
			min(t_can_sxx_gesamt_aggr_zeit_blinker.runde) AS runde,
			t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt,
			min(t_can_sxx_gesamt_aggr_zeit_blinker.blinker) AS blinker,
			t_can_sxx_gesamt_aggr_zeit_blinker.blinker_seq,
			min(t_can_sxx_gesamt_aggr_zeit_blinker.s15_entf_s_rounded) AS s15_entf_s_rounded_min
			
			FROM 
			t_can_sxx_gesamt_aggr_zeit_blinker 
			
			WHERE
			t_can_sxx_gesamt_aggr_zeit_blinker.s15_entf_s_rounded >= -15 AND
			t_can_sxx_gesamt_aggr_zeit_blinker.s15_entf_s_rounded <= 5 AND 
			t_can_sxx_gesamt_aggr_zeit_blinker.blinker = -1
			
			GROUP BY 
			t_can_sxx_gesamt_aggr_zeit_blinker.vp, 
			t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt, 
			t_can_sxx_gesamt_aggr_zeit_blinker.blinker_seq
			
			ORDER BY 
			t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt,
			t_can_sxx_gesamt_aggr_zeit_blinker.vp
			)	s15_temp1

		GROUP BY
		s15_temp1.vp,
		s15_temp1.runde_txt

		ORDER BY
		s15_temp1.runde_txt,
		min(s15_temp1.s15_entf_s_rounded_min)
	) s15_temp2

	GROUP BY
	s15_temp2.runde_txt,
	s15_temp2.s15_entf_s_rounded_min

	ORDER BY
	s15_temp2.runde_txt,
	s15_temp2.s15_entf_s_rounded_min
) s15_temp3
ON 
t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt = s15_temp3.runde_txt AND
t_can_sxx_gesamt_aggr_zeit_blinker.s15_entf_s_rounded = s15_temp3.s15_entf_s_rounded_min


LEFT OUTER JOIN
( 
	SELECT
	min(s16_temp2.znr_aggr) as znr_aggr,
	min(s16_temp2.zeit_s_rounded) as zeit_s_rounded,
	s16_temp2.runde_txt,
	min(s16_temp2.blinker) as blinker,
	s16_temp2.s16_entf_s_rounded_min,
	max(s16_temp2.blinker_kum_rel) as blinker_kum_rel

	FROM
	(
		SELECT
		min(s16_temp1.znr_aggr) as znr_aggr,
		s16_temp1.vp,
		min(s16_temp1.zeit_s_rounded) as zeit_s_rounded,
		s16_temp1.runde_txt,
		min(s16_temp1.blinker) AS blinker,
		min(s16_temp1.blinker_seq) as blinker_seq,
		min(s16_temp1.s16_entf_s_rounded_min) AS s16_entf_s_rounded_min,
		row_number() OVER (PARTITION BY s16_temp1.runde_txt ORDER BY min(s16_temp1.s16_entf_s_rounded_min)) as blinker_kum,
		(100::numeric/30::numeric)*row_number() OVER (PARTITION BY s16_temp1.runde_txt ORDER BY min(s16_temp1.s16_entf_s_rounded_min)) as blinker_kum_rel

		FROM
			(
			SELECT 
			min(t_can_sxx_gesamt_aggr_zeit_blinker.znr_aggr) AS znr_aggr,
			t_can_sxx_gesamt_aggr_zeit_blinker.vp,
			min(t_can_sxx_gesamt_aggr_zeit_blinker.zeit_s_rounded) AS zeit_s_rounded,
			min(t_can_sxx_gesamt_aggr_zeit_blinker.runde) AS runde,
			t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt,
			min(t_can_sxx_gesamt_aggr_zeit_blinker.blinker) AS blinker,
			t_can_sxx_gesamt_aggr_zeit_blinker.blinker_seq,
			min(t_can_sxx_gesamt_aggr_zeit_blinker.s16_entf_s_rounded) AS s16_entf_s_rounded_min
			
			FROM 
			t_can_sxx_gesamt_aggr_zeit_blinker 
			
			WHERE
			t_can_sxx_gesamt_aggr_zeit_blinker.s16_entf_s_rounded >= -15 AND
			t_can_sxx_gesamt_aggr_zeit_blinker.s16_entf_s_rounded <= 5 AND 
			t_can_sxx_gesamt_aggr_zeit_blinker.blinker = 1
			
			GROUP BY 
			t_can_sxx_gesamt_aggr_zeit_blinker.vp, 
			t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt, 
			t_can_sxx_gesamt_aggr_zeit_blinker.blinker_seq
			
			ORDER BY 
			t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt,
			t_can_sxx_gesamt_aggr_zeit_blinker.vp
			)	s16_temp1

		GROUP BY
		s16_temp1.vp,
		s16_temp1.runde_txt

		ORDER BY
		s16_temp1.runde_txt,
		min(s16_temp1.s16_entf_s_rounded_min)
	) s16_temp2

	GROUP BY
	s16_temp2.runde_txt,
	s16_temp2.s16_entf_s_rounded_min

	ORDER BY
	s16_temp2.runde_txt,
	s16_temp2.s16_entf_s_rounded_min
) s16_temp3
ON 
t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt = s16_temp3.runde_txt AND
t_can_sxx_gesamt_aggr_zeit_blinker.s16_entf_s_rounded = s16_temp3.s16_entf_s_rounded_min


LEFT OUTER JOIN
( 
	SELECT
	min(s17_temp2.znr_aggr) as znr_aggr,
	min(s17_temp2.zeit_s_rounded) as zeit_s_rounded,
	s17_temp2.runde_txt,
	min(s17_temp2.blinker) as blinker,
	s17_temp2.s17_entf_s_rounded_min,
	max(s17_temp2.blinker_kum_rel) as blinker_kum_rel

	FROM
	(
		SELECT
		min(s17_temp1.znr_aggr) as znr_aggr,
		s17_temp1.vp,
		min(s17_temp1.zeit_s_rounded) as zeit_s_rounded,
		s17_temp1.runde_txt,
		min(s17_temp1.blinker) AS blinker,
		min(s17_temp1.blinker_seq) as blinker_seq,
		min(s17_temp1.s17_entf_s_rounded_min) AS s17_entf_s_rounded_min,
		row_number() OVER (PARTITION BY s17_temp1.runde_txt ORDER BY min(s17_temp1.s17_entf_s_rounded_min)) as blinker_kum,
		(100::numeric/30::numeric)*row_number() OVER (PARTITION BY s17_temp1.runde_txt ORDER BY min(s17_temp1.s17_entf_s_rounded_min)) as blinker_kum_rel

		FROM
			(
			SELECT 
			min(t_can_sxx_gesamt_aggr_zeit_blinker.znr_aggr) AS znr_aggr,
			t_can_sxx_gesamt_aggr_zeit_blinker.vp,
			min(t_can_sxx_gesamt_aggr_zeit_blinker.zeit_s_rounded) AS zeit_s_rounded,
			min(t_can_sxx_gesamt_aggr_zeit_blinker.runde) AS runde,
			t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt,
			min(t_can_sxx_gesamt_aggr_zeit_blinker.blinker) AS blinker,
			t_can_sxx_gesamt_aggr_zeit_blinker.blinker_seq,
			min(t_can_sxx_gesamt_aggr_zeit_blinker.s17_entf_s_rounded) AS s17_entf_s_rounded_min
			
			FROM 
			t_can_sxx_gesamt_aggr_zeit_blinker 
			
			WHERE
			t_can_sxx_gesamt_aggr_zeit_blinker.s17_entf_s_rounded >= -15 AND
			t_can_sxx_gesamt_aggr_zeit_blinker.s17_entf_s_rounded <= 5 AND 
			t_can_sxx_gesamt_aggr_zeit_blinker.blinker = -1
			
			GROUP BY 
			t_can_sxx_gesamt_aggr_zeit_blinker.vp, 
			t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt, 
			t_can_sxx_gesamt_aggr_zeit_blinker.blinker_seq
			
			ORDER BY 
			t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt,
			t_can_sxx_gesamt_aggr_zeit_blinker.vp
			)	s17_temp1

		GROUP BY
		s17_temp1.vp,
		s17_temp1.runde_txt

		ORDER BY
		s17_temp1.runde_txt,
		min(s17_temp1.s17_entf_s_rounded_min)
	) s17_temp2

	GROUP BY
	s17_temp2.runde_txt,
	s17_temp2.s17_entf_s_rounded_min

	ORDER BY
	s17_temp2.runde_txt,
	s17_temp2.s17_entf_s_rounded_min
) s17_temp3
ON 
t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt = s17_temp3.runde_txt AND
t_can_sxx_gesamt_aggr_zeit_blinker.s17_entf_s_rounded = s17_temp3.s17_entf_s_rounded_min


LEFT OUTER JOIN
( 
	SELECT
	min(s18_temp2.znr_aggr) as znr_aggr,
	min(s18_temp2.zeit_s_rounded) as zeit_s_rounded,
	s18_temp2.runde_txt,
	min(s18_temp2.blinker) as blinker,
	s18_temp2.s18_entf_s_rounded_min,
	max(s18_temp2.blinker_kum_rel) as blinker_kum_rel

	FROM
	(
		SELECT
		min(s18_temp1.znr_aggr) as znr_aggr,
		s18_temp1.vp,
		min(s18_temp1.zeit_s_rounded) as zeit_s_rounded,
		s18_temp1.runde_txt,
		min(s18_temp1.blinker) AS blinker,
		min(s18_temp1.blinker_seq) as blinker_seq,
		min(s18_temp1.s18_entf_s_rounded_min) AS s18_entf_s_rounded_min,
		row_number() OVER (PARTITION BY s18_temp1.runde_txt ORDER BY min(s18_temp1.s18_entf_s_rounded_min)) as blinker_kum,
		(100::numeric/30::numeric)*row_number() OVER (PARTITION BY s18_temp1.runde_txt ORDER BY min(s18_temp1.s18_entf_s_rounded_min)) as blinker_kum_rel

		FROM
			(
			SELECT 
			min(t_can_sxx_gesamt_aggr_zeit_blinker.znr_aggr) AS znr_aggr,
			t_can_sxx_gesamt_aggr_zeit_blinker.vp,
			min(t_can_sxx_gesamt_aggr_zeit_blinker.zeit_s_rounded) AS zeit_s_rounded,
			min(t_can_sxx_gesamt_aggr_zeit_blinker.runde) AS runde,
			t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt,
			min(t_can_sxx_gesamt_aggr_zeit_blinker.blinker) AS blinker,
			t_can_sxx_gesamt_aggr_zeit_blinker.blinker_seq,
			min(t_can_sxx_gesamt_aggr_zeit_blinker.s18_entf_s_rounded) AS s18_entf_s_rounded_min
			
			FROM 
			t_can_sxx_gesamt_aggr_zeit_blinker 
			
			WHERE
			t_can_sxx_gesamt_aggr_zeit_blinker.s18_entf_s_rounded >= -15 AND
			t_can_sxx_gesamt_aggr_zeit_blinker.s18_entf_s_rounded <= 5 AND 
			t_can_sxx_gesamt_aggr_zeit_blinker.blinker = 1
			
			GROUP BY 
			t_can_sxx_gesamt_aggr_zeit_blinker.vp, 
			t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt, 
			t_can_sxx_gesamt_aggr_zeit_blinker.blinker_seq
			
			ORDER BY 
			t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt,
			t_can_sxx_gesamt_aggr_zeit_blinker.vp
			)	s18_temp1

		GROUP BY
		s18_temp1.vp,
		s18_temp1.runde_txt

		ORDER BY
		s18_temp1.runde_txt,
		min(s18_temp1.s18_entf_s_rounded_min)
	) s18_temp2

	GROUP BY
	s18_temp2.runde_txt,
	s18_temp2.s18_entf_s_rounded_min

	ORDER BY
	s18_temp2.runde_txt,
	s18_temp2.s18_entf_s_rounded_min
) s18_temp3
ON 
t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt = s18_temp3.runde_txt AND
t_can_sxx_gesamt_aggr_zeit_blinker.s18_entf_s_rounded = s18_temp3.s18_entf_s_rounded_min

ORDER BY
t_can_sxx_gesamt_aggr_zeit_blinker.znr_aggr