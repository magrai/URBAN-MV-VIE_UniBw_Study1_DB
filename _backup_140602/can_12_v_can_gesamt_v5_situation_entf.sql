CREATE OR REPLACE VIEW v_can_gesamt_v5_situation_entf AS

SELECT
"public".v_can_gesamt_v3_situation_distanz_v2_min.znr,
"public".v_can_gesamt_v3_situation_distanz_v2_min.znr_vp,
"public".v_can_gesamt_v3_situation_distanz_v2_min.vp,
"public".v_can_gesamt_v3_situation_distanz_v2_min.datei,
"public".v_can_gesamt_v3_situation_distanz_v2_min.zeit_s,
--
"public".v_can_gesamt_v4_situation_fahrdistanz_max.situation_zeit_s_max,
--"public".v_can_gesamt_v4_situation_fahrdistanz_max.zeit_s_max - "public".v_can_gesamt_v3_situation_distanz_v2_min.zeit_s as situation_entf_zeit_s,
--
"public".v_can_gesamt_v3_situation_distanz_v2_min.distanz_m_diff,
"public".v_can_gesamt_v3_situation_distanz_v2_min.distanz_m,
--
"public".v_can_gesamt_v4_situation_fahrdistanz_max.situation_distanz_m_max,
--"public".v_can_gesamt_v4_situation_fahrdistanz_max.distanz_m_max - "public".v_can_gesamt_v3_situation_distanz_v2_min.distanz_m as situation_entf_distanz_m,
--
"public".v_can_gesamt_v3_situation_distanz_v2_min.znr_runde,
"public".v_can_gesamt_v3_situation_distanz_v2_min.runde,
"public".v_can_gesamt_v3_situation_distanz_v2_min.distanz_runde_m,
--
"public".v_can_gesamt_v4_situation_fahrdistanz_max.situation_distanz_runde_m_max,
--"public".v_can_gesamt_v4_situation_fahrdistanz_max.distanz_runde_m_max - "public".v_can_gesamt_v3_situation_distanz_v2_min.distanz_runde_m as situation_entf_distanz_runde_m,
--
"public".v_can_gesamt_v3_situation_distanz_v2_min.znr_triggerid,
"public".v_can_gesamt_v3_situation_distanz_v2_min.znr_diff_vp_triggerid,
"public".v_can_gesamt_v3_situation_distanz_v2_min.triggerid,
"public".v_can_gesamt_v3_situation_distanz_v2_min.triggerid_v2,
"public".v_can_gesamt_v3_situation_distanz_v2_min.znr_triggerid_v3,
"public".v_can_gesamt_v3_situation_distanz_v2_min.triggerid_v3,
"public".v_can_gesamt_v3_situation_distanz_v2_min.distanz_triggerid_v3_m,
--
"public".v_can_gesamt_v4_situation_fahrdistanz_max.situation_distanz_triggerid_v3_m_max,
--"public".v_can_gesamt_v4_situation_fahrdistanz_max.distanz_triggerid_v3_m_max - "public".v_can_gesamt_v3_situation_distanz_v2_min.distanz_triggerid_v3_m as situation_entf_distanz_triggerid_m,
--
"public".v_can_gesamt_v3_situation_distanz_v2_min.triggerid_v3_entf_m,
"public".v_can_gesamt_v3_situation_distanz_v2_min.situation,
"public".v_can_gesamt_v3_situation_distanz_v2_min.situation_lat,
"public".v_can_gesamt_v3_situation_distanz_v2_min.situation_long,
"public".v_can_gesamt_v3_situation_distanz_v2_min.situation_gps_distanz_m,
"public".v_can_gesamt_v3_situation_distanz_v2_min.situation_gps_distanz_min_m,
"public".v_can_gesamt_v3_situation_distanz_v2_min.geschw_kmh,
"public".v_can_gesamt_v3_situation_distanz_v2_min.querb_ms2,
"public".v_can_gesamt_v3_situation_distanz_v2_min.laengsb_ms2,
"public".v_can_gesamt_v3_situation_distanz_v2_min.gierrate_grad,
"public".v_can_gesamt_v3_situation_distanz_v2_min.bremsdruck_bar,
"public".v_can_gesamt_v3_situation_distanz_v2_min.bremsdruck_status,
"public".v_can_gesamt_v3_situation_distanz_v2_min.lenkradwinkel_grad,
"public".v_can_gesamt_v3_situation_distanz_v2_min.lenkradwinkel_geschw,
"public".v_can_gesamt_v3_situation_distanz_v2_min.pedalpos_prozent,
"public".v_can_gesamt_v3_situation_distanz_v2_min.blinker_links,
"public".v_can_gesamt_v3_situation_distanz_v2_min.blinker_rechts,
"public".v_can_gesamt_v3_situation_distanz_v2_min.blinker,
"public".v_can_gesamt_v3_situation_distanz_v2_min.ldw_seite,
"public".v_can_gesamt_v3_situation_distanz_v2_min.ldw_tlc_s,
"public".v_can_gesamt_v3_situation_distanz_v2_min.ldw_dlc_m,
"public".v_can_gesamt_v3_situation_distanz_v2_min.entf_kreuz_m,
"public".v_can_gesamt_v3_situation_distanz_v2_min.strtyp,
"public".v_can_gesamt_v3_situation_distanz_v2_min.anzahl_fahrspuren,
"public".v_can_gesamt_v3_situation_distanz_v2_min.dgps_korrekturtyp,
"public".v_can_gesamt_v3_situation_distanz_v2_min.dgps_aufloesungssignal,
"public".v_can_gesamt_v3_situation_distanz_v2_min.dgps_korrekturalter,
"public".v_can_gesamt_v3_situation_distanz_v2_min.dgps_zeit_woche,
"public".v_can_gesamt_v3_situation_distanz_v2_min.dgps_zeit_ms,
"public".v_can_gesamt_v3_situation_distanz_v2_min.gps_lat,
"public".v_can_gesamt_v3_situation_distanz_v2_min.gps_lat_dev,
"public".v_can_gesamt_v3_situation_distanz_v2_min.gps_long,
"public".v_can_gesamt_v3_situation_distanz_v2_min.gps_long_dev,
"public".v_can_gesamt_v3_situation_distanz_v2_min.gps_height,
"public".v_can_gesamt_v3_situation_distanz_v2_min.gps_height_dev
FROM
"public".v_can_gesamt_v3_situation_distanz_v2_min
LEFT OUTER JOIN "public".v_can_gesamt_v4_situation_fahrdistanz_max ON "public".v_can_gesamt_v4_situation_fahrdistanz_max.vp = "public".v_can_gesamt_v3_situation_distanz_v2_min.vp AND "public".v_can_gesamt_v4_situation_fahrdistanz_max.runde = "public".v_can_gesamt_v3_situation_distanz_v2_min.runde AND "public".v_can_gesamt_v4_situation_fahrdistanz_max.triggerid_v3 = "public".v_can_gesamt_v3_situation_distanz_v2_min.triggerid_v3 AND "public".v_can_gesamt_v4_situation_fahrdistanz_max.situation = "public".v_can_gesamt_v3_situation_distanz_v2_min.situation