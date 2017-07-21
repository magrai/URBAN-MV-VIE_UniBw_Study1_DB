CREATE OR REPLACE VIEW v_can_sitxx_distanz_min AS

SELECT *,
MIN("public".v_can_sitxx_distanz.situation_gps_distanz_m) 
	OVER (PARTITION BY 
		"public".v_can_sitxx_distanz.vp,
		"public".v_can_sitxx_distanz.runde, 
		"public".v_can_sitxx_distanz.situation) 
	AS v_can_sitxx_distanz

FROM 
v_can_sitxx_distanz