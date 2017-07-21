CREATE OR REPLACE VIEW v_can_gesamt_v4_situation_fahrdistanz_max AS

SELECT
max("public".v_can_gesamt_v3_situation_distanz_v2_min.znr) as situation_znr_max,
max("public".v_can_gesamt_v3_situation_distanz_v2_min.znr_vp) as situation_znr_vp_max,
"public".v_can_gesamt_v3_situation_distanz_v2_min.vp as vp,
max("public".v_can_gesamt_v3_situation_distanz_v2_min.zeit_s) as situation_zeit_s_max,
max("public".v_can_gesamt_v3_situation_distanz_v2_min.distanz_m) as situation_distanz_m_max,
max("public".v_can_gesamt_v3_situation_distanz_v2_min.znr_runde) as situation_znr_runde_max,
"public".v_can_gesamt_v3_situation_distanz_v2_min.runde as runde,
max("public".v_can_gesamt_v3_situation_distanz_v2_min.distanz_runde_m) as situation_distanz_runde_m_max,
max("public".v_can_gesamt_v3_situation_distanz_v2_min.znr_triggerid_v3) as situation_znr_triggerid_v3_max,
"public".v_can_gesamt_v3_situation_distanz_v2_min.triggerid_v3 as triggerid_v3,
max("public".v_can_gesamt_v3_situation_distanz_v2_min.distanz_triggerid_v3_m) as situation_distanz_triggerid_v3_m_max,
max("public".v_can_gesamt_v3_situation_distanz_v2_min.triggerid_v3_entf_m) as situation_triggerid_v3_entf_m_max,
"public".v_can_gesamt_v3_situation_distanz_v2_min.situation,
-- zur Überprüfung
max("public".v_can_gesamt_v3_situation_distanz_v2_min.situation_gps_distanz_m) as situation_gps_distanz_m,
max("public".v_can_gesamt_v3_situation_distanz_v2_min.situation_gps_distanz_min_m) as situation_gps_distanz_min_m

FROM
"public".v_can_gesamt_v3_situation_distanz_v2_min
WHERE "public".v_can_gesamt_v3_situation_distanz_v2_min.situation_gps_distanz_m = "public".v_can_gesamt_v3_situation_distanz_v2_min.situation_gps_distanz_min_m

GROUP BY
"public".v_can_gesamt_v3_situation_distanz_v2_min.vp,
"public".v_can_gesamt_v3_situation_distanz_v2_min.runde,
"public".v_can_gesamt_v3_situation_distanz_v2_min.triggerid_v3,
"public".v_can_gesamt_v3_situation_distanz_v2_min.situation

ORDER BY 
MAX("public".v_can_gesamt_v3_situation_distanz_v2_min.znr)