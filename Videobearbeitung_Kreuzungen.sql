DROP TABLE IF EXISTS t_videoannot_sxx_t1_t2;
CREATE TABLE t_videoannot_sxx_t1_t2 AS

SELECT 
s01_zeit_t1.vp,
s01_zeit_t1.runde,
s01_zeit_t1.runde_txt,
s01_zeit_t1.s01_zeit_t1, s01_zeit_t2.s01_zeit_t2,
s02_zeit_t1.s02_zeit_t1, s02_zeit_t2.s02_zeit_t2,
s03_zeit_t1.s03_zeit_t1, s03_zeit_t2.s03_zeit_t2,
s04_zeit_t1.s04_zeit_t1, s04_zeit_t2.s04_zeit_t2,
s05_zeit_t1.s05_zeit_t1, s05_zeit_t2.s05_zeit_t2,
s06_zeit_t1.s06_zeit_t1, s06_zeit_t2.s06_zeit_t2,
s07_zeit_t1.s07_zeit_t1, s07_zeit_t2.s07_zeit_t2,
s08_zeit_t1.s08_zeit_t1, s08_zeit_t2.s08_zeit_t2,
s09_zeit_t1.s09_zeit_t1, s09_zeit_t2.s09_zeit_t2,
s10_zeit_t1.s10_zeit_t1, s10_zeit_t2.s10_zeit_t2,
s11_zeit_t1.s11_zeit_t1, s11_zeit_t2.s11_zeit_t2,
s12_zeit_t1.s12_zeit_t1, s12_zeit_t2.s12_zeit_t2,
s13_zeit_t1.s13_zeit_t1, s13_zeit_t2.s13_zeit_t2,
s14_zeit_t1.s14_zeit_t1, s14_zeit_t2.s14_zeit_t2,
s15_zeit_t1.s15_zeit_t1, s15_zeit_t2.s15_zeit_t2,
s16_zeit_t1.s16_zeit_t1, s16_zeit_t2.s16_zeit_t2,
s17_zeit_t1.s17_zeit_t1, s17_zeit_t2.s17_zeit_t2,
s18_zeit_t1.s18_zeit_t1, s18_zeit_t2.s18_zeit_t2


FROM 
(
	SELECT
	t_can_sxx_gesamt_aggr_zeit.vp,
	t_can_sxx_gesamt_aggr_zeit.runde,
	t_can_sxx_gesamt_aggr_zeit.runde_txt,
	min(to_char((to_timestamp((t_can_sxx_gesamt_aggr_zeit.zeit_s)::double precision) - ('01:00:00'::time without time zone)::interval), 'HH24:MI:SS'::text)) AS s01_zeit_t1

	FROM
	t_can_sxx_gesamt_aggr_zeit
	
	WHERE
	t_can_sxx_gesamt_aggr_zeit.s01_entf_m_rounded >= -16 AND
	t_can_sxx_gesamt_aggr_zeit.s01_entf_m_rounded <= -14

	GROUP BY 
	t_can_sxx_gesamt_aggr_zeit.vp, 
	t_can_sxx_gesamt_aggr_zeit.runde,
	t_can_sxx_gesamt_aggr_zeit.runde_txt 
) s01_zeit_t1

LEFT OUTER JOIN
(
	SELECT
	t_can_sxx_gesamt_aggr_zeit.vp,
	t_can_sxx_gesamt_aggr_zeit.runde,
	t_can_sxx_gesamt_aggr_zeit.runde_txt,
	min(to_char((to_timestamp((t_can_sxx_gesamt_aggr_zeit.zeit_s)::double precision) - ('01:00:00'::time without time zone)::interval), 'HH24:MI:SS'::text)) AS s01_zeit_t2

	FROM
	t_can_sxx_gesamt_aggr_zeit
	
	WHERE
	t_can_sxx_gesamt_aggr_zeit.s01_entf_m_rounded = 5

	GROUP BY 
	t_can_sxx_gesamt_aggr_zeit.vp, 
	t_can_sxx_gesamt_aggr_zeit.runde,
	t_can_sxx_gesamt_aggr_zeit.runde_txt 
) s01_zeit_t2 ON s01_zeit_t2.vp = s01_zeit_t1.vp AND s01_zeit_t2.runde_txt = s01_zeit_t1.runde_txt

LEFT OUTER JOIN
(
	SELECT
	t_can_sxx_gesamt_aggr_zeit.vp,
	t_can_sxx_gesamt_aggr_zeit.runde,
	t_can_sxx_gesamt_aggr_zeit.runde_txt,
	min(to_char((to_timestamp((t_can_sxx_gesamt_aggr_zeit.zeit_s)::double precision) - ('01:00:00'::time without time zone)::interval), 'HH24:MI:SS'::text)) AS s02_zeit_t1

	FROM
	t_can_sxx_gesamt_aggr_zeit
	
	WHERE
	t_can_sxx_gesamt_aggr_zeit.s02_entf_m_rounded >= -16 AND
	t_can_sxx_gesamt_aggr_zeit.s02_entf_m_rounded <= -14

	GROUP BY 
	t_can_sxx_gesamt_aggr_zeit.vp, 
	t_can_sxx_gesamt_aggr_zeit.runde,
	t_can_sxx_gesamt_aggr_zeit.runde_txt 
) s02_zeit_t1 ON s02_zeit_t1.vp = s01_zeit_t1.vp AND s02_zeit_t1.runde_txt = s01_zeit_t1.runde_txt

