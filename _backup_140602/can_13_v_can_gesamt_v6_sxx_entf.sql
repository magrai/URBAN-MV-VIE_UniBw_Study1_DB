CREATE OR REPLACE VIEW v_can_gesamt_v6_sxx_entf AS

SELECT 
v_can_gesamt_v5_situation_entf.znr, 
v_can_gesamt_v5_situation_entf.znr_vp, 
v_can_gesamt_v5_situation_entf.vp, 
v_can_gesamt_v5_situation_entf.datei, 
v_can_gesamt_v5_situation_entf.zeit_s, 
v_can_gesamt_v5_situation_entf.situation_zeit_s_max, 
v_can_gesamt_v5_situation_entf.distanz_m_diff, 
v_can_gesamt_v5_situation_entf.distanz_m, 
v_can_gesamt_v5_situation_entf.situation_distanz_m_max, 
v_can_gesamt_v5_situation_entf.znr_runde, 
v_can_gesamt_v5_situation_entf.runde, 
v_can_gesamt_v5_situation_entf.distanz_runde_m, 
v_can_gesamt_v5_situation_entf.situation_distanz_runde_m_max, 
v_can_gesamt_v5_situation_entf.znr_triggerid, 
v_can_gesamt_v5_situation_entf.znr_diff_vp_triggerid, 
v_can_gesamt_v5_situation_entf.triggerid, 
v_can_gesamt_v5_situation_entf.triggerid_v2, 
v_can_gesamt_v5_situation_entf.znr_triggerid_v3, 
v_can_gesamt_v5_situation_entf.triggerid_v3, 
v_can_gesamt_v5_situation_entf.distanz_triggerid_v3_m, 
v_can_gesamt_v5_situation_entf.situation_distanz_triggerid_v3_m_max, 
v_can_gesamt_v5_situation_entf.triggerid_v3_entf_m, 
v_can_gesamt_v5_situation_entf.situation, 
v_can_gesamt_v5_situation_entf.situation_lat, 
v_can_gesamt_v5_situation_entf.situation_long, 
v_can_gesamt_v5_situation_entf.situation_gps_distanz_m, 
v_can_gesamt_v5_situation_entf.situation_gps_distanz_min_m, 
--
v_can_gesamt_v5_situation_entf.geschw_kmh, 
v_can_gesamt_v5_situation_entf.geschw_kmh - lag(v_can_gesamt_v5_situation_entf.geschw_kmh)
	over (partition by v_can_gesamt_v5_situation_entf.vp order by v_can_gesamt_v5_situation_entf.znr) 
	as geschw_kmh_diff,
v_can_gesamt_v5_situation_entf.querb_ms2, 
v_can_gesamt_v5_situation_entf.querb_ms2 - lag(v_can_gesamt_v5_situation_entf.querb_ms2)
	over (partition by v_can_gesamt_v5_situation_entf.vp order by v_can_gesamt_v5_situation_entf.znr) 
	as querb_ms2_diff,
v_can_gesamt_v5_situation_entf.laengsb_ms2,
v_can_gesamt_v5_situation_entf.laengsb_ms2 - lag(v_can_gesamt_v5_situation_entf.laengsb_ms2) 
	over (partition by v_can_gesamt_v5_situation_entf.vp order by v_can_gesamt_v5_situation_entf.znr)
	as laengsb_ms2_diff,
v_can_gesamt_v5_situation_entf.gierrate_grad, 
v_can_gesamt_v5_situation_entf.gierrate_grad - lag(v_can_gesamt_v5_situation_entf.gierrate_grad)
	over (partition by v_can_gesamt_v5_situation_entf.vp order by v_can_gesamt_v5_situation_entf.znr) 
	as gierrate_grad_diff, 
v_can_gesamt_v5_situation_entf.bremsdruck_bar, 
v_can_gesamt_v5_situation_entf.bremsdruck_bar - lag(v_can_gesamt_v5_situation_entf.bremsdruck_bar)
	over (partition by v_can_gesamt_v5_situation_entf.vp order by v_can_gesamt_v5_situation_entf.znr) 
	as bremsdruck_bar_diff, 
