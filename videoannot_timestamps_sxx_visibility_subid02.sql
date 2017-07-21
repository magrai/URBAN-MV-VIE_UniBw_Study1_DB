DROP TABLE IF EXISTS t_videoannot_timestamps_sxx_visibility_subid02;
CREATE TABLE t_videoannot_timestamps_sxx_visibility_subid02 AS

SELECT 
s01_time.distance::numeric,
s01_time.s01_timestamp as s01_timestamp,
s02_time.s02_timestamp as s02_timestamp,
s03_time.s03_timestamp as s03_timestamp,
s04_time.s04_timestamp as s04_timestamp,
s05_time.s05_timestamp as s05_timestamp,
s06_time.s06_timestamp as s06_timestamp, 
s07_time.s07_timestamp as s07_timestamp, 
s08_time.s08_timestamp as s08_timestamp, 
s09_time.s09_timestamp as s09_timestamp, 
s10_time.s10_timestamp as s10_timestamp, 
s11_time.s11_timestamp as s11_timestamp, 
s12_time.s12_timestamp as s12_timestamp, 
s13_time.s13_timestamp as s13_timestamp, 
s14_time.s14_timestamp as s14_timestamp, 
s15_time.s15_timestamp as s15_timestamp,  
s16_time.s16_timestamp as s16_timestamp, 
s17_time.s17_timestamp as s17_timestamp, 
s18_time.s18_timestamp as s18_timestamp 

FROM
(
	SELECT
	'-50' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s01_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	round(t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s01_dist_m_rnd0, 0) = -50

	UNION

	SELECT
	'-45' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s01_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	round(t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s01_dist_m_rnd0, 0) = -45

	UNION

	SELECT
	'-40' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s01_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	round(t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s01_dist_m_rnd0, 0) = -40

	UNION

	SELECT
	'-35' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s01_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	round(t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s01_dist_m_rnd0, 0) = -35

	UNION

	SELECT
	'-30' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s01_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	round(t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s01_dist_m_rnd0, 0) = -30

	UNION

	SELECT
	'-25' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s01_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	round(t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s01_dist_m_rnd0, 0) = -25

	UNION

	SELECT
	'-20' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s01_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	round(t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s01_dist_m_rnd0, 0) = -20

	UNION

	SELECT
	'-15' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s01_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	round(t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s01_dist_m_rnd0, 0) = -15

	UNION

	SELECT
	'-10' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s01_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	round(t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s01_dist_m_rnd0, 0) = -10

	UNION

	SELECT
	'-5' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s01_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	round(t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s01_dist_m_rnd0, 0) = -5


	UNION

	SELECT
	'0' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s01_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	round(t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s01_dist_m_rnd0, 0) = 0

	ORDER BY distance
) s01_time

LEFT OUTER JOIN
(
	SELECT
	'-50' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s02_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s02_dist_m_rnd0 = -50

	UNION

	SELECT
	'-45' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s02_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s02_dist_m_rnd0 = -45

	UNION

	SELECT
	'-40' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s02_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s02_dist_m_rnd0 = -40

	UNION

	SELECT
	'-35' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s02_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s02_dist_m_rnd0 = -35

	UNION

	SELECT
	'-30' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s02_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s02_dist_m_rnd0 = -30

	UNION

	SELECT
	'-25' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s02_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s02_dist_m_rnd0 = -25

	UNION

	SELECT
	'-20' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s02_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s02_dist_m_rnd0 = -20

	UNION

	SELECT
	'-15' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s02_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s02_dist_m_rnd0 = -15

	UNION

	SELECT
	'-10' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s02_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s02_dist_m_rnd0 = -10

	UNION

	SELECT
	'-5' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s02_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s02_dist_m_rnd0 = -5


	UNION

	SELECT
	'0' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s02_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s02_dist_m_rnd0 = 0

	ORDER BY distance
) s02_time on s02_time.distance = s01_time.distance

LEFT OUTER JOIN
(
	SELECT
	'-50' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s03_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s03_dist_m_rnd0 = -50

	UNION

	SELECT
	'-45' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s03_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s03_dist_m_rnd0 = -45

	UNION

	SELECT
	'-40' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s03_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s03_dist_m_rnd0 = -40

	UNION

	SELECT
	'-35' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s03_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s03_dist_m_rnd0 = -35

	UNION

	SELECT
	'-30' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s03_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s03_dist_m_rnd0 = -30

	UNION

	SELECT
	'-25' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s03_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s03_dist_m_rnd0 = -25

	UNION

	SELECT
	'-20' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s03_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s03_dist_m_rnd0 = -20

	UNION

	SELECT
	'-15' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s03_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s03_dist_m_rnd0 = -15

	UNION

	SELECT
	'-10' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s03_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s03_dist_m_rnd0 = -10

	UNION

	SELECT
	'-5' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s03_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s03_dist_m_rnd0 = -5


	UNION

	SELECT
	'0' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s03_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s03_dist_m_rnd0 = 0

	ORDER BY distance
) s03_time on s03_time.distance = s01_time.distance

