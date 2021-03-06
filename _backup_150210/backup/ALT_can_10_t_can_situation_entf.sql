DROP TABLE IF EXISTS t_can_situation_entf;
CREATE TABLE t_can_situation_entf AS

SELECT
"public".v_can_situation_distanz.znr,
"public".v_can_situation_distanz.vp,
"public".v_can_situation_distanz.zeit_s,
round("public".v_can_situation_distanz.zeit_s, 1) as zeit_s_rounded,
"public".v_can_situation_distanz.distanz_m_diff,
"public".v_can_situation_distanz.distanz_m,
round("public".v_can_situation_distanz.distanz_m, 0) as distanz_m_rounded,
"public".v_can_situation_distanz.runde,
"public".v_can_situation_distanz.runde_distanz_m,
"public".v_can_situation_distanz.triggerid_v3,
"public".v_can_situation_distanz.gps_lat,
"public".v_can_situation_distanz.gps_long,
"public".v_can_situation_distanz.situation,
"public".v_can_situation_distanz.situation_lat,
"public".v_can_situation_distanz.situation_long,
"public".v_can_situation_distanz.situation_gps_distanz_m,
"public".v_can_situation_distanz.situation_gps_distanz_m_min,
"public".v_can_situation_var_max.zeit_s_situation_max,
round("public".v_can_situation_var_max.zeit_s_situation_max, 1) as zeit_s_situation_max_rounded,
"public".v_can_situation_var_max.distanz_m_situation_max,
round("public".v_can_situation_var_max.distanz_m_situation_max, 0) as distanz_m_situation_max_rounded,
--
"public".v_can_situation_distanz.zeit_s - "public".v_can_situation_var_max.zeit_s_situation_max as zeit_s_situation_entf,
round("public".v_can_situation_distanz.zeit_s, 1) - round("public".v_can_situation_var_max.zeit_s_situation_max, 1) as zeit_s_situation_entf_rounded,
--
"public".v_can_situation_distanz.distanz_m - "public".v_can_situation_var_max.distanz_m_situation_max as distanz_m_situation_entf,
round("public".v_can_situation_distanz.distanz_m, 0) - round("public".v_can_situation_var_max.distanz_m_situation_max, 0) as distanz_m_situation_entf_rounded,
--
s01_temp.s01_zeit_s_situation_max,
v_can_situation_distanz.zeit_s - s01_temp.s01_zeit_s_situation_max as s01_entf_s, 
s02_temp.s02_zeit_s_situation_max,
v_can_situation_distanz.zeit_s - s02_temp.s02_zeit_s_situation_max as s02_entf_s,
s03_temp.s03_zeit_s_situation_max,
v_can_situation_distanz.zeit_s - s03_temp.s03_zeit_s_situation_max as s03_entf_s,
s04_temp.s04_zeit_s_situation_max,
v_can_situation_distanz.zeit_s - s04_temp.s04_zeit_s_situation_max as s04_entf_s,
s05_temp.s05_zeit_s_situation_max,
v_can_situation_distanz.zeit_s - s05_temp.s05_zeit_s_situation_max as s05_entf_s,
s06_temp.s06_zeit_s_situation_max,
v_can_situation_distanz.zeit_s - s06_temp.s06_zeit_s_situation_max as s06_entf_s,
s07_temp.s07_zeit_s_situation_max,
v_can_situation_distanz.zeit_s - s07_temp.s07_zeit_s_situation_max as s07_entf_s,
s08_temp.s08_zeit_s_situation_max,
v_can_situation_distanz.zeit_s - s08_temp.s08_zeit_s_situation_max as s08_entf_s,
s09_temp.s09_zeit_s_situation_max,
v_can_situation_distanz.zeit_s - s09_temp.s09_zeit_s_situation_max as s09_entf_s,
s10_temp.s10_zeit_s_situation_max,
v_can_situation_distanz.zeit_s - s10_temp.s10_zeit_s_situation_max as s10_entf_s,
s11_temp.s11_zeit_s_situation_max,
v_can_situation_distanz.zeit_s - s11_temp.s11_zeit_s_situation_max as s11_entf_s,
s12_temp.s12_zeit_s_situation_max,
v_can_situation_distanz.zeit_s - s12_temp.s12_zeit_s_situation_max as s12_entf_s,
s13_temp.s13_zeit_s_situation_max,
v_can_situation_distanz.zeit_s - s13_temp.s13_zeit_s_situation_max as s13_entf_s,
s14_temp.s14_zeit_s_situation_max,
v_can_situation_distanz.zeit_s - s14_temp.s14_zeit_s_situation_max as s14_entf_s,
s15_temp.s15_zeit_s_situation_max,
v_can_situation_distanz.zeit_s - s15_temp.s15_zeit_s_situation_max as s15_entf_s,
s16_temp.s16_zeit_s_situation_max,
v_can_situation_distanz.zeit_s - s16_temp.s16_zeit_s_situation_max as s16_entf_s,
s17_temp.s17_zeit_s_situation_max,
v_can_situation_distanz.zeit_s - s17_temp.s17_zeit_s_situation_max as s17_entf_s,
s18_temp.s18_zeit_s_situation_max,
v_can_situation_distanz.zeit_s - s18_temp.s18_zeit_s_situation_max as s18_entf_s,
--
s01_temp.s01_distanz_m_situation_max,
v_can_situation_distanz.distanz_m - s01_temp.s01_distanz_m_situation_max as s01_entf_m,
s02_temp.s02_distanz_m_situation_max,
v_can_situation_distanz.distanz_m - s02_temp.s02_distanz_m_situation_max as s02_entf_m,
s03_temp.s03_distanz_m_situation_max,
v_can_situation_distanz.distanz_m - s03_temp.s03_distanz_m_situation_max as s03_entf_m,
s04_temp.s04_distanz_m_situation_max,
v_can_situation_distanz.distanz_m - s04_temp.s04_distanz_m_situation_max as s04_entf_m,
s05_temp.s05_distanz_m_situation_max,
v_can_situation_distanz.distanz_m - s05_temp.s05_distanz_m_situation_max as s05_entf_m,
s06_temp.s06_distanz_m_situation_max,
v_can_situation_distanz.distanz_m - s06_temp.s06_distanz_m_situation_max as s06_entf_m,
s07_temp.s07_distanz_m_situation_max,
v_can_situation_distanz.distanz_m - s07_temp.s07_distanz_m_situation_max as s07_entf_m,
s08_temp.s08_distanz_m_situation_max,
v_can_situation_distanz.distanz_m - s08_temp.s08_distanz_m_situation_max as s08_entf_m,
s09_temp.s09_distanz_m_situation_max,
v_can_situation_distanz.distanz_m - s09_temp.s09_distanz_m_situation_max as s09_entf_m,
s10_temp.s10_distanz_m_situation_max,
v_can_situation_distanz.distanz_m - s10_temp.s10_distanz_m_situation_max as s10_entf_m,
s11_temp.s11_distanz_m_situation_max,
v_can_situation_distanz.distanz_m - s11_temp.s11_distanz_m_situation_max as s11_entf_m,
s12_temp.s12_distanz_m_situation_max,
v_can_situation_distanz.distanz_m - s12_temp.s12_distanz_m_situation_max as s12_entf_m,
s13_temp.s13_distanz_m_situation_max,
v_can_situation_distanz.distanz_m - s13_temp.s13_distanz_m_situation_max as s13_entf_m,
s14_temp.s14_distanz_m_situation_max,
v_can_situation_distanz.distanz_m - s14_temp.s14_distanz_m_situation_max as s14_entf_m,
s15_temp.s15_distanz_m_situation_max,
v_can_situation_distanz.distanz_m - s15_temp.s15_distanz_m_situation_max as s15_entf_m,
s16_temp.s16_distanz_m_situation_max,
v_can_situation_distanz.distanz_m - s16_temp.s16_distanz_m_situation_max as s16_entf_m,
s17_temp.s17_distanz_m_situation_max,
v_can_situation_distanz.distanz_m - s17_temp.s17_distanz_m_situation_max as s17_entf_m,
s18_temp.s18_distanz_m_situation_max,
v_can_situation_distanz.distanz_m - s18_temp.s18_distanz_m_situation_max as s18_entf_m,
--
"public".t_can_gesamt.geschw_kmh,
"public".t_can_gesamt.geschw_kmh_diff,
"public".t_can_gesamt.querb_ms2,
"public".t_can_gesamt.querb_ms2_diff,
"public".t_can_gesamt.laengsb_ms2,
"public".t_can_gesamt.laengsb_ms2_diff,
"public".t_can_gesamt.gierrate_grad,
"public".t_can_gesamt.gierrate_grad_diff,
"public".t_can_gesamt.bremsdruck_bar,
"public".t_can_gesamt.bremsdruck_bar_diff,
"public".t_can_gesamt.bremsdruck_status,
"public".t_can_gesamt.lwi_grad,
"public".t_can_gesamt.lwi_grad_diff,
"public".t_can_gesamt.lwi_geschw,
"public".t_can_gesamt.lwi_geschw_diff,
"public".t_can_gesamt.pedalpos_prozent,
"public".t_can_gesamt.pedalpos_prozent_diff,
"public".t_can_gesamt.blinker_links,
"public".t_can_gesamt.blinker_rechts,
"public".t_can_gesamt.blinker,
"public".t_can_gesamt.ldw_seite,
"public".t_can_gesamt.ldw_tlc_s,
"public".t_can_gesamt.ldw_tlc_s_diff,
"public".t_can_gesamt.ldw_dlc_m,
"public".t_can_gesamt.ldw_dlc_m_diff,
"public".t_can_gesamt.entf_kreuz_m,
"public".t_can_gesamt.strtyp,
"public".t_can_gesamt.fahrspuren_anzahl

