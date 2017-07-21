--DROP TABLE IF EXISTS t_adtf_full_aggr_dist_m_rnd1_min CASCADE;
--CREATE TABLE t_adtf_full_aggr_dist_m_rnd1_min AS
DROP TABLE IF EXISTS t_adtf_time_s_rnd1 CASCADE;
CREATE TABLE t_adtf_time_s_rnd1 AS

SELECT
MIN(rnr) AS rnr,
subject_id,
round_id,
round(time_s, 1) AS time_s_rnd1,
MIN(round(dist_m, 1)) AS dist_m_rnd1

FROM
t_adtf_dist

GROUP BY
round(time_s, 1),
subject_id,
round_id