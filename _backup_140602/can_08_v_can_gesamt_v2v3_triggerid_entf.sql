CREATE OR REPLACE VIEW v_can_gesamt_v2v3_triggerid_entf AS 

SELECT
"public".v_can_sitxx_entf2_distanz_sum.znr,
"public".v_can_sitxx_entf2_distanz_sum.vp,
"public".v_can_sitxx_entf2_distanz_sum.zeit_s,
"public".v_can_sitxx_entf2_distanz_sum.distanz_m_diff,
"public".v_can_sitxx_entf2_distanz_sum.distanz_m,
"public".v_can_sitxx_entf2_distanz_sum.runde,
"public".v_can_sitxx_entf2_distanz_sum.runde_distanz_m,
"public".v_can_sitxx_entf2_distanz_sum.triggerid_v3,
"public".v_can_sitxx_entf2_distanz_sum.triggerid_v3_distanz_m
max("public".v_can_sitxx_entf2_distanz_sum.distanz_triggerid_v3_m) OVER (PARTITION BY "public".v_can_sitxx_entf2_distanz_sum.vp, "public".v_can_sitxx_entf2_distanz_sum.runde, "public".v_can_sitxx_entf2_distanz_sum.triggerid_v3)
 - "public".v_can_sitxx_entf2_distanz_sum.distanz_triggerid_v3_m
	as triggerid_v3_entf_m,

FROM
"public".v_can_sitxx_entf2_distanz_sum