v_can_gesamt_v5_situation_entf.bremsdruck_status, 
v_can_gesamt_v5_situation_entf.lenkradwinkel_grad, 
v_can_gesamt_v5_situation_entf.lenkradwinkel_grad - lag(v_can_gesamt_v5_situation_entf.lenkradwinkel_grad)
	over (partition by v_can_gesamt_v5_situation_entf.vp order by v_can_gesamt_v5_situation_entf.znr) 
	as lenkradwinkel_grad_diff, 
v_can_gesamt_v5_situation_entf.lenkradwinkel_geschw, 
v_can_gesamt_v5_situation_entf.lenkradwinkel_geschw - lag(v_can_gesamt_v5_situation_entf.lenkradwinkel_geschw)
	over (partition by v_can_gesamt_v5_situation_entf.vp order by v_can_gesamt_v5_situation_entf.znr) 
	as lenkradwinkel_geschw_diff, 
v_can_gesamt_v5_situation_entf.pedalpos_prozent,
v_can_gesamt_v5_situation_entf.pedalpos_prozent - lag(v_can_gesamt_v5_situation_entf.pedalpos_prozent)
	over (partition by v_can_gesamt_v5_situation_entf.vp order by v_can_gesamt_v5_situation_entf.znr) 
	as pedalpos_prozent_diff, 
v_can_gesamt_v5_situation_entf.blinker_links, 
v_can_gesamt_v5_situation_entf.blinker_rechts, 
v_can_gesamt_v5_situation_entf.blinker, 
v_can_gesamt_v5_situation_entf.ldw_seite, 
v_can_gesamt_v5_situation_entf.ldw_tlc_s,
v_can_gesamt_v5_situation_entf.ldw_tlc_s - lag(v_can_gesamt_v5_situation_entf.ldw_tlc_s)
	over (partition by v_can_gesamt_v5_situation_entf.vp order by v_can_gesamt_v5_situation_entf.znr) 
	as ldw_tlc_s_diff, 
v_can_gesamt_v5_situation_entf.ldw_dlc_m,
v_can_gesamt_v5_situation_entf.ldw_dlc_m - lag(v_can_gesamt_v5_situation_entf.ldw_dlc_m)
	over (partition by v_can_gesamt_v5_situation_entf.vp order by v_can_gesamt_v5_situation_entf.znr) 
	as ldw_dlc_m_diff, 
