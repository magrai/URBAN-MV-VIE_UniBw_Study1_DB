DROP TABLE IF EXISTS t_can_sxx_gesamt;
CREATE TABLE t_can_sxx_gesamt AS

SELECT
"public".t_can_sxx_entf.znr,
"public".t_can_sxx_entf.vp,
"public".t_can_sxx_entf.zeit_s,
"public".t_can_sxx_entf.zeit_s_rounded,
"public".t_can_sxx_entf.distanz_m_diff,
"public".t_can_sxx_entf.distanz_m,
"public".t_can_sxx_entf.distanz_m_rounded,
"public".t_can_sxx_entf.runde,
--
CASE 
WHEN "public".t_can_sxx_entf.runde = 1 THEN 'einf'
WHEN "public".t_can_sxx_entf.runde = "public".t_versuchsablauf."Runde_normal" THEN 'normal'
WHEN "public".t_can_sxx_entf.runde = "public".t_versuchsablauf."Runde_gestresst" THEN 'stress'
END AS runde_txt,
--
"public".t_can_sxx_entf.runde_distanz_m,
"public".t_can_sxx_entf.runde_distanz_m_rounded,
"public".t_can_sxx_entf.gps_lat,
"public".t_can_sxx_entf.gps_long,
"public".t_can_sxx_entf.s01_gps_lat,
"public".t_can_sxx_entf.s01_gps_long,
"public".t_can_sxx_entf.s02_gps_lat,
"public".t_can_sxx_entf.s02_gps_long,
"public".t_can_sxx_entf.s03_gps_lat,
"public".t_can_sxx_entf.s03_gps_long,
"public".t_can_sxx_entf.s04_gps_lat,
"public".t_can_sxx_entf.s04_gps_long,
"public".t_can_sxx_entf.s05_gps_lat,
"public".t_can_sxx_entf.s05_gps_long,
"public".t_can_sxx_entf.s06_gps_lat,
"public".t_can_sxx_entf.s06_gps_long,
"public".t_can_sxx_entf.s07_gps_lat,
"public".t_can_sxx_entf.s07_gps_long,
"public".t_can_sxx_entf.s08_gps_lat,
"public".t_can_sxx_entf.s08_gps_long,
"public".t_can_sxx_entf.s09_gps_lat,
"public".t_can_sxx_entf.s09_gps_long,
"public".t_can_sxx_entf.s10_gps_lat,
"public".t_can_sxx_entf.s10_gps_long,
"public".t_can_sxx_entf.s11_gps_lat,
"public".t_can_sxx_entf.s11_gps_long,
"public".t_can_sxx_entf.s12_gps_lat,
"public".t_can_sxx_entf.s12_gps_long,
"public".t_can_sxx_entf.s13_gps_lat,
"public".t_can_sxx_entf.s13_gps_long,
"public".t_can_sxx_entf.s14_gps_lat,
"public".t_can_sxx_entf.s14_gps_long,
"public".t_can_sxx_entf.s15_gps_lat,
"public".t_can_sxx_entf.s15_gps_long,
"public".t_can_sxx_entf.s16_gps_lat,
"public".t_can_sxx_entf.s16_gps_long,
"public".t_can_sxx_entf.s17_gps_lat,
"public".t_can_sxx_entf.s17_gps_long,
"public".t_can_sxx_entf.s18_gps_lat,
"public".t_can_sxx_entf.s18_gps_long,
"public".t_can_sxx_entf.s01_gps_entf_m,
"public".t_can_sxx_entf.s02_gps_entf_m,
"public".t_can_sxx_entf.s03_gps_entf_m,
"public".t_can_sxx_entf.s04_gps_entf_m,
"public".t_can_sxx_entf.s05_gps_entf_m,
"public".t_can_sxx_entf.s06_gps_entf_m,
"public".t_can_sxx_entf.s07_gps_entf_m,
"public".t_can_sxx_entf.s08_gps_entf_m,
"public".t_can_sxx_entf.s09_gps_entf_m,
"public".t_can_sxx_entf.s10_gps_entf_m,
"public".t_can_sxx_entf.s11_gps_entf_m,
"public".t_can_sxx_entf.s12_gps_entf_m,
"public".t_can_sxx_entf.s13_gps_entf_m,
"public".t_can_sxx_entf.s14_gps_entf_m,
"public".t_can_sxx_entf.s15_gps_entf_m,
"public".t_can_sxx_entf.s16_gps_entf_m,
"public".t_can_sxx_entf.s17_gps_entf_m,
"public".t_can_sxx_entf.s18_gps_entf_m,
"public".t_can_sxx_entf.s01_gps_entf_m_min,
"public".t_can_sxx_entf.s02_gps_entf_m_min,
"public".t_can_sxx_entf.s03_gps_entf_m_min,
"public".t_can_sxx_entf.s04_gps_entf_m_min,
"public".t_can_sxx_entf.s05_gps_entf_m_min,
"public".t_can_sxx_entf.s06_gps_entf_m_min,
"public".t_can_sxx_entf.s07_gps_entf_m_min,
"public".t_can_sxx_entf.s08_gps_entf_m_min,
"public".t_can_sxx_entf.s09_gps_entf_m_min,
"public".t_can_sxx_entf.s10_gps_entf_m_min,
"public".t_can_sxx_entf.s11_gps_entf_m_min,
"public".t_can_sxx_entf.s12_gps_entf_m_min,
"public".t_can_sxx_entf.s13_gps_entf_m_min,
"public".t_can_sxx_entf.s14_gps_entf_m_min,
"public".t_can_sxx_entf.s15_gps_entf_m_min,
"public".t_can_sxx_entf.s16_gps_entf_m_min,
"public".t_can_sxx_entf.s17_gps_entf_m_min,
"public".t_can_sxx_entf.s18_gps_entf_m_min,
"public".t_can_sxx_entf.s01_znr_min,
"public".t_can_sxx_entf.s02_znr_min,
"public".t_can_sxx_entf.s03_znr_min,
"public".t_can_sxx_entf.s04_znr_min,
"public".t_can_sxx_entf.s05_znr_min,
"public".t_can_sxx_entf.s06_znr_min,
"public".t_can_sxx_entf.s07_znr_min,
"public".t_can_sxx_entf.s08_znr_min,
"public".t_can_sxx_entf.s09_znr_min,
"public".t_can_sxx_entf.s10_znr_min,
"public".t_can_sxx_entf.s11_znr_min,
"public".t_can_sxx_entf.s12_znr_min,
"public".t_can_sxx_entf.s13_znr_min,
"public".t_can_sxx_entf.s14_znr_min,
"public".t_can_sxx_entf.s15_znr_min,
"public".t_can_sxx_entf.s16_znr_min,
"public".t_can_sxx_entf.s17_znr_min,
"public".t_can_sxx_entf.s18_znr_min,
"public".t_can_sxx_entf.s01_zeit_s_min,
"public".t_can_sxx_entf.s02_zeit_s_min,
"public".t_can_sxx_entf.s03_zeit_s_min,
"public".t_can_sxx_entf.s04_zeit_s_min,
"public".t_can_sxx_entf.s05_zeit_s_min,
"public".t_can_sxx_entf.s06_zeit_s_min,
"public".t_can_sxx_entf.s07_zeit_s_min,
"public".t_can_sxx_entf.s08_zeit_s_min,
"public".t_can_sxx_entf.s09_zeit_s_min,
"public".t_can_sxx_entf.s10_zeit_s_min,
"public".t_can_sxx_entf.s11_zeit_s_min,
"public".t_can_sxx_entf.s12_zeit_s_min,
"public".t_can_sxx_entf.s13_zeit_s_min,
"public".t_can_sxx_entf.s14_zeit_s_min,
"public".t_can_sxx_entf.s15_zeit_s_min,
"public".t_can_sxx_entf.s16_zeit_s_min,
"public".t_can_sxx_entf.s17_zeit_s_min,
"public".t_can_sxx_entf.s18_zeit_s_min,
"public".t_can_sxx_entf.s01_zeit_s_min_rounded,
"public".t_can_sxx_entf.s02_zeit_s_min_rounded,
"public".t_can_sxx_entf.s03_zeit_s_min_rounded,
"public".t_can_sxx_entf.s04_zeit_s_min_rounded,
"public".t_can_sxx_entf.s05_zeit_s_min_rounded,
"public".t_can_sxx_entf.s06_zeit_s_min_rounded,
"public".t_can_sxx_entf.s07_zeit_s_min_rounded,
"public".t_can_sxx_entf.s08_zeit_s_min_rounded,
"public".t_can_sxx_entf.s09_zeit_s_min_rounded,
"public".t_can_sxx_entf.s10_zeit_s_min_rounded,
"public".t_can_sxx_entf.s11_zeit_s_min_rounded,
"public".t_can_sxx_entf.s12_zeit_s_min_rounded,
"public".t_can_sxx_entf.s13_zeit_s_min_rounded,
"public".t_can_sxx_entf.s14_zeit_s_min_rounded,
"public".t_can_sxx_entf.s15_zeit_s_min_rounded,
"public".t_can_sxx_entf.s16_zeit_s_min_rounded,
"public".t_can_sxx_entf.s17_zeit_s_min_rounded,
"public".t_can_sxx_entf.s18_zeit_s_min_rounded,
"public".t_can_sxx_entf.s01_entf_s,
"public".t_can_sxx_entf.s02_entf_s,
"public".t_can_sxx_entf.s03_entf_s,
"public".t_can_sxx_entf.s04_entf_s,
"public".t_can_sxx_entf.s05_entf_s,
"public".t_can_sxx_entf.s06_entf_s,
"public".t_can_sxx_entf.s07_entf_s,
"public".t_can_sxx_entf.s08_entf_s,
"public".t_can_sxx_entf.s09_entf_s,
"public".t_can_sxx_entf.s10_entf_s,
"public".t_can_sxx_entf.s11_entf_s,
"public".t_can_sxx_entf.s12_entf_s,
"public".t_can_sxx_entf.s13_entf_s,
"public".t_can_sxx_entf.s14_entf_s,
"public".t_can_sxx_entf.s15_entf_s,
"public".t_can_sxx_entf.s16_entf_s,
"public".t_can_sxx_entf.s17_entf_s,
"public".t_can_sxx_entf.s18_entf_s,
"public".t_can_sxx_entf.s01_entf_s_rounded,
"public".t_can_sxx_entf.s02_entf_s_rounded,
"public".t_can_sxx_entf.s03_entf_s_rounded,
"public".t_can_sxx_entf.s04_entf_s_rounded,
"public".t_can_sxx_entf.s05_entf_s_rounded,
"public".t_can_sxx_entf.s06_entf_s_rounded,
"public".t_can_sxx_entf.s07_entf_s_rounded,
"public".t_can_sxx_entf.s08_entf_s_rounded,
"public".t_can_sxx_entf.s09_entf_s_rounded,
"public".t_can_sxx_entf.s10_entf_s_rounded,
"public".t_can_sxx_entf.s11_entf_s_rounded,
"public".t_can_sxx_entf.s12_entf_s_rounded,
"public".t_can_sxx_entf.s13_entf_s_rounded,
"public".t_can_sxx_entf.s14_entf_s_rounded,
"public".t_can_sxx_entf.s15_entf_s_rounded,
"public".t_can_sxx_entf.s16_entf_s_rounded,
"public".t_can_sxx_entf.s17_entf_s_rounded,
"public".t_can_sxx_entf.s18_entf_s_rounded,
"public".t_can_sxx_entf.s01_distanz_m_min,
"public".t_can_sxx_entf.s02_distanz_m_min,
"public".t_can_sxx_entf.s03_distanz_m_min,
"public".t_can_sxx_entf.s04_distanz_m_min,
"public".t_can_sxx_entf.s05_distanz_m_min,
"public".t_can_sxx_entf.s06_distanz_m_min,
"public".t_can_sxx_entf.s07_distanz_m_min,
"public".t_can_sxx_entf.s08_distanz_m_min,
"public".t_can_sxx_entf.s09_distanz_m_min,
"public".t_can_sxx_entf.s10_distanz_m_min,
"public".t_can_sxx_entf.s11_distanz_m_min,
"public".t_can_sxx_entf.s12_distanz_m_min,
"public".t_can_sxx_entf.s13_distanz_m_min,
"public".t_can_sxx_entf.s14_distanz_m_min,
"public".t_can_sxx_entf.s15_distanz_m_min,
"public".t_can_sxx_entf.s16_distanz_m_min,
"public".t_can_sxx_entf.s17_distanz_m_min,
"public".t_can_sxx_entf.s18_distanz_m_min,
"public".t_can_sxx_entf.s01_distanz_m_min_rounded,
"public".t_can_sxx_entf.s02_distanz_m_min_rounded,
"public".t_can_sxx_entf.s03_distanz_m_min_rounded,
"public".t_can_sxx_entf.s04_distanz_m_min_rounded,
"public".t_can_sxx_entf.s05_distanz_m_min_rounded,
"public".t_can_sxx_entf.s06_distanz_m_min_rounded,
"public".t_can_sxx_entf.s07_distanz_m_min_rounded,
"public".t_can_sxx_entf.s08_distanz_m_min_rounded,
"public".t_can_sxx_entf.s09_distanz_m_min_rounded,
"public".t_can_sxx_entf.s10_distanz_m_min_rounded,
"public".t_can_sxx_entf.s11_distanz_m_min_rounded,
"public".t_can_sxx_entf.s12_distanz_m_min_rounded,
"public".t_can_sxx_entf.s13_distanz_m_min_rounded,
"public".t_can_sxx_entf.s14_distanz_m_min_rounded,
"public".t_can_sxx_entf.s15_distanz_m_min_rounded,
"public".t_can_sxx_entf.s16_distanz_m_min_rounded,
"public".t_can_sxx_entf.s17_distanz_m_min_rounded,
"public".t_can_sxx_entf.s18_distanz_m_min_rounded,
"public".t_can_sxx_entf.s01_entf_m,
"public".t_can_sxx_entf.s02_entf_m,
"public".t_can_sxx_entf.s03_entf_m,
"public".t_can_sxx_entf.s04_entf_m,
"public".t_can_sxx_entf.s05_entf_m,
"public".t_can_sxx_entf.s06_entf_m,
"public".t_can_sxx_entf.s07_entf_m,
"public".t_can_sxx_entf.s08_entf_m,
"public".t_can_sxx_entf.s09_entf_m,
"public".t_can_sxx_entf.s10_entf_m,
"public".t_can_sxx_entf.s11_entf_m,
"public".t_can_sxx_entf.s12_entf_m,
"public".t_can_sxx_entf.s13_entf_m,
"public".t_can_sxx_entf.s14_entf_m,
"public".t_can_sxx_entf.s15_entf_m,
"public".t_can_sxx_entf.s16_entf_m,
"public".t_can_sxx_entf.s17_entf_m,
"public".t_can_sxx_entf.s18_entf_m,
"public".t_can_sxx_entf.s01_entf_m_rounded,
"public".t_can_sxx_entf.s02_entf_m_rounded,
"public".t_can_sxx_entf.s03_entf_m_rounded,
"public".t_can_sxx_entf.s04_entf_m_rounded,
"public".t_can_sxx_entf.s05_entf_m_rounded,
"public".t_can_sxx_entf.s06_entf_m_rounded,
"public".t_can_sxx_entf.s07_entf_m_rounded,
"public".t_can_sxx_entf.s08_entf_m_rounded,
"public".t_can_sxx_entf.s09_entf_m_rounded,
"public".t_can_sxx_entf.s10_entf_m_rounded,
"public".t_can_sxx_entf.s11_entf_m_rounded,
"public".t_can_sxx_entf.s12_entf_m_rounded,
"public".t_can_sxx_entf.s13_entf_m_rounded,
"public".t_can_sxx_entf.s14_entf_m_rounded,
"public".t_can_sxx_entf.s15_entf_m_rounded,
"public".t_can_sxx_entf.s16_entf_m_rounded,
"public".t_can_sxx_entf.s17_entf_m_rounded,
"public".t_can_sxx_entf.s18_entf_m_rounded,
--
CASE 
	WHEN "public".t_can_gesamt.geschw_kmh = 0 THEN NULL
	ELSE "public".t_can_sxx_entf.s01_entf_m/("public".t_can_gesamt.geschw_kmh/3.6) 