FROM
"public".v_can_situation_distanz
LEFT JOIN "public".v_can_situation_var_max ON "public".v_can_situation_distanz.vp = "public".v_can_situation_var_max.vp AND "public".v_can_situation_distanz.runde = "public".v_can_situation_var_max.runde AND "public".v_can_situation_distanz.situation = "public".v_can_situation_var_max.situation
LEFT JOIN "public".t_can_gesamt ON "public".v_can_situation_distanz.znr = "public".t_can_gesamt.znr,

(  SELECT
   v_can_situation_var_max.vp, 
   v_can_situation_var_max.runde, 
   v_can_situation_var_max.situation, 
   v_can_situation_var_max.zeit_s_situation_max AS s01_zeit_s_situation_max,
   v_can_situation_var_max.distanz_m_situation_max AS s01_distanz_m_situation_max
  FROM 
   v_can_situation_var_max
  WHERE 
   v_can_situation_var_max.situation = 1
) s01_temp,
-- 
(  SELECT
   v_can_situation_var_max.vp, 
   v_can_situation_var_max.runde, 
   v_can_situation_var_max.situation, 
   v_can_situation_var_max.zeit_s_situation_max AS s02_zeit_s_situation_max,
   v_can_situation_var_max.distanz_m_situation_max AS s02_distanz_m_situation_max
  FROM 
   v_can_situation_var_max
  WHERE 
   v_can_situation_var_max.situation = 2
) s02_temp,
-- 
(  SELECT
   v_can_situation_var_max.vp, 
   v_can_situation_var_max.runde, 
   v_can_situation_var_max.situation, 
   v_can_situation_var_max.zeit_s_situation_max AS s03_zeit_s_situation_max,
   v_can_situation_var_max.distanz_m_situation_max AS s03_distanz_m_situation_max
  FROM 
   v_can_situation_var_max
  WHERE 
   v_can_situation_var_max.situation = 3
) s03_temp,
-- 
(  SELECT
   v_can_situation_var_max.vp, 
   v_can_situation_var_max.runde, 
   v_can_situation_var_max.situation, 
   v_can_situation_var_max.zeit_s_situation_max AS s04_zeit_s_situation_max,
   v_can_situation_var_max.distanz_m_situation_max AS s04_distanz_m_situation_max
  FROM 
   v_can_situation_var_max
  WHERE 
   v_can_situation_var_max.situation = 4
) s04_temp,
-- 
(  SELECT
   v_can_situation_var_max.vp, 
   v_can_situation_var_max.runde, 
   v_can_situation_var_max.situation, 
   v_can_situation_var_max.zeit_s_situation_max AS s05_zeit_s_situation_max,
   v_can_situation_var_max.distanz_m_situation_max AS s05_distanz_m_situation_max
  FROM 
   v_can_situation_var_max
  WHERE 
   v_can_situation_var_max.situation = 5
) s05_temp,
-- 
(  SELECT
   v_can_situation_var_max.vp, 
   v_can_situation_var_max.runde, 
   v_can_situation_var_max.situation, 
   v_can_situation_var_max.zeit_s_situation_max AS s06_zeit_s_situation_max,
   v_can_situation_var_max.distanz_m_situation_max AS s06_distanz_m_situation_max
  FROM 
   v_can_situation_var_max
  WHERE 
   v_can_situation_var_max.situation = 6
) s06_temp,
-- 
(  SELECT
   v_can_situation_var_max.vp, 
   v_can_situation_var_max.runde, 
   v_can_situation_var_max.situation, 
   v_can_situation_var_max.zeit_s_situation_max AS s07_zeit_s_situation_max,
   v_can_situation_var_max.distanz_m_situation_max AS s07_distanz_m_situation_max
  FROM 
   v_can_situation_var_max
  WHERE 
   v_can_situation_var_max.situation = 7
) s07_temp,
-- 
(  SELECT
   v_can_situation_var_max.vp, 
   v_can_situation_var_max.runde, 
   v_can_situation_var_max.situation, 
   v_can_situation_var_max.zeit_s_situation_max AS s08_zeit_s_situation_max,
   v_can_situation_var_max.distanz_m_situation_max AS s08_distanz_m_situation_max
  FROM 
   v_can_situation_var_max
  WHERE 
   v_can_situation_var_max.situation = 8
) s08_temp,
-- 
(  SELECT
   v_can_situation_var_max.vp, 
   v_can_situation_var_max.runde, 
   v_can_situation_var_max.situation, 
   v_can_situation_var_max.zeit_s_situation_max AS s09_zeit_s_situation_max,
   v_can_situation_var_max.distanz_m_situation_max AS s09_distanz_m_situation_max
  FROM 
   v_can_situation_var_max
  WHERE 
   v_can_situation_var_max.situation = 9
) s09_temp,
-- 
(  SELECT
   v_can_situation_var_max.vp, 
   v_can_situation_var_max.runde, 
   v_can_situation_var_max.situation, 
   v_can_situation_var_max.zeit_s_situation_max AS s10_zeit_s_situation_max,
   v_can_situation_var_max.distanz_m_situation_max AS s10_distanz_m_situation_max
  FROM 
   v_can_situation_var_max
  WHERE 
   v_can_situation_var_max.situation = 10
) s10_temp,
-- 
(  SELECT
   v_can_situation_var_max.vp, 
   v_can_situation_var_max.runde, 
   v_can_situation_var_max.situation, 
   v_can_situation_var_max.zeit_s_situation_max AS s11_zeit_s_situation_max,
   v_can_situation_var_max.distanz_m_situation_max AS s11_distanz_m_situation_max
  FROM 
   v_can_situation_var_max
  WHERE 
   v_can_situation_var_max.situation = 11
) s11_temp,
-- 
(  SELECT
   v_can_situation_var_max.vp, 
   v_can_situation_var_max.runde, 
   v_can_situation_var_max.situation, 
   v_can_situation_var_max.zeit_s_situation_max AS s12_zeit_s_situation_max,
   v_can_situation_var_max.distanz_m_situation_max AS s12_distanz_m_situation_max
  FROM 
   v_can_situation_var_max
  WHERE 
   v_can_situation_var_max.situation = 12
) s12_temp,
-- 
(  SELECT
   v_can_situation_var_max.vp, 
   v_can_situation_var_max.runde, 
   v_can_situation_var_max.situation, 
   v_can_situation_var_max.zeit_s_situation_max AS s13_zeit_s_situation_max,
   v_can_situation_var_max.distanz_m_situation_max AS s13_distanz_m_situation_max
  FROM 
   v_can_situation_var_max
  WHERE 
   v_can_situation_var_max.situation = 13
) s13_temp,
-- 
(  SELECT
   v_can_situation_var_max.vp, 
   v_can_situation_var_max.runde, 
   v_can_situation_var_max.situation, 
   v_can_situation_var_max.zeit_s_situation_max AS s14_zeit_s_situation_max,
   v_can_situation_var_max.distanz_m_situation_max AS s14_distanz_m_situation_max
  FROM 
   v_can_situation_var_max
  WHERE 
   v_can_situation_var_max.situation = 14
) s14_temp,
-- 
(   SELECT
   v_can_situation_var_max.vp, 
   v_can_situation_var_max.runde, 
   v_can_situation_var_max.situation, 
   v_can_situation_var_max.zeit_s_situation_max AS s15_zeit_s_situation_max,
   v_can_situation_var_max.distanz_m_situation_max AS s15_distanz_m_situation_max
  FROM 
   v_can_situation_var_max
  WHERE 
   v_can_situation_var_max.situation = 15
) s15_temp,
-- 
(   SELECT
   v_can_situation_var_max.vp, 
   v_can_situation_var_max.runde, 
   v_can_situation_var_max.situation, 
   v_can_situation_var_max.zeit_s_situation_max AS s16_zeit_s_situation_max,
   v_can_situation_var_max.distanz_m_situation_max AS s16_distanz_m_situation_max
  FROM 
   v_can_situation_var_max
  WHERE 
   v_can_situation_var_max.situation = 16
) s16_temp,
-- 
(   SELECT
   v_can_situation_var_max.vp, 
   v_can_situation_var_max.runde, 
   v_can_situation_var_max.situation, 
   v_can_situation_var_max.zeit_s_situation_max AS s17_zeit_s_situation_max,
   v_can_situation_var_max.distanz_m_situation_max AS s17_distanz_m_situation_max
  FROM 
   v_can_situation_var_max
  WHERE 
   v_can_situation_var_max.situation = 17
) s17_temp,
-- 
(   SELECT
   v_can_situation_var_max.vp, 
   v_can_situation_var_max.runde, 
   v_can_situation_var_max.situation, 
   v_can_situation_var_max.zeit_s_situation_max AS s18_zeit_s_situation_max,
   v_can_situation_var_max.distanz_m_situation_max AS s18_distanz_m_situation_max
  FROM 
   v_can_situation_var_max
  WHERE 
   v_can_situation_var_max.situation = 18
) s18_temp