v_can_gesamt_v5_situation_entf.entf_kreuz_m, 
v_can_gesamt_v5_situation_entf.strtyp, 
v_can_gesamt_v5_situation_entf.anzahl_fahrspuren, 
v_can_gesamt_v5_situation_entf.dgps_korrekturtyp, 
v_can_gesamt_v5_situation_entf.dgps_aufloesungssignal, 
v_can_gesamt_v5_situation_entf.dgps_korrekturalter, 
v_can_gesamt_v5_situation_entf.dgps_zeit_woche, 
v_can_gesamt_v5_situation_entf.dgps_zeit_ms, 
v_can_gesamt_v5_situation_entf.gps_lat, 
v_can_gesamt_v5_situation_entf.gps_lat_dev, 
v_can_gesamt_v5_situation_entf.gps_long, 
v_can_gesamt_v5_situation_entf.gps_long_dev, 
v_can_gesamt_v5_situation_entf.gps_height, 
v_can_gesamt_v5_situation_entf.gps_height_dev, 
--
s01_temp.s01_zeit_s_max,
v_can_gesamt_v5_situation_entf.zeit_s - s01_temp.s01_zeit_s_max as s01_entf_s, 
s02_temp.s02_zeit_s_max,
v_can_gesamt_v5_situation_entf.zeit_s - s02_temp.s02_zeit_s_max as s02_entf_s,
s03_temp.s03_zeit_s_max,
v_can_gesamt_v5_situation_entf.zeit_s - s03_temp.s03_zeit_s_max as s03_entf_s,
s04_temp.s04_zeit_s_max,
v_can_gesamt_v5_situation_entf.zeit_s - s04_temp.s04_zeit_s_max as s04_entf_s,
s05_temp.s05_zeit_s_max,
v_can_gesamt_v5_situation_entf.zeit_s - s05_temp.s05_zeit_s_max as s05_entf_s,
s06_temp.s06_zeit_s_max,
v_can_gesamt_v5_situation_entf.zeit_s - s06_temp.s06_zeit_s_max as s06_entf_s,
s07_temp.s07_zeit_s_max,
v_can_gesamt_v5_situation_entf.zeit_s - s07_temp.s07_zeit_s_max as s07_entf_s,
s08_temp.s08_zeit_s_max,
v_can_gesamt_v5_situation_entf.zeit_s - s08_temp.s08_zeit_s_max as s08_entf_s,
s09_temp.s09_zeit_s_max,
v_can_gesamt_v5_situation_entf.zeit_s - s09_temp.s09_zeit_s_max as s09_entf_s,
s10_temp.s10_zeit_s_max,
v_can_gesamt_v5_situation_entf.zeit_s - s10_temp.s10_zeit_s_max as s10_entf_s,
s11_temp.s11_zeit_s_max,
v_can_gesamt_v5_situation_entf.zeit_s - s11_temp.s11_zeit_s_max as s11_entf_s,
s12_temp.s12_zeit_s_max,
v_can_gesamt_v5_situation_entf.zeit_s - s12_temp.s12_zeit_s_max as s12_entf_s,
s13_temp.s13_zeit_s_max,
v_can_gesamt_v5_situation_entf.zeit_s - s13_temp.s13_zeit_s_max as s13_entf_s,
s14_temp.s14_zeit_s_max,
v_can_gesamt_v5_situation_entf.zeit_s - s14_temp.s14_zeit_s_max as s14_entf_s,
s15_temp.s15_zeit_s_max,
v_can_gesamt_v5_situation_entf.zeit_s - s15_temp.s15_zeit_s_max as s15_entf_s,
s16_temp.s16_zeit_s_max,
v_can_gesamt_v5_situation_entf.zeit_s - s16_temp.s16_zeit_s_max as s16_entf_s,
s17_temp.s17_zeit_s_max,
v_can_gesamt_v5_situation_entf.zeit_s - s17_temp.s17_zeit_s_max as s17_entf_s,
s18_temp.s18_zeit_s_max,
v_can_gesamt_v5_situation_entf.zeit_s - s18_temp.s18_zeit_s_max as s18_entf_s,
--
s01_temp.s01_distanz_m_max,
v_can_gesamt_v5_situation_entf.distanz_m - s01_temp.s01_distanz_m_max as s01_entf_m,
s02_temp.s02_distanz_m_max,
v_can_gesamt_v5_situation_entf.distanz_m - s02_temp.s02_distanz_m_max as s02_entf_m,
s03_temp.s03_distanz_m_max,
v_can_gesamt_v5_situation_entf.distanz_m - s03_temp.s03_distanz_m_max as s03_entf_m,
s04_temp.s04_distanz_m_max,
v_can_gesamt_v5_situation_entf.distanz_m - s04_temp.s04_distanz_m_max as s04_entf_m,
s05_temp.s05_distanz_m_max,
v_can_gesamt_v5_situation_entf.distanz_m - s05_temp.s05_distanz_m_max as s05_entf_m,
s06_temp.s06_distanz_m_max,
v_can_gesamt_v5_situation_entf.distanz_m - s06_temp.s06_distanz_m_max as s06_entf_m,
s07_temp.s07_distanz_m_max,
v_can_gesamt_v5_situation_entf.distanz_m - s07_temp.s07_distanz_m_max as s07_entf_m,
s08_temp.s08_distanz_m_max,
v_can_gesamt_v5_situation_entf.distanz_m - s08_temp.s08_distanz_m_max as s08_entf_m,
s09_temp.s09_distanz_m_max,
v_can_gesamt_v5_situation_entf.distanz_m - s09_temp.s09_distanz_m_max as s09_entf_m,
s10_temp.s10_distanz_m_max,
v_can_gesamt_v5_situation_entf.distanz_m - s10_temp.s10_distanz_m_max as s10_entf_m,
s11_temp.s11_distanz_m_max,
v_can_gesamt_v5_situation_entf.distanz_m - s11_temp.s11_distanz_m_max as s11_entf_m,
s12_temp.s12_distanz_m_max,
v_can_gesamt_v5_situation_entf.distanz_m - s12_temp.s12_distanz_m_max as s12_entf_m,
s13_temp.s13_distanz_m_max,
v_can_gesamt_v5_situation_entf.distanz_m - s13_temp.s13_distanz_m_max as s13_entf_m,
s14_temp.s14_distanz_m_max,
v_can_gesamt_v5_situation_entf.distanz_m - s14_temp.s14_distanz_m_max as s14_entf_m,
s15_temp.s15_distanz_m_max,
v_can_gesamt_v5_situation_entf.distanz_m - s15_temp.s15_distanz_m_max as s15_entf_m,
s16_temp.s16_distanz_m_max,
v_can_gesamt_v5_situation_entf.distanz_m - s16_temp.s16_distanz_m_max as s16_entf_m,
s17_temp.s17_distanz_m_max,
v_can_gesamt_v5_situation_entf.distanz_m - s17_temp.s17_distanz_m_max as s17_entf_m,
s18_temp.s18_distanz_m_max,
v_can_gesamt_v5_situation_entf.distanz_m - s18_temp.s18_distanz_m_max as s18_entf_m