END as s01_ttc_s,
CASE 
	WHEN "public".t_can_gesamt.geschw_kmh = 0 THEN NULL
	ELSE "public".t_can_sxx_entf.s02_entf_m/("public".t_can_gesamt.geschw_kmh/3.6) 
END as s02_ttc_s,
CASE 
	WHEN "public".t_can_gesamt.geschw_kmh = 0 THEN NULL
	ELSE "public".t_can_sxx_entf.s03_entf_m/("public".t_can_gesamt.geschw_kmh/3.6) 
END as s03_ttc_s,
CASE 
	WHEN "public".t_can_gesamt.geschw_kmh = 0 THEN NULL
	ELSE "public".t_can_sxx_entf.s04_entf_m/("public".t_can_gesamt.geschw_kmh/3.6) 
END as s04_ttc_s,
CASE 
	WHEN "public".t_can_gesamt.geschw_kmh = 0 THEN NULL
	ELSE "public".t_can_sxx_entf.s05_entf_m/("public".t_can_gesamt.geschw_kmh/3.6) 
END as s05_ttc_s,
CASE 
	WHEN "public".t_can_gesamt.geschw_kmh = 0 THEN NULL
	ELSE "public".t_can_sxx_entf.s06_entf_m/("public".t_can_gesamt.geschw_kmh/3.6) 
