CREATE OR REPLACE VIEW v_can_gesamt_v3_situation_distanz AS

SELECT
"public".v_can_gesamt_v2v3_triggerid_entf.znr,
"public".v_can_gesamt_v2v3_triggerid_entf.znr_vp,
"public".v_can_gesamt_v2v3_triggerid_entf.vp,
"public".v_can_gesamt_v2v3_triggerid_entf.datei,
"public".v_can_gesamt_v2v3_triggerid_entf.zeit_s,
"public".v_can_gesamt_v2v3_triggerid_entf.distanz_m_diff,
"public".v_can_gesamt_v2v3_triggerid_entf.distanz_m,
"public".v_can_gesamt_v2v3_triggerid_entf.znr_runde,
"public".v_can_gesamt_v2v3_triggerid_entf.runde,
"public".v_can_gesamt_v2v3_triggerid_entf.distanz_runde_m,
"public".v_can_gesamt_v2v3_triggerid_entf.znr_triggerid,
"public".v_can_gesamt_v2v3_triggerid_entf.znr_diff_vp_triggerid,
"public".v_can_gesamt_v2v3_triggerid_entf.triggerid,
"public".v_can_gesamt_v2v3_triggerid_entf.triggerid_v2,
"public".v_can_gesamt_v2v3_triggerid_entf.znr_triggerid_v3,
"public".v_can_gesamt_v2v3_triggerid_entf.triggerid_v3,
"public".v_can_gesamt_v2v3_triggerid_entf.distanz_triggerid_v3_m,
"public".v_can_gesamt_v2v3_triggerid_entf.triggerid_v3_entf_m,
--
"public".t_gps_situation.situation,
"public".t_gps_situation.situation_lat,
"public".t_gps_situation.situation_long,
ST_distance_sphere(
	st_point("public".v_can_gesamt_v2v3_triggerid_entf.gps_long, "public".v_can_gesamt_v2v3_triggerid_entf.gps_lat), 
	st_point("public".t_gps_situation.situation_long, "public".t_gps_situation.situation_lat)) 
	as situation_gps_distanz_m, 
--
"public".v_can_gesamt_v2v3_triggerid_entf.geschw_kmh,
"public".v_can_gesamt_v2v3_triggerid_entf.querb_ms2,
"public".v_can_gesamt_v2v3_triggerid_entf.laengsb_ms2,
"public".v_can_gesamt_v2v3_triggerid_entf.gierrate_grad,
"public".v_can_gesamt_v2v3_triggerid_entf.bremsdruck_bar,
"public".v_can_gesamt_v2v3_triggerid_entf.bremsdruck_status,
"public".v_can_gesamt_v2v3_triggerid_entf.lenkradwinkel_grad,
"public".v_can_gesamt_v2v3_triggerid_entf.lenkradwinkel_geschw,
"public".v_can_gesamt_v2v3_triggerid_entf.pedalpos_prozent,
"public".v_can_gesamt_v2v3_triggerid_entf.blinker_links,
"public".v_can_gesamt_v2v3_triggerid_entf.blinker_rechts,
"public".v_can_gesamt_v2v3_triggerid_entf.blinker,
"public".v_can_gesamt_v2v3_triggerid_entf.ldw_seite,
"public".v_can_gesamt_v2v3_triggerid_entf.ldw_tlc_s,
"public".v_can_gesamt_v2v3_triggerid_entf.ldw_dlc_m,
"public".v_can_gesamt_v2v3_triggerid_entf.entf_kreuz_m,
"public".v_can_gesamt_v2v3_triggerid_entf.strtyp,
"public".v_can_gesamt_v2v3_triggerid_entf.anzahl_fahrspuren,
--
"public".v_can_gesamt_v2v3_triggerid_entf.dgps_korrekturtyp,
"public".v_can_gesamt_v2v3_triggerid_entf.dgps_aufloesungssignal,
"public".v_can_gesamt_v2v3_triggerid_entf.dgps_korrekturalter,
"public".v_can_gesamt_v2v3_triggerid_entf.dgps_zeit_woche,
"public".v_can_gesamt_v2v3_triggerid_entf.dgps_zeit_ms,
--
"public".v_can_gesamt_v2v3_triggerid_entf.gps_lat,
"public".v_can_gesamt_v2v3_triggerid_entf.gps_lat_dev,
"public".v_can_gesamt_v2v3_triggerid_entf.gps_long,
"public".v_can_gesamt_v2v3_triggerid_entf.gps_long_dev,
"public".v_can_gesamt_v2v3_triggerid_entf.gps_height,
"public".v_can_gesamt_v2v3_triggerid_entf.gps_height_dev

FROM
"public".v_can_gesamt_v2v3_triggerid_entf
FULL OUTER JOIN "public".t_gps_situation ON "public".v_can_gesamt_v2v3_triggerid_entf.triggerid_v3 = "public".t_gps_situation.triggerid1

ORDER BY
"public".v_can_gesamt_v2v3_triggerid_entf.znr
