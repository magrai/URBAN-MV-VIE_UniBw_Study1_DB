CREATE OR REPLACE VIEW v_can_situation_entf AS

SELECT
"public".v_can_situation_distanz.znr,
"public".v_can_situation_distanz.vp,
"public".v_can_situation_distanz.zeit_s,
round(v_can_situation_distanz.zeit_s, 1) as zeit_s_round,
"public".v_can_situation_distanz.distanz_m_diff,
"public".v_can_situation_distanz.distanz_m,
"public".v_can_situation_distanz.runde,
"public".v_can_situation_distanz.runde_distanz_m,
"public".v_can_situation_distanz.triggerid_v3,
"public".v_can_situation_distanz.gps_lat,
"public".v_can_situation_distanz.gps_long,
"public".v_can_situation_distanz.situation,
"public".v_can_situation_distanz.situation_lat,
"public".v_can_situation_distanz.situation_long,
"public".v_can_situation_distanz.situation_gps_distanz_m,
"public".v_can_situation_distanz.situation_gps_distanz_m_min,
"public".v_can_situation_var_max.zeit_s_situation_max,
"public".v_can_situation_var_max.distanz_m_situation_max,
--
"public".v_can_situation_distanz.zeit_s - "public".v_can_situation_var_max.zeit_s_situation_max as zeit_s_situation_entf,
"public".v_can_situation_distanz.distanz_m - "public".v_can_situation_var_max.distanz_m_situation_max as distanz_m_situation_entf

FROM
"public".v_can_situation_distanz
LEFT JOIN "public".v_can_situation_var_max ON "public".v_can_situation_distanz.vp = "public".v_can_situation_var_max.vp AND "public".v_can_situation_distanz.runde = "public".v_can_situation_var_max.runde AND "public".v_can_situation_distanz.situation = "public".v_can_situation_var_max.situation
ORDER BY
"public".v_can_situation_distanz.znr ASC
