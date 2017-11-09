DROP VIEW IF EXISTS v_steerangle_pos_correction CASCADE;
CREATE VIEW v_steerangle_pos_correction AS
SELECT
t_sxx_steerangle_deg_max.sxx,
t_sxx_steerangle_deg_max.subid,
t_sxx_steerangle_deg_max.round_txt,
t_sxx_steerangle_deg_max.sxx_dist_m_rnd1_min,
t_sxx_steerangle_deg_max.steerangle_deg_max,
t_sxx_steerangle_deg_max.speed_kmh_max,
-- t_sxx_steerangle_deg_max.corrupt, --only needed in 2nd
t_sxx_anomalies.exploration_strategy,
t_sxx_anomalies.consequence
FROM
t_sxx_steerangle_deg_max
LEFT OUTER JOIN  t_sxx_anomalies ON t_sxx_steerangle_deg_max.sxx = t_sxx_anomalies.sxx AND 
t_sxx_steerangle_deg_max.round_txt = t_sxx_anomalies.round_txt AND 
t_sxx_steerangle_deg_max.subid = t_sxx_anomalies.subid AND 
t_sxx_anomalies.exploration_strategy = 'steerangle_deg'
ORDER BY
sxx,
subid,
round_txt