WHERE 
s01_temp.vp = v_can_situation_distanz.vp AND 
s01_temp.runde = v_can_situation_distanz.runde AND 
s02_temp.vp = v_can_situation_distanz.vp AND 
s02_temp.runde = v_can_situation_distanz.runde AND
s03_temp.vp = v_can_situation_distanz.vp AND 
s03_temp.runde = v_can_situation_distanz.runde AND 
s04_temp.vp = v_can_situation_distanz.vp AND 
s04_temp.runde = v_can_situation_distanz.runde AND 
s05_temp.vp = v_can_situation_distanz.vp AND 
s05_temp.runde = v_can_situation_distanz.runde AND 
s06_temp.vp = v_can_situation_distanz.vp AND 
s06_temp.runde = v_can_situation_distanz.runde AND 
s07_temp.vp = v_can_situation_distanz.vp AND 
s07_temp.runde = v_can_situation_distanz.runde AND 
s08_temp.vp = v_can_situation_distanz.vp AND 
s08_temp.runde = v_can_situation_distanz.runde AND 
s09_temp.vp = v_can_situation_distanz.vp AND 
s09_temp.runde = v_can_situation_distanz.runde AND 
s10_temp.vp = v_can_situation_distanz.vp AND 
s10_temp.runde = v_can_situation_distanz.runde AND 
s11_temp.vp = v_can_situation_distanz.vp AND 
s11_temp.runde = v_can_situation_distanz.runde AND 
s12_temp.vp = v_can_situation_distanz.vp AND 
s12_temp.runde = v_can_situation_distanz.runde AND 
s13_temp.vp = v_can_situation_distanz.vp AND 
s13_temp.runde = v_can_situation_distanz.runde AND 
s14_temp.vp = v_can_situation_distanz.vp AND 
s14_temp.runde = v_can_situation_distanz.runde AND 
s15_temp.vp = v_can_situation_distanz.vp AND 
s15_temp.runde = v_can_situation_distanz.runde AND 
s16_temp.vp = v_can_situation_distanz.vp AND 
s16_temp.runde = v_can_situation_distanz.runde AND 
s17_temp.vp = v_can_situation_distanz.vp AND 
s17_temp.runde = v_can_situation_distanz.runde AND 
s18_temp.vp = v_can_situation_distanz.vp AND 
s18_temp.runde = v_can_situation_distanz.runde

ORDER BY
"public".v_can_situation_distanz.znr ASC