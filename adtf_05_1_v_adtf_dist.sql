DROP VIEW IF EXISTS v_adtf_dist CASCADE;
CREATE OR REPLACE VIEW v_adtf_dist AS

SELECT
rnr,
subject_id,
round_id,
time_s,

-- Cumulate dist_m
SUM(dist_m_diff) OVER (PARTITION BY subject_id ORDER BY rnr) AS dist_m,

-- Will be necessary to correctly identify distance values for gps reference points
CASE 
	WHEN sum(dist_m_diff) OVER (PARTITION BY subject_id, round_id ORDER BY rnr) <=5000
	THEN 1::NUMERIC
	ELSE 2::NUMERIC
END AS round_helper1,

CASE 
	WHEN sum(dist_m_diff) OVER (PARTITION BY subject_id, round_id ORDER BY rnr) >=4000 AND
			 sum(dist_m_diff) OVER (PARTITION BY subject_id, round_id ORDER BY rnr) <=6000
	THEN 1::NUMERIC
	ELSE 2::NUMERIC
END AS round_helper2

FROM
v_adtf_distdiff

-- ORDER BY 
-- rnr