CREATE OR REPLACE VIEW v_can_gesamt_v2 AS 

SELECT
"public".t_can_gesamt.znr,
"public".t_can_gesamt.znr_vp,
"public".t_can_gesamt.vp,
"public".t_can_gesamt.datei,
"public".t_can_gesamt.zeit_s,
CASE
	WHEN "public".t_can_gesamt.geschw_kmh/3.6 * ("public".t_can_gesamt.zeit_s - lag("public".t_can_gesamt.zeit_s) over (order by "public".t_can_gesamt.znr)) IS NULL
	THEN "public".t_can_gesamt.geschw_kmh/3.6 * "public".t_can_gesamt.zeit_s
	ELSE "public".t_can_gesamt.geschw_kmh/3.6 * ("public".t_can_gesamt.zeit_s - lag("public".t_can_gesamt.zeit_s) over (order by "public".t_can_gesamt.znr)) 
END as distanz_m_diff,
"public".t_can_gesamt.geschw_kmh,
"public".t_can_gesamt.querb_ms2,
"public".t_can_gesamt.laengsb_ms2,
"public".t_can_gesamt.gierrate_grad,
"public".t_can_gesamt.bremsdruck_bar,
"public".t_can_gesamt.bremsdruck_status,
"public".t_can_gesamt.lenkradwinkel_grad,
"public".t_can_gesamt.lenkradwinkel_geschw,
"public".t_can_gesamt.pedalpos_prozent,
"public".t_can_gesamt.blinker_links,
"public".t_can_gesamt.blinker_rechts,
"public".t_can_gesamt.blinker,
"public".t_can_gesamt.ldw_seite,
"public".t_can_gesamt.ldw_tlc_s,
"public".t_can_gesamt.ldw_dlc_m,
"public".t_can_gesamt.entf_kreuz_m,
"public".t_can_gesamt.strtyp,
"public".t_can_gesamt.anzahl_fahrspuren,
"public".t_can_gesamt.dgps_korrekturtyp,
"public".t_can_gesamt.dgps_aufloesungssignal,
"public".t_can_gesamt.dgps_korrekturalter,
"public".t_can_gesamt.dgps_zeit_woche,
"public".t_can_gesamt.dgps_zeit_ms,
"public".t_can_gesamt.gps_lat,
"public".t_can_gesamt.gps_lat_dev,
"public".t_can_gesamt.gps_long,
"public".t_can_gesamt.gps_long_dev,
"public".t_can_gesamt.gps_height,
"public".t_can_gesamt.gps_height_dev,
"public".t_can_gesamt.znr_triggerid,
"public".t_can_gesamt.znr_diff_vp_triggerid,
"public".t_can_gesamt.triggerid,
"public".t_can_gesamt.triggerid_v2,
row_number() OVER (PARTITION BY "public".t_can_gesamt.vp, "public".v_can_triggerid_v3.runde, "public".v_can_triggerid_v3.triggerid_v3 ORDER BY "public".t_can_gesamt.znr) AS znr_triggerid_v3,
"public".v_can_triggerid_v3.triggerid_v3,
row_number() OVER (PARTITION BY "public".t_can_gesamt.vp, "public".v_can_triggerid_v3.runde ORDER BY "public".t_can_gesamt.znr) AS znr_runde,
"public".v_can_triggerid_v3.runde
FROM
"public".v_can_triggerid_v3
INNER JOIN "public".t_can_gesamt ON "public".t_can_gesamt.znr = "public".v_can_triggerid_v3.znr

ORDER BY "public".t_can_gesamt.znr