LEFT OUTER JOIN
(
	SELECT
	t_can_sxx_gesamt_aggr_zeit.vp,
	t_can_sxx_gesamt_aggr_zeit.runde,
	t_can_sxx_gesamt_aggr_zeit.runde_txt,
	min(to_char((to_timestamp((t_can_sxx_gesamt_aggr_zeit.zeit_s)::double precision) - ('01:00:00'::time without time zone)::interval), 'HH24:MI:SS'::text)) AS s02_zeit_t2

	FROM
	t_can_sxx_gesamt_aggr_zeit
	
	WHERE
	t_can_sxx_gesamt_aggr_zeit.s02_entf_m_rounded = 5

	GROUP BY 
	t_can_sxx_gesamt_aggr_zeit.vp, 
	t_can_sxx_gesamt_aggr_zeit.runde,
	t_can_sxx_gesamt_aggr_zeit.runde_txt 
) s02_zeit_t2 ON s02_zeit_t2.vp = s01_zeit_t1.vp AND s02_zeit_t2.runde_txt = s01_zeit_t1.runde_txt

LEFT OUTER JOIN
(
	SELECT
	t_can_sxx_gesamt_aggr_zeit.vp,
	t_can_sxx_gesamt_aggr_zeit.runde,
	t_can_sxx_gesamt_aggr_zeit.runde_txt,
	min(to_char((to_timestamp((t_can_sxx_gesamt_aggr_zeit.zeit_s)::double precision) - ('01:00:00'::time without time zone)::interval), 'HH24:MI:SS'::text)) AS s03_zeit_t1

	FROM
	t_can_sxx_gesamt_aggr_zeit
	
	WHERE
	t_can_sxx_gesamt_aggr_zeit.s03_entf_m_rounded >= -16 AND
	t_can_sxx_gesamt_aggr_zeit.s03_entf_m_rounded <= -14

	GROUP BY 
	t_can_sxx_gesamt_aggr_zeit.vp, 
	t_can_sxx_gesamt_aggr_zeit.runde,
	t_can_sxx_gesamt_aggr_zeit.runde_txt 
) s03_zeit_t1 ON s03_zeit_t1.vp = s01_zeit_t1.vp AND s03_zeit_t1.runde_txt = s01_zeit_t1.runde_txt

LEFT OUTER JOIN
(
	SELECT
	t_can_sxx_gesamt_aggr_zeit.vp,
	t_can_sxx_gesamt_aggr_zeit.runde,
	t_can_sxx_gesamt_aggr_zeit.runde_txt,
	min(to_char((to_timestamp((t_can_sxx_gesamt_aggr_zeit.zeit_s)::double precision) - ('01:00:00'::time without time zone)::interval), 'HH24:MI:SS'::text)) AS s03_zeit_t2

	FROM
	t_can_sxx_gesamt_aggr_zeit
	
	WHERE
	t_can_sxx_gesamt_aggr_zeit.s03_entf_m_rounded = 5

	GROUP BY 
	t_can_sxx_gesamt_aggr_zeit.vp, 
	t_can_sxx_gesamt_aggr_zeit.runde,
	t_can_sxx_gesamt_aggr_zeit.runde_txt 
) s03_zeit_t2 ON s03_zeit_t2.vp = s01_zeit_t1.vp AND s03_zeit_t2.runde_txt = s01_zeit_t1.runde_txt

LEFT OUTER JOIN
(
	SELECT
	t_can_sxx_gesamt_aggr_zeit.vp,
	t_can_sxx_gesamt_aggr_zeit.runde,
	t_can_sxx_gesamt_aggr_zeit.runde_txt,
	min(to_char((to_timestamp((t_can_sxx_gesamt_aggr_zeit.zeit_s)::double precision) - ('01:00:00'::time without time zone)::interval), 'HH24:MI:SS'::text)) AS s04_zeit_t1

	FROM
	t_can_sxx_gesamt_aggr_zeit
	
	WHERE
	t_can_sxx_gesamt_aggr_zeit.s04_entf_m_rounded >= -16 AND
	t_can_sxx_gesamt_aggr_zeit.s04_entf_m_rounded <= -14

	GROUP BY 
	t_can_sxx_gesamt_aggr_zeit.vp, 
	t_can_sxx_gesamt_aggr_zeit.runde,
	t_can_sxx_gesamt_aggr_zeit.runde_txt 
) s04_zeit_t1 ON s04_zeit_t1.vp = s01_zeit_t1.vp AND s04_zeit_t1.runde_txt = s01_zeit_t1.runde_txt

LEFT OUTER JOIN
(
	SELECT
	t_can_sxx_gesamt_aggr_zeit.vp,
	t_can_sxx_gesamt_aggr_zeit.runde,
	t_can_sxx_gesamt_aggr_zeit.runde_txt,
	min(to_char((to_timestamp((t_can_sxx_gesamt_aggr_zeit.zeit_s)::double precision) - ('01:00:00'::time without time zone)::interval), 'HH24:MI:SS'::text)) AS s04_zeit_t2

	FROM
	t_can_sxx_gesamt_aggr_zeit
	
	WHERE
	t_can_sxx_gesamt_aggr_zeit.s04_entf_m_rounded = 5

	GROUP BY 
	t_can_sxx_gesamt_aggr_zeit.vp, 
	t_can_sxx_gesamt_aggr_zeit.runde,
	t_can_sxx_gesamt_aggr_zeit.runde_txt 
) s04_zeit_t2 ON s04_zeit_t2.vp = s01_zeit_t1.vp AND s04_zeit_t2.runde_txt = s01_zeit_t1.runde_txt