END as s06_ttc_s,
CASE 
	WHEN "public".t_can_gesamt.geschw_kmh = 0 THEN NULL
	ELSE "public".t_can_sxx_entf.s07_entf_m/("public".t_can_gesamt.geschw_kmh/3.6) 
END as s07_ttc_s,
CASE 
	WHEN "public".t_can_gesamt.geschw_kmh = 0 THEN NULL
	ELSE "public".t_can_sxx_entf.s08_entf_m/("public".t_can_gesamt.geschw_kmh/3.6) 
END as s08_ttc_s,
CASE 
	WHEN "public".t_can_gesamt.geschw_kmh = 0 THEN NULL
	ELSE "public".t_can_sxx_entf.s09_entf_m/("public".t_can_gesamt.geschw_kmh/3.6) 
END as s09_ttc_s,
CASE 
	WHEN "public".t_can_gesamt.geschw_kmh = 0 THEN NULL
	ELSE "public".t_can_sxx_entf.s10_entf_m/("public".t_can_gesamt.geschw_kmh/3.6) 
END as s10_ttc_s,
CASE 
	WHEN "public".t_can_gesamt.geschw_kmh = 0 THEN NULL
	ELSE "public".t_can_sxx_entf.s11_entf_m/("public".t_can_gesamt.geschw_kmh/3.6)