LEFT OUTER JOIN
(
	SELECT
	'-50' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s04_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s04_dist_m_rnd0 = -50

	UNION

	SELECT
	'-45' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s04_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s04_dist_m_rnd0 = -45

	UNION

	SELECT
	'-40' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s04_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s04_dist_m_rnd0 = -40

	UNION

	SELECT
	'-35' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s04_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s04_dist_m_rnd0 = -35

	UNION

	SELECT
	'-30' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s04_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s04_dist_m_rnd0 = -30

	UNION

	SELECT
	'-25' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s04_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s04_dist_m_rnd0 = -25

	UNION

	SELECT
	'-20' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s04_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s04_dist_m_rnd0 = -20

	UNION

	SELECT
	'-15' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s04_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s04_dist_m_rnd0 = -15

	UNION

	SELECT
	'-10' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s04_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s04_dist_m_rnd0 = -10

	UNION

	SELECT
	'-5' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s04_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s04_dist_m_rnd0 = -5


	UNION

	SELECT
	'0' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s04_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s04_dist_m_rnd0 = 0

	ORDER BY distance
) s04_time on s04_time.distance = s01_time.distance

LEFT OUTER JOIN
(
	SELECT
	'-50' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s05_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s05_dist_m_rnd0 = -50

	UNION

	SELECT
	'-45' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s05_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s05_dist_m_rnd0 = -45

	UNION

	SELECT
	'-40' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s05_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s05_dist_m_rnd0 = -40

	UNION

	SELECT
	'-35' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s05_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s05_dist_m_rnd0 = -35

	UNION

	SELECT
	'-30' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s05_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s05_dist_m_rnd0 = -30

	UNION

	SELECT
	'-25' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s05_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s05_dist_m_rnd0 = -25

	UNION

	SELECT
	'-20' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s05_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s05_dist_m_rnd0 = -20

	UNION

	SELECT
	'-15' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s05_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s05_dist_m_rnd0 = -15

	UNION

	SELECT
	'-10' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s05_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s05_dist_m_rnd0 = -10

	UNION

	SELECT
	'-5' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s05_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s05_dist_m_rnd0 = -5


	UNION

	SELECT
	'0' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s05_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s05_dist_m_rnd0 = 0

	ORDER BY distance
) s05_time on s05_time.distance = s01_time.distance

LEFT OUTER JOIN
(
	SELECT
	'-50' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s06_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s06_dist_m_rnd0 = -50

	UNION

	SELECT
	'-45' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s06_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s06_dist_m_rnd0 = -45

	UNION

	SELECT
	'-40' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s06_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s06_dist_m_rnd0 = -40

	UNION

	SELECT
	'-35' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s06_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s06_dist_m_rnd0 = -35

	UNION

	SELECT
	'-30' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s06_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s06_dist_m_rnd0 = -30

	UNION

	SELECT
	'-25' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s06_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s06_dist_m_rnd0 = -25

	UNION

	SELECT
	'-20' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s06_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s06_dist_m_rnd0 = -20

	UNION

	SELECT
	'-15' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s06_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s06_dist_m_rnd0 = -15

	UNION

	SELECT
	'-10' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s06_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s06_dist_m_rnd0 = -10

	UNION

	SELECT
	'-5' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s06_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s06_dist_m_rnd0 = -5


	UNION

	SELECT
	'0' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s06_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s06_dist_m_rnd0 = 0

	ORDER BY distance
) s06_time on s06_time.distance = s01_time.distance

LEFT OUTER JOIN
(
	SELECT
	'-50' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s07_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s07_dist_m_rnd0 = -50

	UNION

	SELECT
	'-45' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s07_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s07_dist_m_rnd0 = -45

	UNION

	SELECT
	'-40' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s07_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s07_dist_m_rnd0 = -40

	UNION

	SELECT
	'-35' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s07_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s07_dist_m_rnd0 = -35

	UNION

	SELECT
	'-30' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s07_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s07_dist_m_rnd0 = -30

	UNION

	SELECT
	'-25' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s07_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s07_dist_m_rnd0 = -25

	UNION

	SELECT
	'-20' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s07_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s07_dist_m_rnd0 = -20

	UNION

	SELECT
	'-15' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s07_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s07_dist_m_rnd0 = -15

	UNION

	SELECT
	'-10' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s07_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s07_dist_m_rnd0 = -10

	UNION

	SELECT
	'-5' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s07_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s07_dist_m_rnd0 = -5


	UNION

	SELECT
	'0' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s07_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s07_dist_m_rnd0 = 0

	ORDER BY distance
) s07_time on s07_time.distance = s01_time.distance