LEFT OUTER JOIN
(
	SELECT
	t_can_sxx_gesamt_aggr_zeit.vp,
	t_can_sxx_gesamt_aggr_zeit.runde,
	t_can_sxx_gesamt_aggr_zeit.runde_txt,
	min(to_char((to_timestamp((t_can_sxx_gesamt_aggr_zeit.zeit_s)::double precision) - ('01:00:00'::time without time zone)::interval), 'HH24:MI:SS'::text)) AS s05_zeit_t1

	FROM
	t_can_sxx_gesamt_aggr_zeit
	
	WHERE
	t_can_sxx_gesamt_aggr_zeit.s05_entf_m_rounded >= -16 AND
	t_can_sxx_gesamt_aggr_zeit.s05_entf_m_rounded <= -14

	GROUP BY 
	t_can_sxx_gesamt_aggr_zeit.vp, 
	t_can_sxx_gesamt_aggr_zeit.runde,
	t_can_sxx_gesamt_aggr_zeit.runde_txt 
) s05_zeit_t1 ON s05_zeit_t1.vp = s01_zeit_t1.vp AND s05_zeit_t1.runde_txt = s01_zeit_t1.runde_txt

LEFT OUTER JOIN
(
	SELECT
	t_can_sxx_gesamt_aggr_zeit.vp,
	t_can_sxx_gesamt_aggr_zeit.runde,
	t_can_sxx_gesamt_aggr_zeit.runde_txt,
	min(to_char((to_timestamp((t_can_sxx_gesamt_aggr_zeit.zeit_s)::double precision) - ('01:00:00'::time without time zone)::interval), 'HH24:MI:SS'::text)) AS s05_zeit_t2

	FROM
	t_can_sxx_gesamt_aggr_zeit
	
	WHERE
	t_can_sxx_gesamt_aggr_zeit.s05_entf_m_rounded = 5

	GROUP BY 
	t_can_sxx_gesamt_aggr_zeit.vp, 
	t_can_sxx_gesamt_aggr_zeit.runde,
	t_can_sxx_gesamt_aggr_zeit.runde_txt 
) s05_zeit_t2 ON s05_zeit_t2.vp = s01_zeit_t1.vp AND s05_zeit_t2.runde_txt = s01_zeit_t1.runde_txt

LEFT OUTER JOIN
(
	SELECT
	t_can_sxx_gesamt_aggr_zeit.vp,
	t_can_sxx_gesamt_aggr_zeit.runde,
	t_can_sxx_gesamt_aggr_zeit.runde_txt,
	min(to_char((to_timestamp((t_can_sxx_gesamt_aggr_zeit.zeit_s)::double precision) - ('01:00:00'::time without time zone)::interval), 'HH24:MI:SS'::text)) AS s06_zeit_t1

	FROM
	t_can_sxx_gesamt_aggr_zeit
	
	WHERE
	t_can_sxx_gesamt_aggr_zeit.s06_entf_m_rounded >= -16 AND
	t_can_sxx_gesamt_aggr_zeit.s06_entf_m_rounded <= -14

	GROUP BY 
	t_can_sxx_gesamt_aggr_zeit.vp, 
	t_can_sxx_gesamt_aggr_zeit.runde,
	t_can_sxx_gesamt_aggr_zeit.runde_txt 
) s06_zeit_t1 ON s06_zeit_t1.vp = s01_zeit_t1.vp AND s06_zeit_t1.runde_txt = s01_zeit_t1.runde_txt

LEFT OUTER JOIN
(
	SELECT
	t_can_sxx_gesamt_aggr_zeit.vp,
	t_can_sxx_gesamt_aggr_zeit.runde,
	t_can_sxx_gesamt_aggr_zeit.runde_txt,
	min(to_char((to_timestamp((t_can_sxx_gesamt_aggr_zeit.zeit_s)::double precision) - ('01:00:00'::time without time zone)::interval), 'HH24:MI:SS'::text)) AS s06_zeit_t2

	FROM
	t_can_sxx_gesamt_aggr_zeit
	
	WHERE
	t_can_sxx_gesamt_aggr_zeit.s06_entf_m_rounded = 5

	GROUP BY 
	t_can_sxx_gesamt_aggr_zeit.vp, 
	t_can_sxx_gesamt_aggr_zeit.runde,
	t_can_sxx_gesamt_aggr_zeit.runde_txt 
) s06_zeit_t2 ON s06_zeit_t2.vp = s01_zeit_t1.vp AND s06_zeit_t2.runde_txt = s01_zeit_t1.runde_txt

