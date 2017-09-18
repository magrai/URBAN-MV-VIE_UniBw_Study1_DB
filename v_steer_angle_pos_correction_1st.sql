DROP VIEW IF EXISTS v_steerangle_pos_correction CASCADE;
CREATE VIEW v_steerangle_pos_correction AS
SELECT
"public".t_sxx_steerangle_deg_max.sxx,
"public".t_sxx_steerangle_deg_max.subid,
"public".t_sxx_steerangle_deg_max.round_txt,
"public".t_sxx_steerangle_deg_max.sxx_dist_m_rnd1_min,
"public".t_sxx_steerangle_deg_max.steerangle_deg_max,
"public".t_sxx_steerangle_deg_max.speed_kmh_max,
-- "public".t_sxx_steerangle_deg_max.corrupt, --only needed in 2nd
t_sxx_anomalies.exploration_strategy,
"public".t_sxx_anomalies.consequence
FROM
"public".t_sxx_steerangle_deg_max
LEFT OUTER JOIN  "public".t_sxx_anomalies ON "public".t_sxx_steerangle_deg_max.sxx = "public".t_sxx_anomalies.sxx AND 
"public".t_sxx_steerangle_deg_max.round_txt = "public".t_sxx_anomalies.round_txt AND 
"public".t_sxx_steerangle_deg_max.subid = "public".t_sxx_anomalies.subid AND 
"public".t_sxx_anomalies.exploration_strategy = 'steerangle_deg'
ORDER BY
sxx,
subid,
round_txt