LEFT OUTER JOIN
(
	SELECT
	'-50' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s08_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s08_dist_m_rnd0 = -50

	UNION

	SELECT
	'-45' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s08_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s08_dist_m_rnd0 = -45

	UNION

	SELECT
	'-40' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s08_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s08_dist_m_rnd0 = -40

	UNION

	SELECT
	'-35' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s08_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s08_dist_m_rnd0 = -35

	UNION

	SELECT
	'-30' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s08_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s08_dist_m_rnd0 = -30

	UNION

	SELECT
	'-25' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s08_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s08_dist_m_rnd0 = -25

	UNION

	SELECT
	'-20' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s08_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s08_dist_m_rnd0 = -20

	UNION

	SELECT
	'-15' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s08_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s08_dist_m_rnd0 = -15

	UNION

	SELECT
	'-10' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s08_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s08_dist_m_rnd0 = -10

	UNION

	SELECT
	'-5' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s08_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s08_dist_m_rnd0 = -5


	UNION

	SELECT
	'0' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s08_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s08_dist_m_rnd0 = 0

	ORDER BY distance
) s08_time on s08_time.distance = s01_time.distance

LEFT OUTER JOIN
(
	SELECT
	'-50' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s09_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s09_dist_m_rnd0 = -50

	UNION

	SELECT
	'-45' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s09_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s09_dist_m_rnd0 = -45

	UNION

	SELECT
	'-40' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s09_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s09_dist_m_rnd0 = -40

	UNION

	SELECT
	'-35' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s09_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s09_dist_m_rnd0 = -35

	UNION

	SELECT
	'-30' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s09_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s09_dist_m_rnd0 = -30

	UNION

	SELECT
	'-25' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s09_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s09_dist_m_rnd0 = -25

	UNION

	SELECT
	'-20' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s09_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s09_dist_m_rnd0 = -20

	UNION

	SELECT
	'-15' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s09_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s09_dist_m_rnd0 = -15

	UNION

	SELECT
	'-10' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s09_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s09_dist_m_rnd0 = -10

	UNION

	SELECT
	'-5' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s09_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s09_dist_m_rnd0 = -5


	UNION

	SELECT
	'0' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s09_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s09_dist_m_rnd0 = 0

	ORDER BY distance
) s09_time on s09_time.distance = s01_time.distance

LEFT OUTER JOIN
(
	SELECT
	'-50' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s10_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s10_dist_m_rnd0 = -50

	UNION

	SELECT
	'-45' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s10_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s10_dist_m_rnd0 = -45

	UNION

	SELECT
	'-40' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s10_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s10_dist_m_rnd0 = -40

	UNION

	SELECT
	'-35' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s10_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s10_dist_m_rnd0 = -35

	UNION

	SELECT
	'-30' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s10_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s10_dist_m_rnd0 = -30

	UNION

	SELECT
	'-25' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s10_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s10_dist_m_rnd0 = -25

	UNION

	SELECT
	'-20' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s10_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s10_dist_m_rnd0 = -20

	UNION

	SELECT
	'-15' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s10_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s10_dist_m_rnd0 = -15

	UNION

	SELECT
	'-10' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s10_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s10_dist_m_rnd0 = -10

	UNION

	SELECT
	'-5' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s10_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s10_dist_m_rnd0 = -5


	UNION

	SELECT
	'0' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s10_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s10_dist_m_rnd0 = 0

	ORDER BY distance
) s10_time on s10_time.distance = s01_time.distance