END as s11_ttc_s,
CASE 
	WHEN "public".t_can_gesamt.geschw_kmh = 0 THEN NULL
	ELSE "public".t_can_sxx_entf.s12_entf_m/("public".t_can_gesamt.geschw_kmh/3.6) 
END as s12_ttc_s,
CASE 
	WHEN "public".t_can_gesamt.geschw_kmh = 0 THEN NULL
	ELSE "public".t_can_sxx_entf.s13_entf_m/("public".t_can_gesamt.geschw_kmh/3.6) 
END as s13_ttc_s,
CASE 
	WHEN "public".t_can_gesamt.geschw_kmh = 0 THEN NULL
	ELSE "public".t_can_sxx_entf.s14_entf_m/("public".t_can_gesamt.geschw_kmh/3.6) 
END as s14_ttc_s,
CASE 
	WHEN "public".t_can_gesamt.geschw_kmh = 0 THEN NULL
	ELSE "public".t_can_sxx_entf.s15_entf_m/("public".t_can_gesamt.geschw_kmh/3.6) 
END as s15_ttc_s,
CASE 
	WHEN "public".t_can_gesamt.geschw_kmh = 0 THEN NULL
	ELSE "public".t_can_sxx_entf.s16_entf_m/("public".t_can_gesamt.geschw_kmh/3.6) 
