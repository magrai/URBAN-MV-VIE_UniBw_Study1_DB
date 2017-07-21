DROP VIEW IF EXISTS v_adtf_distdiff CASCADE;
CREATE VIEW v_adtf_distdiff AS

SELECT 
t_adtf.rnr,
t_adtf.subject_id,
t_adtf.time_s,
CASE
	WHEN t_adtf.speed_kmh / 3.6 * (t_adtf.time_s - lag(t_adtf.time_s) OVER (PARTITION BY t_adtf.subject_id ORDER BY t_adtf.rnr)) IS NULL 
	THEN t_adtf.speed_kmh / 3.6 * t_adtf.time_s 
	ELSE t_adtf.speed_kmh / 3.6 * (t_adtf.time_s - lag(t_adtf.time_s) OVER (PARTITION BY t_adtf.subject_id ORDER BY t_adtf.rnr))
	END AS dist_m_diff,
v_adtf_roundtimes.round_id

FROM
t_adtf 
LEFT JOIN v_adtf_roundtimes ON t_adtf.rnr = v_adtf_roundtimes.rnr