FROM 
v_can_gesamt_v5_situation_entf, 
--
(  SELECT
   v_can_gesamt_v4_situation_fahrdistanz_max.vp, 
   v_can_gesamt_v4_situation_fahrdistanz_max.runde, 
   v_can_gesamt_v4_situation_fahrdistanz_max.situation, 
   v_can_gesamt_v4_situation_fahrdistanz_max.situation_zeit_s_max AS s01_zeit_s_max,
   v_can_gesamt_v4_situation_fahrdistanz_max.situation_distanz_m_max AS s01_distanz_m_max
  FROM 
   v_can_gesamt_v4_situation_fahrdistanz_max
  WHERE 
   v_can_gesamt_v4_situation_fahrdistanz_max.situation = 1
) s01_temp,
-- 
(  SELECT
   v_can_gesamt_v4_situation_fahrdistanz_max.vp, 
   v_can_gesamt_v4_situation_fahrdistanz_max.runde, 
   v_can_gesamt_v4_situation_fahrdistanz_max.situation, 
   v_can_gesamt_v4_situation_fahrdistanz_max.situation_zeit_s_max AS s02_zeit_s_max,
   v_can_gesamt_v4_situation_fahrdistanz_max.situation_distanz_m_max AS s02_distanz_m_max
  FROM 
   v_can_gesamt_v4_situation_fahrdistanz_max
  WHERE 
   v_can_gesamt_v4_situation_fahrdistanz_max.situation = 2
) s02_temp,
-- 
(  SELECT
   v_can_gesamt_v4_situation_fahrdistanz_max.vp, 
   v_can_gesamt_v4_situation_fahrdistanz_max.runde, 
   v_can_gesamt_v4_situation_fahrdistanz_max.situation, 
   v_can_gesamt_v4_situation_fahrdistanz_max.situation_zeit_s_max AS s03_zeit_s_max,
   v_can_gesamt_v4_situation_fahrdistanz_max.situation_distanz_m_max AS s03_distanz_m_max
  FROM 
   v_can_gesamt_v4_situation_fahrdistanz_max
  WHERE 
   v_can_gesamt_v4_situation_fahrdistanz_max.situation = 3
) s03_temp,
-- 
(  SELECT
   v_can_gesamt_v4_situation_fahrdistanz_max.vp, 
   v_can_gesamt_v4_situation_fahrdistanz_max.runde, 
   v_can_gesamt_v4_situation_fahrdistanz_max.situation, 
   v_can_gesamt_v4_situation_fahrdistanz_max.situation_zeit_s_max AS s04_zeit_s_max,
   v_can_gesamt_v4_situation_fahrdistanz_max.situation_distanz_m_max AS s04_distanz_m_max
  FROM 
   v_can_gesamt_v4_situation_fahrdistanz_max
  WHERE 
   v_can_gesamt_v4_situation_fahrdistanz_max.situation = 4
) s04_temp,
-- 
(  SELECT
   v_can_gesamt_v4_situation_fahrdistanz_max.vp, 
   v_can_gesamt_v4_situation_fahrdistanz_max.runde, 
   v_can_gesamt_v4_situation_fahrdistanz_max.situation, 
   v_can_gesamt_v4_situation_fahrdistanz_max.situation_zeit_s_max AS s05_zeit_s_max,
   v_can_gesamt_v4_situation_fahrdistanz_max.situation_distanz_m_max AS s05_distanz_m_max
  FROM 
   v_can_gesamt_v4_situation_fahrdistanz_max
  WHERE 
   v_can_gesamt_v4_situation_fahrdistanz_max.situation = 5
) s05_temp,
-- 
(  SELECT
   v_can_gesamt_v4_situation_fahrdistanz_max.vp, 
   v_can_gesamt_v4_situation_fahrdistanz_max.runde, 
   v_can_gesamt_v4_situation_fahrdistanz_max.situation, 
   v_can_gesamt_v4_situation_fahrdistanz_max.situation_zeit_s_max AS s06_zeit_s_max,
   v_can_gesamt_v4_situation_fahrdistanz_max.situation_distanz_m_max AS s06_distanz_m_max
  FROM 
   v_can_gesamt_v4_situation_fahrdistanz_max
  WHERE 
   v_can_gesamt_v4_situation_fahrdistanz_max.situation = 6
) s06_temp,
-- 
(  SELECT
   v_can_gesamt_v4_situation_fahrdistanz_max.vp, 
   v_can_gesamt_v4_situation_fahrdistanz_max.runde, 
   v_can_gesamt_v4_situation_fahrdistanz_max.situation, 
   v_can_gesamt_v4_situation_fahrdistanz_max.situation_zeit_s_max AS s07_zeit_s_max,
   v_can_gesamt_v4_situation_fahrdistanz_max.situation_distanz_m_max AS s07_distanz_m_max
  FROM 
   v_can_gesamt_v4_situation_fahrdistanz_max
  WHERE 
   v_can_gesamt_v4_situation_fahrdistanz_max.situation = 7
) s07_temp,
-- 
(  SELECT
   v_can_gesamt_v4_situation_fahrdistanz_max.vp, 
   v_can_gesamt_v4_situation_fahrdistanz_max.runde, 
   v_can_gesamt_v4_situation_fahrdistanz_max.situation, 
   v_can_gesamt_v4_situation_fahrdistanz_max.situation_zeit_s_max AS s08_zeit_s_max,
   v_can_gesamt_v4_situation_fahrdistanz_max.situation_distanz_m_max AS s08_distanz_m_max
  FROM 
   v_can_gesamt_v4_situation_fahrdistanz_max
  WHERE 
   v_can_gesamt_v4_situation_fahrdistanz_max.situation = 8
) s08_temp,
-- 
(  SELECT
   v_can_gesamt_v4_situation_fahrdistanz_max.vp, 
   v_can_gesamt_v4_situation_fahrdistanz_max.runde, 
   v_can_gesamt_v4_situation_fahrdistanz_max.situation, 
   v_can_gesamt_v4_situation_fahrdistanz_max.situation_zeit_s_max AS s09_zeit_s_max,
   v_can_gesamt_v4_situation_fahrdistanz_max.situation_distanz_m_max AS s09_distanz_m_max
  FROM 
   v_can_gesamt_v4_situation_fahrdistanz_max
  WHERE 
   v_can_gesamt_v4_situation_fahrdistanz_max.situation = 9
) s09_temp,
-- 
(  SELECT
   v_can_gesamt_v4_situation_fahrdistanz_max.vp, 
   v_can_gesamt_v4_situation_fahrdistanz_max.runde, 
   v_can_gesamt_v4_situation_fahrdistanz_max.situation, 
   v_can_gesamt_v4_situation_fahrdistanz_max.situation_zeit_s_max AS s10_zeit_s_max,
   v_can_gesamt_v4_situation_fahrdistanz_max.situation_distanz_m_max AS s10_distanz_m_max
  FROM 
   v_can_gesamt_v4_situation_fahrdistanz_max
  WHERE 
   v_can_gesamt_v4_situation_fahrdistanz_max.situation = 10
) s10_temp,
-- 
(  SELECT
   v_can_gesamt_v4_situation_fahrdistanz_max.vp, 
   v_can_gesamt_v4_situation_fahrdistanz_max.runde, 
   v_can_gesamt_v4_situation_fahrdistanz_max.situation, 
   v_can_gesamt_v4_situation_fahrdistanz_max.situation_zeit_s_max AS s11_zeit_s_max,
   v_can_gesamt_v4_situation_fahrdistanz_max.situation_distanz_m_max AS s11_distanz_m_max
  FROM 
   v_can_gesamt_v4_situation_fahrdistanz_max
  WHERE 
   v_can_gesamt_v4_situation_fahrdistanz_max.situation = 11
) s11_temp,
-- 
(  SELECT
   v_can_gesamt_v4_situation_fahrdistanz_max.vp, 
   v_can_gesamt_v4_situation_fahrdistanz_max.runde, 
   v_can_gesamt_v4_situation_fahrdistanz_max.situation, 
   v_can_gesamt_v4_situation_fahrdistanz_max.situation_zeit_s_max AS s12_zeit_s_max,
   v_can_gesamt_v4_situation_fahrdistanz_max.situation_distanz_m_max AS s12_distanz_m_max
  FROM 
   v_can_gesamt_v4_situation_fahrdistanz_max
  WHERE 
   v_can_gesamt_v4_situation_fahrdistanz_max.situation = 12
) s12_temp,
-- 
(  SELECT
   v_can_gesamt_v4_situation_fahrdistanz_max.vp, 
   v_can_gesamt_v4_situation_fahrdistanz_max.runde, 
   v_can_gesamt_v4_situation_fahrdistanz_max.situation, 
   v_can_gesamt_v4_situation_fahrdistanz_max.situation_zeit_s_max AS s13_zeit_s_max,
   v_can_gesamt_v4_situation_fahrdistanz_max.situation_distanz_m_max AS s13_distanz_m_max
  FROM 
   v_can_gesamt_v4_situation_fahrdistanz_max
  WHERE 
   v_can_gesamt_v4_situation_fahrdistanz_max.situation = 13
) s13_temp,
-- 
(  SELECT
   v_can_gesamt_v4_situation_fahrdistanz_max.vp, 
   v_can_gesamt_v4_situation_fahrdistanz_max.runde, 
   v_can_gesamt_v4_situation_fahrdistanz_max.situation, 
   v_can_gesamt_v4_situation_fahrdistanz_max.situation_zeit_s_max AS s14_zeit_s_max,
   v_can_gesamt_v4_situation_fahrdistanz_max.situation_distanz_m_max AS s14_distanz_m_max
  FROM 
   v_can_gesamt_v4_situation_fahrdistanz_max
  WHERE 
   v_can_gesamt_v4_situation_fahrdistanz_max.situation = 14
) s14_temp,
-- 
(   SELECT
   v_can_gesamt_v4_situation_fahrdistanz_max.vp, 
   v_can_gesamt_v4_situation_fahrdistanz_max.runde, 
   v_can_gesamt_v4_situation_fahrdistanz_max.situation, 
   v_can_gesamt_v4_situation_fahrdistanz_max.situation_zeit_s_max AS s15_zeit_s_max,
   v_can_gesamt_v4_situation_fahrdistanz_max.situation_distanz_m_max AS s15_distanz_m_max
  FROM 
   v_can_gesamt_v4_situation_fahrdistanz_max
  WHERE 
   v_can_gesamt_v4_situation_fahrdistanz_max.situation = 15
) s15_temp,
-- 
(   SELECT
   v_can_gesamt_v4_situation_fahrdistanz_max.vp, 
   v_can_gesamt_v4_situation_fahrdistanz_max.runde, 
   v_can_gesamt_v4_situation_fahrdistanz_max.situation, 
   v_can_gesamt_v4_situation_fahrdistanz_max.situation_zeit_s_max AS s16_zeit_s_max,
   v_can_gesamt_v4_situation_fahrdistanz_max.situation_distanz_m_max AS s16_distanz_m_max
  FROM 
   v_can_gesamt_v4_situation_fahrdistanz_max
  WHERE 
   v_can_gesamt_v4_situation_fahrdistanz_max.situation = 16
) s16_temp,
-- 
(   SELECT
   v_can_gesamt_v4_situation_fahrdistanz_max.vp, 
   v_can_gesamt_v4_situation_fahrdistanz_max.runde, 
   v_can_gesamt_v4_situation_fahrdistanz_max.situation, 
   v_can_gesamt_v4_situation_fahrdistanz_max.situation_zeit_s_max AS s17_zeit_s_max,
   v_can_gesamt_v4_situation_fahrdistanz_max.situation_distanz_m_max AS s17_distanz_m_max
  FROM 
   v_can_gesamt_v4_situation_fahrdistanz_max
  WHERE 
   v_can_gesamt_v4_situation_fahrdistanz_max.situation = 17
) s17_temp,
-- 
(   SELECT
   v_can_gesamt_v4_situation_fahrdistanz_max.vp, 
   v_can_gesamt_v4_situation_fahrdistanz_max.runde, 
   v_can_gesamt_v4_situation_fahrdistanz_max.situation, 
   v_can_gesamt_v4_situation_fahrdistanz_max.situation_zeit_s_max AS s18_zeit_s_max,
   v_can_gesamt_v4_situation_fahrdistanz_max.situation_distanz_m_max AS s18_distanz_m_max
  FROM 
   v_can_gesamt_v4_situation_fahrdistanz_max
  WHERE 
   v_can_gesamt_v4_situation_fahrdistanz_max.situation = 18
) s18_temp