LEFT OUTER JOIN
(
	SELECT
	t_can_sxx_gesamt_aggr_zeit.vp,
	t_can_sxx_gesamt_aggr_zeit.runde,
	t_can_sxx_gesamt_aggr_zeit.runde_txt,
	min(to_char((to_timestamp((t_can_sxx_gesamt_aggr_zeit.zeit_s)::double precision) - ('01:00:00'::time without time zone)::interval), 'HH24:MI:SS'::text)) AS s07_zeit_t1

	FROM
	t_can_sxx_gesamt_aggr_zeit
	
	WHERE
	t_can_sxx_gesamt_aggr_zeit.s07_entf_m_rounded >= -16 AND
	t_can_sxx_gesamt_aggr_zeit.s07_entf_m_rounded <= -14

	GROUP BY 
	t_can_sxx_gesamt_aggr_zeit.vp, 
	t_can_sxx_gesamt_aggr_zeit.runde,
	t_can_sxx_gesamt_aggr_zeit.runde_txt 
) s07_zeit_t1 ON s07_zeit_t1.vp = s01_zeit_t1.vp AND s07_zeit_t1.runde_txt = s01_zeit_t1.runde_txt

LEFT OUTER JOIN
(
	SELECT
	t_can_sxx_gesamt_aggr_zeit.vp,
	t_can_sxx_gesamt_aggr_zeit.runde,
	t_can_sxx_gesamt_aggr_zeit.runde_txt,
	min(to_char((to_timestamp((t_can_sxx_gesamt_aggr_zeit.zeit_s)::double precision) - ('01:00:00'::time without time zone)::interval), 'HH24:MI:SS'::text)) AS s07_zeit_t2

	FROM
	t_can_sxx_gesamt_aggr_zeit
	
	WHERE
	t_can_sxx_gesamt_aggr_zeit.s07_entf_m_rounded = 5

	GROUP BY 
	t_can_sxx_gesamt_aggr_zeit.vp, 
	t_can_sxx_gesamt_aggr_zeit.runde,
	t_can_sxx_gesamt_aggr_zeit.runde_txt 
) s07_zeit_t2 ON s07_zeit_t2.vp = s01_zeit_t1.vp AND s07_zeit_t2.runde_txt = s01_zeit_t1.runde_txt

LEFT OUTER JOIN
(
	SELECT
	t_can_sxx_gesamt_aggr_zeit.vp,
	t_can_sxx_gesamt_aggr_zeit.runde,
	t_can_sxx_gesamt_aggr_zeit.runde_txt,
	min(to_char((to_timestamp((t_can_sxx_gesamt_aggr_zeit.zeit_s)::double precision) - ('01:00:00'::time without time zone)::interval), 'HH24:MI:SS'::text)) AS s08_zeit_t1

	FROM
	t_can_sxx_gesamt_aggr_zeit
	
	WHERE
	t_can_sxx_gesamt_aggr_zeit.s08_entf_m_rounded >= -16 AND
	t_can_sxx_gesamt_aggr_zeit.s08_entf_m_rounded <= -14

	GROUP BY 
	t_can_sxx_gesamt_aggr_zeit.vp, 
	t_can_sxx_gesamt_aggr_zeit.runde,
	t_can_sxx_gesamt_aggr_zeit.runde_txt 
) s08_zeit_t1 ON s08_zeit_t1.vp = s01_zeit_t1.vp AND s08_zeit_t1.runde_txt = s01_zeit_t1.runde_txt

LEFT OUTER JOIN
(
	SELECT
	t_can_sxx_gesamt_aggr_zeit.vp,
	t_can_sxx_gesamt_aggr_zeit.runde,
	t_can_sxx_gesamt_aggr_zeit.runde_txt,
	min(to_char((to_timestamp((t_can_sxx_gesamt_aggr_zeit.zeit_s)::double precision) - ('01:00:00'::time without time zone)::interval), 'HH24:MI:SS'::text)) AS s08_zeit_t2

	FROM
	t_can_sxx_gesamt_aggr_zeit
	
	WHERE
	t_can_sxx_gesamt_aggr_zeit.s08_entf_m_rounded = 5

	GROUP BY 
	t_can_sxx_gesamt_aggr_zeit.vp, 
	t_can_sxx_gesamt_aggr_zeit.runde,
	t_can_sxx_gesamt_aggr_zeit.runde_txt 
) s08_zeit_t2 ON s08_zeit_t2.vp = s01_zeit_t1.vp AND s08_zeit_t2.runde_txt = s01_zeit_t1.runde_txt

LEFT OUTER JOIN
(
	SELECT
	t_can_sxx_gesamt_aggr_zeit.vp,
	t_can_sxx_gesamt_aggr_zeit.runde,
	t_can_sxx_gesamt_aggr_zeit.runde_txt,
	min(to_char((to_timestamp((t_can_sxx_gesamt_aggr_zeit.zeit_s)::double precision) - ('01:00:00'::time without time zone)::interval), 'HH24:MI:SS'::text)) AS s09_zeit_t1

	FROM
	t_can_sxx_gesamt_aggr_zeit
	
	WHERE
	t_can_sxx_gesamt_aggr_zeit.s09_entf_m_rounded >= -16 AND
	t_can_sxx_gesamt_aggr_zeit.s09_entf_m_rounded <= -14

	GROUP BY 
	t_can_sxx_gesamt_aggr_zeit.vp, 
	t_can_sxx_gesamt_aggr_zeit.runde,
	t_can_sxx_gesamt_aggr_zeit.runde_txt 
) s09_zeit_t1 ON s09_zeit_t1.vp = s01_zeit_t1.vp AND s09_zeit_t1.runde_txt = s01_zeit_t1.runde_txt