LEFT OUTER JOIN
(
	SELECT
	'-50' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s11_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s11_dist_m_rnd0 = -50

	UNION

	SELECT
	'-45' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s11_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s11_dist_m_rnd0 = -45

	UNION

	SELECT
	'-40' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s11_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s11_dist_m_rnd0 = -40

	UNION

	SELECT
	'-35' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s11_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s11_dist_m_rnd0 = -35

	UNION

	SELECT
	'-30' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s11_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s11_dist_m_rnd0 = -30

	UNION

	SELECT
	'-25' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s11_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s11_dist_m_rnd0 = -25

	UNION

	SELECT
	'-20' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s11_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s11_dist_m_rnd0 = -20

	UNION

	SELECT
	'-15' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s11_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s11_dist_m_rnd0 = -15

	UNION

	SELECT
	'-10' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s11_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s11_dist_m_rnd0 = -10

	UNION

	SELECT
	'-5' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s11_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s11_dist_m_rnd0 = -5


	UNION

	SELECT
	'0' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s11_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s11_dist_m_rnd0 = 0

	ORDER BY distance
) s11_time on s11_time.distance = s01_time.distance

LEFT OUTER JOIN
(
	SELECT
	'-50' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s12_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s12_dist_m_rnd0 = -50

	UNION

	SELECT
	'-45' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s12_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s12_dist_m_rnd0 = -45

	UNION

	SELECT
	'-40' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s12_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s12_dist_m_rnd0 = -40

	UNION

	SELECT
	'-35' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s12_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s12_dist_m_rnd0 = -35

	UNION

	SELECT
	'-30' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s12_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s12_dist_m_rnd0 = -30

	UNION

	SELECT
	'-25' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s12_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s12_dist_m_rnd0 = -25

	UNION

	SELECT
	'-20' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s12_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s12_dist_m_rnd0 = -20

	UNION

	SELECT
	'-15' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s12_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s12_dist_m_rnd0 = -15

	UNION

	SELECT
	'-10' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s12_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s12_dist_m_rnd0 = -10

	UNION

	SELECT
	'-5' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s12_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s12_dist_m_rnd0 = -5


	UNION

	SELECT
	'0' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s12_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s12_dist_m_rnd0 = 0

	ORDER BY distance
) s12_time on s12_time.distance = s01_time.distance

LEFT OUTER JOIN
(
	SELECT
	'-50' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s13_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s13_dist_m_rnd0 = -50

	UNION

	SELECT
	'-45' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s13_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s13_dist_m_rnd0 = -45

	UNION

	SELECT
	'-40' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s13_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s13_dist_m_rnd0 = -40

	UNION

	SELECT
	'-35' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s13_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s13_dist_m_rnd0 = -35

	UNION

	SELECT
	'-30' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s13_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s13_dist_m_rnd0 = -30

	UNION

	SELECT
	'-25' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s13_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s13_dist_m_rnd0 = -25

	UNION

	SELECT
	'-20' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s13_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s13_dist_m_rnd0 = -20

	UNION

	SELECT
	'-15' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s13_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s13_dist_m_rnd0 = -15

	UNION

	SELECT
	'-10' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s13_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s13_dist_m_rnd0 = -10

	UNION

	SELECT
	'-5' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s13_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s13_dist_m_rnd0 = -5


	UNION

	SELECT
	'0' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s13_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s13_dist_m_rnd0 = 0

	ORDER BY distance
) s13_time on s13_time.distance = s01_time.distance

LEFT OUTER JOIN
(
	SELECT
	'-50' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s14_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s14_dist_m_rnd0 = -50

	UNION

	SELECT
	'-45' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s14_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s14_dist_m_rnd0 = -45

	UNION

	SELECT
	'-40' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s14_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s14_dist_m_rnd0 = -40

	UNION

	SELECT
	'-35' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s14_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s14_dist_m_rnd0 = -35

	UNION

	SELECT
	'-30' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s14_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s14_dist_m_rnd0 = -30

	UNION

	SELECT
	'-25' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s14_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s14_dist_m_rnd0 = -25

	UNION

	SELECT
	'-20' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s14_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s14_dist_m_rnd0 = -20

	UNION

	SELECT
	'-15' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s14_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s14_dist_m_rnd0 = -15

	UNION

	SELECT
	'-10' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s14_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s14_dist_m_rnd0 = -10

	UNION

	SELECT
	'-5' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s14_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s14_dist_m_rnd0 = -5


	UNION

	SELECT
	'0' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s14_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s14_dist_m_rnd0 = 0

	ORDER BY distance
) s14_time on s14_time.distance = s01_time.distance

