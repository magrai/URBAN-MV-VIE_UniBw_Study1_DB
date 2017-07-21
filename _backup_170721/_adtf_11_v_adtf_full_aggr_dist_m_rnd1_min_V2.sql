--DROP TABLE IF EXISTS t_adtf_full_aggr_dist_m_rnd1_min CASCADE;
--CREATE TABLE t_adtf_full_aggr_dist_m_rnd1_min AS
DROP VIEW IF EXISTS v_adtf_full_aggr_dist_m_rnd1_min CASCADE;
CREATE OR REPLACE VIEW v_adtf_full_aggr_dist_m_rnd1_min AS

SELECT
MIN(rnr) AS rnr,
MIN(round(time_s, 1)) AS time_s_rnd1,
round(dist_m, 1) AS dist_m_rnd1

FROM
t_adtf

GROUP BY
subject_id,
round(dist_m, 1)