CREATE OR REPLACE VIEW "v_can_gesamt_v2v2_distanzen" AS

SELECT
"public".v_can_gesamt_v2.znr,
"public".v_can_gesamt_v2.znr_vp,
"public".v_can_gesamt_v2.vp,
"public".v_can_gesamt_v2.datei,

"public".v_can_gesamt_v2.zeit_s,
"public".v_can_gesamt_v2.distanz_m_diff,
sum("public".v_can_gesamt_v2.distanz_m_diff) over (partition by "public".v_can_gesamt_v2.vp order by "public".v_can_gesamt_v2.znr) as distanz_m,

"public".v_can_gesamt_v2.znr_runde,
"public".v_can_gesamt_v2.runde,
sum("public".v_can_gesamt_v2.distanz_m_diff) over (partition by "public".v_can_gesamt_v2.vp, "public".v_can_gesamt_v2.runde order by "public".v_can_gesamt_v2.znr) as distanz_runde_m,

"public".v_can_gesamt_v2.znr_triggerid,
"public".v_can_gesamt_v2.znr_diff_vp_triggerid,
"public".v_can_gesamt_v2.triggerid,
"public".v_can_gesamt_v2.triggerid_v2,
"public".v_can_gesamt_v2.znr_triggerid_v3,
"public".v_can_gesamt_v2.triggerid_v3,
sum("public".v_can_gesamt_v2.distanz_m_diff) over (partition by "public".v_can_gesamt_v2.vp, "public".v_can_gesamt_v2.runde, "public".v_can_gesamt_v2.triggerid_v3 order by "public".v_can_gesamt_v2.znr) as distanz_triggerid_v3_m, 

"public".v_can_gesamt_v2.geschw_kmh,
"public".v_can_gesamt_v2.querb_ms2,
"public".v_can_gesamt_v2.laengsb_ms2,
"public".v_can_gesamt_v2.gierrate_grad,
"public".v_can_gesamt_v2.bremsdruck_bar,
"public".v_can_gesamt_v2.bremsdruck_status,
"public".v_can_gesamt_v2.lenkradwinkel_grad,
"public".v_can_gesamt_v2.lenkradwinkel_geschw,
"public".v_can_gesamt_v2.pedalpos_prozent,
"public".v_can_gesamt_v2.blinker_links,
"public".v_can_gesamt_v2.blinker_rechts,
"public".v_can_gesamt_v2.blinker,
"public".v_can_gesamt_v2.ldw_seite,
"public".v_can_gesamt_v2.ldw_tlc_s,
"public".v_can_gesamt_v2.ldw_dlc_m,
"public".v_can_gesamt_v2.entf_kreuz_m,
"public".v_can_gesamt_v2.strtyp,
"public".v_can_gesamt_v2.anzahl_fahrspuren,
"public".v_can_gesamt_v2.dgps_korrekturtyp,
"public".v_can_gesamt_v2.dgps_aufloesungssignal,
"public".v_can_gesamt_v2.dgps_korrekturalter,
"public".v_can_gesamt_v2.dgps_zeit_woche,
"public".v_can_gesamt_v2.dgps_zeit_ms,
"public".v_can_gesamt_v2.gps_lat,
"public".v_can_gesamt_v2.gps_lat_dev,
"public".v_can_gesamt_v2.gps_long,
"public".v_can_gesamt_v2.gps_long_dev,
"public".v_can_gesamt_v2.gps_height,
"public".v_can_gesamt_v2.gps_height_dev

FROM
"public".v_can_gesamt_v2