LEFT OUTER JOIN
(
	SELECT
	t_can_sxx_gesamt_aggr_zeit.vp,
	t_can_sxx_gesamt_aggr_zeit.runde,
	t_can_sxx_gesamt_aggr_zeit.runde_txt,
	min(to_char((to_timestamp((t_can_sxx_gesamt_aggr_zeit.zeit_s)::double precision) - ('01:00:00'::time without time zone)::interval), 'HH24:MI:SS'::text)) AS s09_zeit_t2

	FROM
	t_can_sxx_gesamt_aggr_zeit
	
	WHERE
	t_can_sxx_gesamt_aggr_zeit.s09_entf_m_rounded = 5

	GROUP BY 
	t_can_sxx_gesamt_aggr_zeit.vp, 
	t_can_sxx_gesamt_aggr_zeit.runde,
	t_can_sxx_gesamt_aggr_zeit.runde_txt 
) s09_zeit_t2 ON s09_zeit_t2.vp = s01_zeit_t1.vp AND s09_zeit_t2.runde_txt = s01_zeit_t1.runde_txt

LEFT OUTER JOIN
(
	SELECT
	t_can_sxx_gesamt_aggr_zeit.vp,
	t_can_sxx_gesamt_aggr_zeit.runde,
	t_can_sxx_gesamt_aggr_zeit.runde_txt,
	min(to_char((to_timestamp((t_can_sxx_gesamt_aggr_zeit.zeit_s)::double precision) - ('01:00:00'::time without time zone)::interval), 'HH24:MI:SS'::text)) AS s10_zeit_t1

	FROM
	t_can_sxx_gesamt_aggr_zeit
	
	WHERE
	t_can_sxx_gesamt_aggr_zeit.s10_entf_m_rounded >= -16 AND
	t_can_sxx_gesamt_aggr_zeit.s10_entf_m_rounded <= -14

	GROUP BY 
	t_can_sxx_gesamt_aggr_zeit.vp, 
	t_can_sxx_gesamt_aggr_zeit.runde,
	t_can_sxx_gesamt_aggr_zeit.runde_txt 
) s10_zeit_t1 ON s10_zeit_t1.vp = s01_zeit_t1.vp AND s10_zeit_t1.runde_txt = s01_zeit_t1.runde_txt

LEFT OUTER JOIN
(
	SELECT
	t_can_sxx_gesamt_aggr_zeit.vp,
	t_can_sxx_gesamt_aggr_zeit.runde,
	t_can_sxx_gesamt_aggr_zeit.runde_txt,
	min(to_char((to_timestamp((t_can_sxx_gesamt_aggr_zeit.zeit_s)::double precision) - ('01:00:00'::time without time zone)::interval), 'HH24:MI:SS'::text)) AS s10_zeit_t2

	FROM
	t_can_sxx_gesamt_aggr_zeit
	
	WHERE
	t_can_sxx_gesamt_aggr_zeit.s10_entf_m_rounded = 5

	GROUP BY 
	t_can_sxx_gesamt_aggr_zeit.vp, 
	t_can_sxx_gesamt_aggr_zeit.runde,
	t_can_sxx_gesamt_aggr_zeit.runde_txt 
) s10_zeit_t2 ON s10_zeit_t2.vp = s01_zeit_t1.vp AND s10_zeit_t2.runde_txt = s01_zeit_t1.runde_txt

LEFT OUTER JOIN
(
	SELECT
	t_can_sxx_gesamt_aggr_zeit.vp,
	t_can_sxx_gesamt_aggr_zeit.runde,
	t_can_sxx_gesamt_aggr_zeit.runde_txt,
	min(to_char((to_timestamp((t_can_sxx_gesamt_aggr_zeit.zeit_s)::double precision) - ('01:00:00'::time without time zone)::interval), 'HH24:MI:SS'::text)) AS s11_zeit_t1

	FROM
	t_can_sxx_gesamt_aggr_zeit
	
	WHERE
	t_can_sxx_gesamt_aggr_zeit.s11_entf_m_rounded >= -16 AND
	t_can_sxx_gesamt_aggr_zeit.s11_entf_m_rounded <= -14

	GROUP BY 
	t_can_sxx_gesamt_aggr_zeit.vp, 
	t_can_sxx_gesamt_aggr_zeit.runde,
	t_can_sxx_gesamt_aggr_zeit.runde_txt 
) s11_zeit_t1 ON s11_zeit_t1.vp = s01_zeit_t1.vp AND s11_zeit_t1.runde_txt = s01_zeit_t1.runde_txt

LEFT OUTER JOIN
(
	SELECT
	t_can_sxx_gesamt_aggr_zeit.vp,
	t_can_sxx_gesamt_aggr_zeit.runde,
	t_can_sxx_gesamt_aggr_zeit.runde_txt,
	min(to_char((to_timestamp((t_can_sxx_gesamt_aggr_zeit.zeit_s)::double precision) - ('01:00:00'::time without time zone)::interval), 'HH24:MI:SS'::text)) AS s11_zeit_t2

	FROM
	t_can_sxx_gesamt_aggr_zeit
	
	WHERE
	t_can_sxx_gesamt_aggr_zeit.s11_entf_m_rounded = 5

	GROUP BY 
	t_can_sxx_gesamt_aggr_zeit.vp, 
	t_can_sxx_gesamt_aggr_zeit.runde,
	t_can_sxx_gesamt_aggr_zeit.runde_txt 
) s11_zeit_t2 ON s11_zeit_t2.vp = s01_zeit_t1.vp AND s11_zeit_t2.runde_txt = s01_zeit_t1.runde_txt

