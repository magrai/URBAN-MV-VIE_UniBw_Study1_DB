DROP VIEW IF EXISTS v_can_dist CASCADE;
CREATE OR REPLACE VIEW v_can_dist AS

SELECT
"public".v_can_dist_diff.rownr,
"public".v_can_dist_diff.subid,
"public".v_can_dist_diff.time_s,
"public".v_can_dist_diff.dist_m_diff,

--Summierung der gefahrenen Distanz je Messung
sum("public".v_can_dist_diff.dist_m_diff) over (partition by "public".v_can_dist_diff.subid order by "public".v_can_dist_diff.rownr) as dist_m,

"public".v_can_dist_diff.round,

CASE 
	WHEN sum("public".v_can_dist_diff.dist_m_diff) over (partition by "public".v_can_dist_diff.subid, "public".v_can_dist_diff.round order by "public".v_can_dist_diff.rownr) <=5000
	THEN 1::NUMERIC
	ELSE 2::NUMERIC
END AS round_part,

CASE 
	WHEN sum("public".v_can_dist_diff.dist_m_diff) over (partition by "public".v_can_dist_diff.subid, "public".v_can_dist_diff.round order by "public".v_can_dist_diff.rownr) >=4000 AND
			 sum("public".v_can_dist_diff.dist_m_diff) over (partition by "public".v_can_dist_diff.subid, "public".v_can_dist_diff.round order by "public".v_can_dist_diff.rownr) <=6000
	THEN 1::NUMERIC
	ELSE 2::NUMERIC
END AS round_part_v2,


--Summierung der gefahrenen Distanz je Messung nach aktueller round
sum("public".v_can_dist_diff.dist_m_diff) over (partition by "public".v_can_dist_diff.subid, "public".v_can_dist_diff.round order by "public".v_can_dist_diff.rownr) as round_dist_m

FROM
"public".v_can_dist_diff

ORDER BY "public".v_can_dist_diff.rownr