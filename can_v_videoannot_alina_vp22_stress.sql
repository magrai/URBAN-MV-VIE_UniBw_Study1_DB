DROP VIEW IF EXISTS v_videoannot_alina_vp22_stress;
CREATE OR REPLACE VIEW v_videoannot_alina_vp22_stress AS 
 
SELECT 
    t_glances_full_aggr_dist_m_rnd1_max.subid,
    t_glances_full_aggr_dist_m_rnd1_max.time_s,
    t_glances_full_aggr_dist_m_rnd1_max.round_txt,
    t_glances_full_aggr_dist_m_rnd1_max.gps_lat,
    t_glances_full_aggr_dist_m_rnd1_max.gps_long
   FROM t_glances_full_aggr_dist_m_rnd1_max
  WHERE ((t_glances_full_aggr_dist_m_rnd1_max.subid = (22)::numeric) AND (t_glances_full_aggr_dist_m_rnd1_max.round_txt = 'stress'::text));