LEFT OUTER JOIN
(
	SELECT
	t_can_sxx_gesamt_aggr_zeit.vp,
	t_can_sxx_gesamt_aggr_zeit.runde,
	t_can_sxx_gesamt_aggr_zeit.runde_txt,
	min(to_char((to_timestamp((t_can_sxx_gesamt_aggr_zeit.zeit_s)::double precision) - ('01:00:00'::time without time zone)::interval), 'HH24:MI:SS'::text)) AS s12_zeit_t1

	FROM
	t_can_sxx_gesamt_aggr_zeit
	
	WHERE
	t_can_sxx_gesamt_aggr_zeit.s12_entf_m_rounded >= -16 AND
	t_can_sxx_gesamt_aggr_zeit.s12_entf_m_rounded <= -14

	GROUP BY 
	t_can_sxx_gesamt_aggr_zeit.vp, 
	t_can_sxx_gesamt_aggr_zeit.runde,
	t_can_sxx_gesamt_aggr_zeit.runde_txt 
) s12_zeit_t1 ON s12_zeit_t1.vp = s01_zeit_t1.vp AND s12_zeit_t1.runde_txt = s01_zeit_t1.runde_txt

LEFT OUTER JOIN
(
	SELECT
	t_can_sxx_gesamt_aggr_zeit.vp,
	t_can_sxx_gesamt_aggr_zeit.runde,
	t_can_sxx_gesamt_aggr_zeit.runde_txt,
	min(to_char((to_timestamp((t_can_sxx_gesamt_aggr_zeit.zeit_s)::double precision) - ('01:00:00'::time without time zone)::interval), 'HH24:MI:SS'::text)) AS s12_zeit_t2

	FROM
	t_can_sxx_gesamt_aggr_zeit
	
	WHERE
	t_can_sxx_gesamt_aggr_zeit.s12_entf_m_rounded = 5

	GROUP BY 
	t_can_sxx_gesamt_aggr_zeit.vp, 
	t_can_sxx_gesamt_aggr_zeit.runde,
	t_can_sxx_gesamt_aggr_zeit.runde_txt 
) s12_zeit_t2 ON s12_zeit_t2.vp = s01_zeit_t1.vp AND s12_zeit_t2.runde_txt = s01_zeit_t1.runde_txt

LEFT OUTER JOIN
(
	SELECT
	t_can_sxx_gesamt_aggr_zeit.vp,
	t_can_sxx_gesamt_aggr_zeit.runde,
	t_can_sxx_gesamt_aggr_zeit.runde_txt,
	min(to_char((to_timestamp((t_can_sxx_gesamt_aggr_zeit.zeit_s)::double precision) - ('01:00:00'::time without time zone)::interval), 'HH24:MI:SS'::text)) AS s13_zeit_t1

	FROM
	t_can_sxx_gesamt_aggr_zeit
	
	WHERE
	t_can_sxx_gesamt_aggr_zeit.s13_entf_m_rounded >= -16 AND
	t_can_sxx_gesamt_aggr_zeit.s13_entf_m_rounded <= -14

	GROUP BY 
	t_can_sxx_gesamt_aggr_zeit.vp, 
	t_can_sxx_gesamt_aggr_zeit.runde,
	t_can_sxx_gesamt_aggr_zeit.runde_txt 
) s13_zeit_t1 ON s13_zeit_t1.vp = s01_zeit_t1.vp AND s13_zeit_t1.runde_txt = s01_zeit_t1.runde_txt

LEFT OUTER JOIN
(
	SELECT
	t_can_sxx_gesamt_aggr_zeit.vp,
	t_can_sxx_gesamt_aggr_zeit.runde,
	t_can_sxx_gesamt_aggr_zeit.runde_txt,
	min(to_char((to_timestamp((t_can_sxx_gesamt_aggr_zeit.zeit_s)::double precision) - ('01:00:00'::time without time zone)::interval), 'HH24:MI:SS'::text)) AS s13_zeit_t2

	FROM
	t_can_sxx_gesamt_aggr_zeit
	
	WHERE
	t_can_sxx_gesamt_aggr_zeit.s13_entf_m_rounded = 5

	GROUP BY 
	t_can_sxx_gesamt_aggr_zeit.vp, 
	t_can_sxx_gesamt_aggr_zeit.runde,
	t_can_sxx_gesamt_aggr_zeit.runde_txt 
) s13_zeit_t2 ON s13_zeit_t2.vp = s01_zeit_t1.vp AND s13_zeit_t2.runde_txt = s01_zeit_t1.runde_txt

LEFT OUTER JOIN
(
	SELECT
	t_can_sxx_gesamt_aggr_zeit.vp,
	t_can_sxx_gesamt_aggr_zeit.runde,
	t_can_sxx_gesamt_aggr_zeit.runde_txt,
	min(to_char((to_timestamp((t_can_sxx_gesamt_aggr_zeit.zeit_s)::double precision) - ('01:00:00'::time without time zone)::interval), 'HH24:MI:SS'::text)) AS s14_zeit_t1

	FROM
	t_can_sxx_gesamt_aggr_zeit
	
	WHERE
	t_can_sxx_gesamt_aggr_zeit.s14_entf_m_rounded >= -16 AND
	t_can_sxx_gesamt_aggr_zeit.s14_entf_m_rounded <= -14

	GROUP BY 
	t_can_sxx_gesamt_aggr_zeit.vp, 
	t_can_sxx_gesamt_aggr_zeit.runde,
	t_can_sxx_gesamt_aggr_zeit.runde_txt 
) s14_zeit_t1 ON s14_zeit_t1.vp = s01_zeit_t1.vp AND s14_zeit_t1.runde_txt = s01_zeit_t1.runde_txt