END as s16_ttc_s,
CASE 
	WHEN "public".t_can_gesamt.geschw_kmh = 0 THEN NULL
	ELSE "public".t_can_sxx_entf.s17_entf_m/("public".t_can_gesamt.geschw_kmh/3.6) 
END as s17_ttc_s,
CASE 
	WHEN "public".t_can_gesamt.geschw_kmh = 0 THEN NULL
	ELSE "public".t_can_sxx_entf.s18_entf_m/("public".t_can_gesamt.geschw_kmh/3.6) 
END as s18_ttc_s,
--
CASE 
	WHEN "public".t_can_gesamt.geschw_kmh = 0 THEN NULL
	ELSE round("public".t_can_sxx_entf.s01_entf_m/("public".t_can_gesamt.geschw_kmh/3.6),1)
END as s01_ttc_s_rounded,
CASE 
	WHEN "public".t_can_gesamt.geschw_kmh = 0 THEN NULL
	ELSE round("public".t_can_sxx_entf.s02_entf_m/("public".t_can_gesamt.geschw_kmh/3.6),1)
END as s02_ttc_s_rounded,
CASE 
	WHEN "public".t_can_gesamt.geschw_kmh = 0 THEN NULL
	ELSE round("public".t_can_sxx_entf.s03_entf_m/("public".t_can_gesamt.geschw_kmh/3.6),1)
END as s03_ttc_s_rounded,
CASE 
	WHEN "public".t_can_gesamt.geschw_kmh = 0 THEN NULL
	ELSE round("public".t_can_sxx_entf.s04_entf_m/("public".t_can_gesamt.geschw_kmh/3.6),1)
