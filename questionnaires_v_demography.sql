DROP VIEW IF EXISTS v_demography_summary CASCADE;
CREATE VIEW v_demography_summary AS

SELECT
-- Age
ROUND(AVG(age), 2) AS age_avg,
ROUND(STDDEV_POP(age), 2) AS age_sd,
MAX(age) AS age_max,
MIN(age) AS age_min,
-- Km-overall
ROUND(AVG(km_overall), 2) AS km_overall_avg,
ROUND(STDDEV_POP(km_overall), 2) AS km_overall_sd,
MAX(km_overall) AS km_overall_max,
MIN(km_overall) AS km_overall_min


FROM t_personaldata
LEFT JOIN
t_q_demography ON t_personaldata.subid = t_q_demography.subid

WHERE t_personaldata.subid <> 19