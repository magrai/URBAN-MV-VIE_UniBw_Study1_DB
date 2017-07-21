CREATE OR REPLACE VIEW v_can_situation_var_max AS

SELECT
max("public".v_can_situation_distanz.znr) as znr_situation_max,
"public".v_can_situation_distanz.vp,
max("public".v_can_situation_distanz.zeit_s) as zeit_s_situation_max,
max("public".v_can_situation_distanz.distanz_m) as distanz_m_situation_max,
"public".v_can_situation_distanz.runde,
"public".v_can_situation_distanz.situation

FROM
"public".v_can_situation_distanz

WHERE 
"public".v_can_situation_distanz.situation_gps_distanz_m = "public".v_can_situation_distanz.situation_gps_distanz_m_min

GROUP BY
"public".v_can_situation_distanz.vp,
"public".v_can_situation_distanz.runde,
"public".v_can_situation_distanz.triggerid_v3,
"public".v_can_situation_distanz.situation

ORDER BY 
MAX("public".v_can_situation_distanz.znr)