END as s04_ttc_s_rounded,
CASE 
	WHEN "public".t_can_gesamt.geschw_kmh = 0 THEN NULL
	ELSE round("public".t_can_sxx_entf.s05_entf_m/("public".t_can_gesamt.geschw_kmh/3.6),1)
END as s05_ttc_s_rounded,
CASE 
	WHEN "public".t_can_gesamt.geschw_kmh = 0 THEN NULL
	ELSE round("public".t_can_sxx_entf.s06_entf_m/("public".t_can_gesamt.geschw_kmh/3.6),1)
END as s06_ttc_s_rounded,
CASE 
	WHEN "public".t_can_gesamt.geschw_kmh = 0 THEN NULL
	ELSE round("public".t_can_sxx_entf.s07_entf_m/("public".t_can_gesamt.geschw_kmh/3.6),1)
END as s07_ttc_s_rounded,
CASE 
	WHEN "public".t_can_gesamt.geschw_kmh = 0 THEN NULL
	ELSE round("public".t_can_sxx_entf.s08_entf_m/("public".t_can_gesamt.geschw_kmh/3.6),1)
END as s08_ttc_s_rounded,
CASE 
	WHEN "public".t_can_gesamt.geschw_kmh = 0 THEN NULL
	ELSE round("public".t_can_sxx_entf.s09_entf_m/("public".t_can_gesamt.geschw_kmh/3.6),1)
END as s09_ttc_s_rounded,
CASE 
	WHEN "public".t_can_gesamt.geschw_kmh = 0 THEN NULL
	ELSE round("public".t_can_sxx_entf.s10_entf_m/("public".t_can_gesamt.geschw_kmh/3.6),1)
END as s10_ttc_s_rounded,
CASE 
	WHEN "public".t_can_gesamt.geschw_kmh = 0 THEN NULL
	ELSE round("public".t_can_sxx_entf.s11_entf_m/("public".t_can_gesamt.geschw_kmh/3.6),1)
END as s11_ttc_s_rounded,
CASE 
	WHEN "public".t_can_gesamt.geschw_kmh = 0 THEN NULL
	ELSE round("public".t_can_sxx_entf.s12_entf_m/("public".t_can_gesamt.geschw_kmh/3.6),1) 
END as s12_ttc_s_rounded,
CASE 
	WHEN "public".t_can_gesamt.geschw_kmh = 0 THEN NULL
	ELSE round("public".t_can_sxx_entf.s13_entf_m/("public".t_can_gesamt.geschw_kmh/3.6),1)
END as s13_ttc_s_rounded,
CASE 
	WHEN "public".t_can_gesamt.geschw_kmh = 0 THEN NULL
	ELSE round("public".t_can_sxx_entf.s14_entf_m/("public".t_can_gesamt.geschw_kmh/3.6),1)
END as s14_ttc_s_rounded,
CASE 
	WHEN "public".t_can_gesamt.geschw_kmh = 0 THEN NULL
	ELSE round("public".t_can_sxx_entf.s15_entf_m/("public".t_can_gesamt.geschw_kmh/3.6),1)
END as s15_ttc_s_rounded,
CASE 
	WHEN "public".t_can_gesamt.geschw_kmh = 0 THEN NULL
	ELSE round("public".t_can_sxx_entf.s16_entf_m/("public".t_can_gesamt.geschw_kmh/3.6),1)
END as s16_ttc_s_rounded,
CASE 
	WHEN "public".t_can_gesamt.geschw_kmh = 0 THEN NULL
	ELSE round("public".t_can_sxx_entf.s17_entf_m/("public".t_can_gesamt.geschw_kmh/3.6),1) 
END as s17_ttc_s_rounded,
CASE 
	WHEN "public".t_can_gesamt.geschw_kmh = 0 THEN NULL
	ELSE round("public".t_can_sxx_entf.s18_entf_m/("public".t_can_gesamt.geschw_kmh/3.6),1) 
END as s18_ttc_s_rounded,
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
"public".t_can_gesamt.fahrspuren_anzahl,
--
"public".t_versuchsablauf."Datei",
"public".t_versuchsablauf."Bedingung",
"public".t_versuchsablauf."Versuchsleiter",
"public".t_versuchsablauf."Datum"

FROM
"public".t_can_sxx_entf
LEFT OUTER JOIN "public".t_can_gesamt ON "public".t_can_sxx_entf.znr = "public".t_can_gesamt.znr
LEFT OUTER JOIN "public".t_versuchsablauf ON "public".t_can_sxx_entf.vp = "public".t_versuchsablauf."Vp"

ORDER BY
"public".t_can_sxx_entf.znr