LEFT OUTER JOIN
(
	SELECT
	t_can_sxx_gesamt_aggr_zeit.vp,
	t_can_sxx_gesamt_aggr_zeit.runde,
	t_can_sxx_gesamt_aggr_zeit.runde_txt,
	min(to_char((to_timestamp((t_can_sxx_gesamt_aggr_zeit.zeit_s)::double precision) - ('01:00:00'::time without time zone)::interval), 'HH24:MI:SS'::text)) AS s14_zeit_t2

	FROM
	t_can_sxx_gesamt_aggr_zeit
	
	WHERE
	t_can_sxx_gesamt_aggr_zeit.s14_entf_m_rounded = 5

	GROUP BY 
	t_can_sxx_gesamt_aggr_zeit.vp, 
	t_can_sxx_gesamt_aggr_zeit.runde,
	t_can_sxx_gesamt_aggr_zeit.runde_txt 
) s14_zeit_t2 ON s14_zeit_t2.vp = s01_zeit_t1.vp AND s14_zeit_t2.runde_txt = s01_zeit_t1.runde_txt

LEFT OUTER JOIN
(
	SELECT
	t_can_sxx_gesamt_aggr_zeit.vp,
	t_can_sxx_gesamt_aggr_zeit.runde,
	t_can_sxx_gesamt_aggr_zeit.runde_txt,
	min(to_char((to_timestamp((t_can_sxx_gesamt_aggr_zeit.zeit_s)::double precision) - ('01:00:00'::time without time zone)::interval), 'HH24:MI:SS'::text)) AS s15_zeit_t1

	FROM
	t_can_sxx_gesamt_aggr_zeit
	
	WHERE
	t_can_sxx_gesamt_aggr_zeit.s15_entf_m_rounded >= -16 AND
	t_can_sxx_gesamt_aggr_zeit.s15_entf_m_rounded <= -14

	GROUP BY 
	t_can_sxx_gesamt_aggr_zeit.vp, 
	t_can_sxx_gesamt_aggr_zeit.runde,
	t_can_sxx_gesamt_aggr_zeit.runde_txt 
) s15_zeit_t1 ON s15_zeit_t1.vp = s01_zeit_t1.vp AND s15_zeit_t1.runde_txt = s01_zeit_t1.runde_txt

LEFT OUTER JOIN
(
	SELECT
	t_can_sxx_gesamt_aggr_zeit.vp,
	t_can_sxx_gesamt_aggr_zeit.runde,
	t_can_sxx_gesamt_aggr_zeit.runde_txt,
	min(to_char((to_timestamp((t_can_sxx_gesamt_aggr_zeit.zeit_s)::double precision) - ('01:00:00'::time without time zone)::interval), 'HH24:MI:SS'::text)) AS s15_zeit_t2

	FROM
	t_can_sxx_gesamt_aggr_zeit
	
	WHERE
	t_can_sxx_gesamt_aggr_zeit.s15_entf_m_rounded = 5

	GROUP BY 
	t_can_sxx_gesamt_aggr_zeit.vp, 
	t_can_sxx_gesamt_aggr_zeit.runde,
	t_can_sxx_gesamt_aggr_zeit.runde_txt 
) s15_zeit_t2 ON s15_zeit_t2.vp = s01_zeit_t1.vp AND s15_zeit_t2.runde_txt = s01_zeit_t1.runde_txt

LEFT OUTER JOIN
(
	SELECT
	t_can_sxx_gesamt_aggr_zeit.vp,
	t_can_sxx_gesamt_aggr_zeit.runde,
	t_can_sxx_gesamt_aggr_zeit.runde_txt,
	min(to_char((to_timestamp((t_can_sxx_gesamt_aggr_zeit.zeit_s)::double precision) - ('01:00:00'::time without time zone)::interval), 'HH24:MI:SS'::text)) AS s16_zeit_t1

	FROM
	t_can_sxx_gesamt_aggr_zeit
	
	WHERE
	t_can_sxx_gesamt_aggr_zeit.s16_entf_m_rounded >= -16 AND
	t_can_sxx_gesamt_aggr_zeit.s16_entf_m_rounded <= -14

	GROUP BY 
	t_can_sxx_gesamt_aggr_zeit.vp, 
	t_can_sxx_gesamt_aggr_zeit.runde,
	t_can_sxx_gesamt_aggr_zeit.runde_txt 
) s16_zeit_t1 ON s16_zeit_t1.vp = s01_zeit_t1.vp AND s16_zeit_t1.runde_txt = s01_zeit_t1.runde_txt

