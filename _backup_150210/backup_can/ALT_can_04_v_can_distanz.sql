DROP VIEW v_can_distanz CASCADE;
CREATE OR REPLACE VIEW v_can_distanz AS

SELECT
"public".v_can_distance_diff.rownr,
"public".v_can_distance_diff.subid,
"public".v_can_distance_diff.time_s,
"public".v_can_distance_diff.distance_m_diff,

--Summierung der gefahrenen Distanz je Messung
sum("public".v_can_distance_diff.distance_m_diff) over (partition by "public".v_can_distance_diff.subid order by "public".v_can_distance_diff.znr) as distanz_m,

"public".v_can_distance_diff.runde,

CASE 
	WHEN sum("public".v_can_distance_diff.distance_m_diff) over (partition by "public".v_can_distance_diff.subid, "public".v_can_distance_diff.runde order by "public".v_can_distance_diff.znr) <=5000
	THEN 1::NUMERIC
	ELSE 2::NUMERIC
END AS runde_teil,

CASE 
	WHEN sum("public".v_can_distance_diff.distance_m_diff) over (partition by "public".v_can_distance_diff.subid, "public".v_can_distance_diff.runde order by "public".v_can_distance_diff.znr) >=4000 AND
			 sum("public".v_can_distance_diff.distance_m_diff) over (partition by "public".v_can_distance_diff.subid, "public".v_can_distance_diff.runde order by "public".v_can_distance_diff.znr) <=6000
	THEN 1::NUMERIC
	ELSE 2::NUMERIC
END AS runde_teil_v2,


--Summierung der gefahrenen Distanz je Messung nach aktueller Runde
sum("public".v_can_distance_diff.distance_m_diff) over (partition by "public".v_can_distance_diff.subid, "public".v_can_distance_diff.runde order by "public".v_can_distance_diff.znr) as runde_distanz_m

FROM
"public".v_can_distance_diff

ORDER BY "public".v_can_distance_diff.znr