WHERE 
s01_temp.vp = v_can_gesamt_v5_situation_entf.vp AND 
s01_temp.runde = v_can_gesamt_v5_situation_entf.runde AND 
s02_temp.vp = v_can_gesamt_v5_situation_entf.vp AND 
s02_temp.runde = v_can_gesamt_v5_situation_entf.runde AND
s03_temp.vp = v_can_gesamt_v5_situation_entf.vp AND 
s03_temp.runde = v_can_gesamt_v5_situation_entf.runde AND 
s04_temp.vp = v_can_gesamt_v5_situation_entf.vp AND 
s04_temp.runde = v_can_gesamt_v5_situation_entf.runde AND 
s05_temp.vp = v_can_gesamt_v5_situation_entf.vp AND 
s05_temp.runde = v_can_gesamt_v5_situation_entf.runde AND 
s06_temp.vp = v_can_gesamt_v5_situation_entf.vp AND 
s06_temp.runde = v_can_gesamt_v5_situation_entf.runde AND 
s07_temp.vp = v_can_gesamt_v5_situation_entf.vp AND 
s07_temp.runde = v_can_gesamt_v5_situation_entf.runde AND 
s08_temp.vp = v_can_gesamt_v5_situation_entf.vp AND 
s08_temp.runde = v_can_gesamt_v5_situation_entf.runde AND 
s09_temp.vp = v_can_gesamt_v5_situation_entf.vp AND 
s09_temp.runde = v_can_gesamt_v5_situation_entf.runde AND 
s10_temp.vp = v_can_gesamt_v5_situation_entf.vp AND 
s10_temp.runde = v_can_gesamt_v5_situation_entf.runde AND 
s11_temp.vp = v_can_gesamt_v5_situation_entf.vp AND 
s11_temp.runde = v_can_gesamt_v5_situation_entf.runde AND 
s12_temp.vp = v_can_gesamt_v5_situation_entf.vp AND 
s12_temp.runde = v_can_gesamt_v5_situation_entf.runde AND 
s13_temp.vp = v_can_gesamt_v5_situation_entf.vp AND 
s13_temp.runde = v_can_gesamt_v5_situation_entf.runde AND 
s14_temp.vp = v_can_gesamt_v5_situation_entf.vp AND 
s14_temp.runde = v_can_gesamt_v5_situation_entf.runde AND 
s15_temp.vp = v_can_gesamt_v5_situation_entf.vp AND 
s15_temp.runde = v_can_gesamt_v5_situation_entf.runde AND 
s16_temp.vp = v_can_gesamt_v5_situation_entf.vp AND 
s16_temp.runde = v_can_gesamt_v5_situation_entf.runde AND 
s17_temp.vp = v_can_gesamt_v5_situation_entf.vp AND 
s17_temp.runde = v_can_gesamt_v5_situation_entf.runde AND 
s18_temp.vp = v_can_gesamt_v5_situation_entf.vp AND 
s18_temp.runde = v_can_gesamt_v5_situation_entf.runde;
