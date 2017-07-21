CREATE OR REPLACE VIEW v_can_situation_distanz AS

SELECT
"public".v_can_distanz_diff.znr,
"public".v_can_distanz_diff.vp,
"public".v_can_distanz_diff.zeit_s,
"public".v_can_distanz_diff.distanz_m_diff,

--Summierung der gefahrenen Distanz je Messung
sum("public".v_can_distanz_diff.distanz_m_diff) over (partition by "public".v_can_distanz_diff.vp order by "public".v_can_distanz_diff.znr) as distanz_m,

--Summierung der gefahrenen Distanz je Messung nach aktueller Runde
"public".v_can_distanz_diff.runde,
sum("public".v_can_distanz_diff.distanz_m_diff) over (partition by "public".v_can_distanz_diff.vp, "public".v_can_distanz_diff.runde order by "public".v_can_distanz_diff.znr) as runde_distanz_m,

"public".v_can_integration_triggerid_v3.triggerid_v3,
"public".t_situation_gps2.situation,
"public".t_situation_gps2.situation_lat,
"public".t_situation_gps2.situation_long,
--
"public".t_can_gesamt.gps_lat,
"public".t_can_gesamt.gps_long,
--
ST_distance_sphere(
 	st_point("public".t_can_gesamt.gps_long, "public".t_can_gesamt.gps_lat), 
 	st_point("public".t_situation_gps2.situation_long, "public".t_situation_gps2.situation_lat)) 
 	AS situation_gps_distanz_m,

MIN(ST_distance_sphere(
		st_point("public".t_can_gesamt.gps_long, "public".t_can_gesamt.gps_lat), 
		st_point("public".t_situation_gps2.situation_long, "public".t_situation_gps2.situation_lat))) 
	OVER (PARTITION BY 
		"public".v_can_distanz_diff.vp,
		"public".v_can_distanz_diff.runde, 
		"public".t_situation_gps2.situation) 
AS situation_gps_distanz_m_min

FROM
"public".v_can_distanz_diff
LEFT JOIN "public".v_can_integration_triggerid_v3 ON "public".v_can_distanz_diff.znr = "public".v_can_integration_triggerid_v3.znr
LEFT JOIN "public".t_situation_gps2 ON "public".v_can_integration_triggerid_v3.triggerid_v3 = "public".t_situation_gps2.triggerid
LEFT JOIN "public".t_can_gesamt ON "public".v_can_distanz_diff.znr = "public".t_can_gesamt.znr

ORDER BY "public".v_can_distanz_diff.znr