LEFT OUTER JOIN
(
	SELECT
	'-50' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s15_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s15_dist_m_rnd0 = -50

	UNION

	SELECT
	'-45' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s15_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s15_dist_m_rnd0 = -45

	UNION

	SELECT
	'-40' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s15_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s15_dist_m_rnd0 = -40

	UNION

	SELECT
	'-35' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s15_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s15_dist_m_rnd0 = -35

	UNION

	SELECT
	'-30' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s15_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s15_dist_m_rnd0 = -30

	UNION

	SELECT
	'-25' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s15_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s15_dist_m_rnd0 = -25

	UNION

	SELECT
	'-20' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s15_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s15_dist_m_rnd0 = -20

	UNION

	SELECT
	'-15' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s15_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s15_dist_m_rnd0 = -15

	UNION

	SELECT
	'-10' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s15_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s15_dist_m_rnd0 = -10

	UNION

	SELECT
	'-5' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s15_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s15_dist_m_rnd0 = -5


	UNION

	SELECT
	'0' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s15_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s15_dist_m_rnd0 = 0

	ORDER BY distance
) s15_time on s15_time.distance = s01_time.distance

LEFT OUTER JOIN
(
	SELECT
	'-50' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s16_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s16_dist_m_rnd0 = -50

	UNION

	SELECT
	'-45' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s16_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s16_dist_m_rnd0 = -45

	UNION

	SELECT
	'-40' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s16_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s16_dist_m_rnd0 = -40

	UNION

	SELECT
	'-35' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s16_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s16_dist_m_rnd0 = -35

	UNION

	SELECT
	'-30' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s16_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s16_dist_m_rnd0 = -30

	UNION

	SELECT
	'-25' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s16_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s16_dist_m_rnd0 = -25

	UNION

	SELECT
	'-20' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s16_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s16_dist_m_rnd0 = -20

	UNION

	SELECT
	'-15' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s16_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s16_dist_m_rnd0 = -15

	UNION

	SELECT
	'-10' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s16_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s16_dist_m_rnd0 = -10

	UNION

	SELECT
	'-5' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s16_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s16_dist_m_rnd0 = -5


	UNION

	SELECT
	'0' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s16_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s16_dist_m_rnd0 = 0

	ORDER BY distance
) s16_time on s16_time.distance = s01_time.distance

LEFT OUTER JOIN
(
	SELECT
	'-50' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s17_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s17_dist_m_rnd0 = -50

	UNION

	SELECT
	'-45' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s17_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s17_dist_m_rnd0 = -45

	UNION

	SELECT
	'-40' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s17_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s17_dist_m_rnd0 = -40

	UNION

	SELECT
	'-35' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s17_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s17_dist_m_rnd0 = -35

	UNION

	SELECT
	'-30' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s17_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s17_dist_m_rnd0 = -30

	UNION

	SELECT
	'-25' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s17_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s17_dist_m_rnd0 = -25

	UNION

	SELECT
	'-20' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s17_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s17_dist_m_rnd0 = -20

	UNION

	SELECT
	'-15' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s17_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s17_dist_m_rnd0 = -15

	UNION

	SELECT
	'-10' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s17_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s17_dist_m_rnd0 = -10

	UNION

	SELECT
	'-5' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s17_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s17_dist_m_rnd0 = -5


	UNION

	SELECT
	'0' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s17_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s17_dist_m_rnd0 = 0

	ORDER BY distance
) s17_time on s17_time.distance = s01_time.distance

LEFT OUTER JOIN
(
	SELECT
	'-50' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s18_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s18_dist_m_rnd0 = -50

	UNION

	SELECT
	'-45' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s18_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s18_dist_m_rnd0 = -45

	UNION

	SELECT
	'-40' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s18_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s18_dist_m_rnd0 = -40

	UNION

	SELECT
	'-35' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s18_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s18_dist_m_rnd0 = -35

	UNION

	SELECT
	'-30' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s18_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s18_dist_m_rnd0 = -30

	UNION

	SELECT
	'-25' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s18_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s18_dist_m_rnd0 = -25

	UNION

	SELECT
	'-20' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s18_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s18_dist_m_rnd0 = -20

	UNION

	SELECT
	'-15' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s18_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s18_dist_m_rnd0 = -15

	UNION

	SELECT
	'-10' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s18_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s18_dist_m_rnd0 = -10

	UNION

	SELECT
	'-5' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s18_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s18_dist_m_rnd0 = -5


	UNION

	SELECT
	'0' as distance,
	min(to_char((to_timestamp((t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.time_s)::double precision) - ('01:00:00.000'::time without time zone)::interval), 'HH24:MI:SS.MS'::text)) as s18_timestamp

	FROM
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2

	WHERE
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.round_txt = 'normal' AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.subid = 2 AND
	t_glances_full_aggr_dist_m_rnd0_max_dist2sxx_v2.s18_dist_m_rnd0 = 0

	ORDER BY distance
) s18_time on s18_time.distance = s01_time.distance

ORDER BY distance