LEFT OUTER JOIN
(
	SELECT
	t_can_sxx_gesamt_aggr_zeit.vp,
	t_can_sxx_gesamt_aggr_zeit.runde,
	t_can_sxx_gesamt_aggr_zeit.runde_txt,
	min(to_char((to_timestamp((t_can_sxx_gesamt_aggr_zeit.zeit_s)::double precision) - ('01:00:00'::time without time zone)::interval), 'HH24:MI:SS'::text)) AS s16_zeit_t2

	FROM
	t_can_sxx_gesamt_aggr_zeit
	
	WHERE
	t_can_sxx_gesamt_aggr_zeit.s16_entf_m_rounded = 5

	GROUP BY 
	t_can_sxx_gesamt_aggr_zeit.vp, 
	t_can_sxx_gesamt_aggr_zeit.runde,
	t_can_sxx_gesamt_aggr_zeit.runde_txt 
) s16_zeit_t2 ON s16_zeit_t2.vp = s01_zeit_t1.vp AND s16_zeit_t2.runde_txt = s01_zeit_t1.runde_txt

LEFT OUTER JOIN
(
	SELECT
	t_can_sxx_gesamt_aggr_zeit.vp,
	t_can_sxx_gesamt_aggr_zeit.runde,
	t_can_sxx_gesamt_aggr_zeit.runde_txt,
	min(to_char((to_timestamp((t_can_sxx_gesamt_aggr_zeit.zeit_s)::double precision) - ('01:00:00'::time without time zone)::interval), 'HH24:MI:SS'::text)) AS s17_zeit_t1

	FROM
	t_can_sxx_gesamt_aggr_zeit
	
	WHERE
	t_can_sxx_gesamt_aggr_zeit.s17_entf_m_rounded >= -16 AND
	t_can_sxx_gesamt_aggr_zeit.s17_entf_m_rounded <= -14

	GROUP BY 
	t_can_sxx_gesamt_aggr_zeit.vp, 
	t_can_sxx_gesamt_aggr_zeit.runde,
	t_can_sxx_gesamt_aggr_zeit.runde_txt 
) s17_zeit_t1 ON s17_zeit_t1.vp = s01_zeit_t1.vp AND s17_zeit_t1.runde_txt = s01_zeit_t1.runde_txt

LEFT OUTER JOIN
(
	SELECT
	t_can_sxx_gesamt_aggr_zeit.vp,
	t_can_sxx_gesamt_aggr_zeit.runde,
	t_can_sxx_gesamt_aggr_zeit.runde_txt,
	min(to_char((to_timestamp((t_can_sxx_gesamt_aggr_zeit.zeit_s)::double precision) - ('01:00:00'::time without time zone)::interval), 'HH24:MI:SS'::text)) AS s17_zeit_t2

	FROM
	t_can_sxx_gesamt_aggr_zeit
	
	WHERE
	t_can_sxx_gesamt_aggr_zeit.s17_entf_m_rounded = 5

	GROUP BY 
	t_can_sxx_gesamt_aggr_zeit.vp, 
	t_can_sxx_gesamt_aggr_zeit.runde,
	t_can_sxx_gesamt_aggr_zeit.runde_txt 
) s17_zeit_t2 ON s17_zeit_t2.vp = s01_zeit_t1.vp AND s17_zeit_t2.runde_txt = s01_zeit_t1.runde_txt

LEFT OUTER JOIN
(
	SELECT
	t_can_sxx_gesamt_aggr_zeit.vp,
	t_can_sxx_gesamt_aggr_zeit.runde,
	t_can_sxx_gesamt_aggr_zeit.runde_txt,
	min(to_char((to_timestamp((t_can_sxx_gesamt_aggr_zeit.zeit_s)::double precision) - ('01:00:00'::time without time zone)::interval), 'HH24:MI:SS'::text)) AS s18_zeit_t1

	FROM
	t_can_sxx_gesamt_aggr_zeit
	
	WHERE
	t_can_sxx_gesamt_aggr_zeit.s18_entf_m_rounded >= -16 AND
	t_can_sxx_gesamt_aggr_zeit.s18_entf_m_rounded <= -14

	GROUP BY 
	t_can_sxx_gesamt_aggr_zeit.vp, 
	t_can_sxx_gesamt_aggr_zeit.runde,
	t_can_sxx_gesamt_aggr_zeit.runde_txt 
) s18_zeit_t1 ON s18_zeit_t1.vp = s01_zeit_t1.vp AND s18_zeit_t1.runde_txt = s01_zeit_t1.runde_txt

LEFT OUTER JOIN
(
	SELECT
	t_can_sxx_gesamt_aggr_zeit.vp,
	t_can_sxx_gesamt_aggr_zeit.runde,
	t_can_sxx_gesamt_aggr_zeit.runde_txt,
	min(to_char((to_timestamp((t_can_sxx_gesamt_aggr_zeit.zeit_s)::double precision) - ('01:00:00'::time without time zone)::interval), 'HH24:MI:SS'::text)) AS s18_zeit_t2

	FROM
	t_can_sxx_gesamt_aggr_zeit
	
	WHERE
	t_can_sxx_gesamt_aggr_zeit.s18_entf_m_rounded = 5

	GROUP BY 
	t_can_sxx_gesamt_aggr_zeit.vp, 
	t_can_sxx_gesamt_aggr_zeit.runde,
	t_can_sxx_gesamt_aggr_zeit.runde_txt 
) s18_zeit_t2 ON s18_zeit_t2.vp = s01_zeit_t1.vp AND s18_zeit_t2.runde_txt = s01_zeit_t1.runde_txt

ORDER BY 
s01_zeit_t1.vp,
s01_zeit_t1.runde