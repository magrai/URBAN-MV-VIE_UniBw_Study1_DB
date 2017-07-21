DROP VIEW v_can_sxx_entf CASCADE;
CREATE OR REPLACE VIEW v_can_sxx_entf AS

SELECT
"public".t_can_sxx_gps_entf.znr,
"public".t_can_sxx_gps_entf.vp,
"public".t_can_sxx_gps_entf.zeit_s,
round(public.t_can_sxx_gps_entf.zeit_s, 1) as zeit_s_rounded,
"public".t_can_sxx_gps_entf.distanz_m_diff,
"public".t_can_sxx_gps_entf.distanz_m,
round("public".t_can_sxx_gps_entf.distanz_m, 0) as distanz_m_rounded,
"public".t_can_sxx_gps_entf.runde,
"public".t_can_sxx_gps_entf.runde_distanz_m,
round("public".t_can_sxx_gps_entf.runde_distanz_m, 0) as runde_distanz_m_rounded,
"public".t_can_sxx_gps_entf.gps_lat,
"public".t_can_sxx_gps_entf.gps_long,
--
"public".t_can_sxx_gps_entf.s01_gps_lat,
"public".t_can_sxx_gps_entf.s01_gps_long,
"public".t_can_sxx_gps_entf.s02_gps_lat,
"public".t_can_sxx_gps_entf.s02_gps_long,
"public".t_can_sxx_gps_entf.s03_gps_lat,
"public".t_can_sxx_gps_entf.s03_gps_long,
"public".t_can_sxx_gps_entf.s04_gps_lat,
"public".t_can_sxx_gps_entf.s04_gps_long,
"public".t_can_sxx_gps_entf.s05_gps_lat,
"public".t_can_sxx_gps_entf.s05_gps_long,
"public".t_can_sxx_gps_entf.s06_gps_lat,
"public".t_can_sxx_gps_entf.s06_gps_long,
"public".t_can_sxx_gps_entf.s07_gps_lat,
"public".t_can_sxx_gps_entf.s07_gps_long,
"public".t_can_sxx_gps_entf.s08_gps_lat,
"public".t_can_sxx_gps_entf.s08_gps_long,
"public".t_can_sxx_gps_entf.s09_gps_lat,
"public".t_can_sxx_gps_entf.s09_gps_long,
"public".t_can_sxx_gps_entf.s10_gps_lat,
"public".t_can_sxx_gps_entf.s10_gps_long,
"public".t_can_sxx_gps_entf.s11_gps_lat,
"public".t_can_sxx_gps_entf.s11_gps_long,
"public".t_can_sxx_gps_entf.s12_gps_lat,
"public".t_can_sxx_gps_entf.s12_gps_long,
"public".t_can_sxx_gps_entf.s13_gps_lat,
"public".t_can_sxx_gps_entf.s13_gps_long,
"public".t_can_sxx_gps_entf.s14_gps_lat,
"public".t_can_sxx_gps_entf.s14_gps_long,
"public".t_can_sxx_gps_entf.s15_gps_lat,
"public".t_can_sxx_gps_entf.s15_gps_long,
"public".t_can_sxx_gps_entf.s16_gps_lat,
"public".t_can_sxx_gps_entf.s16_gps_long,
"public".t_can_sxx_gps_entf.s17_gps_lat,
"public".t_can_sxx_gps_entf.s17_gps_long,
"public".t_can_sxx_gps_entf.s18_gps_lat,
"public".t_can_sxx_gps_entf.s18_gps_long,
--
"public".t_can_sxx_gps_entf.s01_gps_entf_m,
"public".t_can_sxx_gps_entf.s02_gps_entf_m,
"public".t_can_sxx_gps_entf.s03_gps_entf_m,
"public".t_can_sxx_gps_entf.s04_gps_entf_m,
"public".t_can_sxx_gps_entf.s05_gps_entf_m,
"public".t_can_sxx_gps_entf.s06_gps_entf_m,
"public".t_can_sxx_gps_entf.s07_gps_entf_m,
"public".t_can_sxx_gps_entf.s08_gps_entf_m,
"public".t_can_sxx_gps_entf.s09_gps_entf_m,
"public".t_can_sxx_gps_entf.s10_gps_entf_m,
"public".t_can_sxx_gps_entf.s11_gps_entf_m,
"public".t_can_sxx_gps_entf.s12_gps_entf_m,
"public".t_can_sxx_gps_entf.s13_gps_entf_m,
"public".t_can_sxx_gps_entf.s14_gps_entf_m,
"public".t_can_sxx_gps_entf.s15_gps_entf_m,
"public".t_can_sxx_gps_entf.s16_gps_entf_m,
"public".t_can_sxx_gps_entf.s17_gps_entf_m,
"public".t_can_sxx_gps_entf.s18_gps_entf_m,
--
"public".t_can_sxx_gps_entf.s01_gps_entf_m_min,
"public".t_can_sxx_gps_entf.s02_gps_entf_m_min,
"public".t_can_sxx_gps_entf.s03_gps_entf_m_min,
"public".t_can_sxx_gps_entf.s04_gps_entf_m_min,
"public".t_can_sxx_gps_entf.s05_gps_entf_m_min,
"public".t_can_sxx_gps_entf.s06_gps_entf_m_min,
"public".t_can_sxx_gps_entf.s07_gps_entf_m_min,
"public".t_can_sxx_gps_entf.s08_gps_entf_m_min,
"public".t_can_sxx_gps_entf.s09_gps_entf_m_min,
"public".t_can_sxx_gps_entf.s10_gps_entf_m_min,
"public".t_can_sxx_gps_entf.s11_gps_entf_m_min,
"public".t_can_sxx_gps_entf.s12_gps_entf_m_min,
"public".t_can_sxx_gps_entf.s13_gps_entf_m_min,
"public".t_can_sxx_gps_entf.s14_gps_entf_m_min,
"public".t_can_sxx_gps_entf.s15_gps_entf_m_min,
"public".t_can_sxx_gps_entf.s16_gps_entf_m_min,
"public".t_can_sxx_gps_entf.s17_gps_entf_m_min,
"public".t_can_sxx_gps_entf.s18_gps_entf_m_min,
--
s01_temp.znr_min as s01_znr_min,
s02_temp.znr_min as s02_znr_min,
s03_temp.znr_min as s03_znr_min,
s04_temp.znr_min as s04_znr_min,
s05_temp.znr_min as s05_znr_min,
s06_temp.znr_min as s06_znr_min,
s07_temp.znr_min as s07_znr_min,
s08_temp.znr_min as s08_znr_min,
s09_temp.znr_min as s09_znr_min,
s10_temp.znr_min as s10_znr_min,
s11_temp.znr_min as s11_znr_min,
s12_temp.znr_min as s12_znr_min,
s13_temp.znr_min as s13_znr_min,
s14_temp.znr_min as s14_znr_min,
s15_temp.znr_min as s15_znr_min,
s16_temp.znr_min as s16_znr_min,
s17_temp.znr_min as s17_znr_min,
s18_temp.znr_min as s18_znr_min,
--
s01_temp.zeit_s_min as s01_zeit_s_min,
s02_temp.zeit_s_min as s02_zeit_s_min,
s03_temp.zeit_s_min as s03_zeit_s_min,
s04_temp.zeit_s_min as s04_zeit_s_min,
s05_temp.zeit_s_min as s05_zeit_s_min,
s06_temp.zeit_s_min as s06_zeit_s_min,
s07_temp.zeit_s_min as s07_zeit_s_min,
s08_temp.zeit_s_min as s08_zeit_s_min,
s09_temp.zeit_s_min as s09_zeit_s_min,
s10_temp.zeit_s_min as s10_zeit_s_min,
s11_temp.zeit_s_min as s11_zeit_s_min,
s12_temp.zeit_s_min as s12_zeit_s_min,
s13_temp.zeit_s_min as s13_zeit_s_min,
s14_temp.zeit_s_min as s14_zeit_s_min,
s15_temp.zeit_s_min as s15_zeit_s_min,
s16_temp.zeit_s_min as s16_zeit_s_min,
s17_temp.zeit_s_min as s17_zeit_s_min,
s18_temp.zeit_s_min as s18_zeit_s_min,
--
round(s01_temp.zeit_s_min, 1) as s01_zeit_s_min_rounded,
round(s02_temp.zeit_s_min, 1) as s02_zeit_s_min_rounded,
round(s03_temp.zeit_s_min, 1) as s03_zeit_s_min_rounded,
round(s04_temp.zeit_s_min, 1) as s04_zeit_s_min_rounded,
round(s05_temp.zeit_s_min, 1) as s05_zeit_s_min_rounded,
round(s06_temp.zeit_s_min, 1) as s06_zeit_s_min_rounded,
round(s07_temp.zeit_s_min, 1) as s07_zeit_s_min_rounded,
round(s08_temp.zeit_s_min, 1) as s08_zeit_s_min_rounded,
round(s09_temp.zeit_s_min, 1) as s09_zeit_s_min_rounded,
round(s10_temp.zeit_s_min, 1) as s10_zeit_s_min_rounded,
round(s11_temp.zeit_s_min, 1) as s11_zeit_s_min_rounded,
round(s12_temp.zeit_s_min, 1) as s12_zeit_s_min_rounded,
round(s13_temp.zeit_s_min, 1) as s13_zeit_s_min_rounded,
round(s14_temp.zeit_s_min, 1) as s14_zeit_s_min_rounded,
round(s15_temp.zeit_s_min, 1) as s15_zeit_s_min_rounded,
round(s16_temp.zeit_s_min, 1) as s16_zeit_s_min_rounded,
round(s17_temp.zeit_s_min, 1) as s17_zeit_s_min_rounded,
round(s18_temp.zeit_s_min, 1) as s18_zeit_s_min_rounded,
--
"public".t_can_sxx_gps_entf.zeit_s - s01_temp.zeit_s_min as s01_entf_s,
"public".t_can_sxx_gps_entf.zeit_s - s02_temp.zeit_s_min as s02_entf_s,
"public".t_can_sxx_gps_entf.zeit_s - s03_temp.zeit_s_min as s03_entf_s,
"public".t_can_sxx_gps_entf.zeit_s - s04_temp.zeit_s_min as s04_entf_s,
"public".t_can_sxx_gps_entf.zeit_s - s05_temp.zeit_s_min as s05_entf_s,
"public".t_can_sxx_gps_entf.zeit_s - s06_temp.zeit_s_min as s06_entf_s,
"public".t_can_sxx_gps_entf.zeit_s - s07_temp.zeit_s_min as s07_entf_s,
"public".t_can_sxx_gps_entf.zeit_s - s08_temp.zeit_s_min as s08_entf_s,
"public".t_can_sxx_gps_entf.zeit_s - s09_temp.zeit_s_min as s09_entf_s,
"public".t_can_sxx_gps_entf.zeit_s - s10_temp.zeit_s_min as s10_entf_s,
"public".t_can_sxx_gps_entf.zeit_s - s11_temp.zeit_s_min as s11_entf_s,
"public".t_can_sxx_gps_entf.zeit_s - s12_temp.zeit_s_min as s12_entf_s,
"public".t_can_sxx_gps_entf.zeit_s - s13_temp.zeit_s_min as s13_entf_s,
"public".t_can_sxx_gps_entf.zeit_s - s14_temp.zeit_s_min as s14_entf_s,
"public".t_can_sxx_gps_entf.zeit_s - s15_temp.zeit_s_min as s15_entf_s,
"public".t_can_sxx_gps_entf.zeit_s - s16_temp.zeit_s_min as s16_entf_s,
"public".t_can_sxx_gps_entf.zeit_s - s17_temp.zeit_s_min as s17_entf_s,
"public".t_can_sxx_gps_entf.zeit_s - s18_temp.zeit_s_min as s18_entf_s,
--
round(public.t_can_sxx_gps_entf.zeit_s, 1) - round(s01_temp.zeit_s_min, 1) as s01_entf_s_rounded,
round(public.t_can_sxx_gps_entf.zeit_s, 1) - round(s02_temp.zeit_s_min, 1) as s02_entf_s_rounded,
round(public.t_can_sxx_gps_entf.zeit_s, 1) - round(s03_temp.zeit_s_min, 1) as s03_entf_s_rounded,
round(public.t_can_sxx_gps_entf.zeit_s, 1) - round(s04_temp.zeit_s_min, 1) as s04_entf_s_rounded,
round(public.t_can_sxx_gps_entf.zeit_s, 1) - round(s05_temp.zeit_s_min, 1) as s05_entf_s_rounded,
round(public.t_can_sxx_gps_entf.zeit_s, 1) - round(s06_temp.zeit_s_min, 1) as s06_entf_s_rounded,
round(public.t_can_sxx_gps_entf.zeit_s, 1) - round(s07_temp.zeit_s_min, 1) as s07_entf_s_rounded,
round(public.t_can_sxx_gps_entf.zeit_s, 1) - round(s08_temp.zeit_s_min, 1) as s08_entf_s_rounded,
round(public.t_can_sxx_gps_entf.zeit_s, 1) - round(s09_temp.zeit_s_min, 1) as s09_entf_s_rounded,
round(public.t_can_sxx_gps_entf.zeit_s, 1) - round(s10_temp.zeit_s_min, 1) as s10_entf_s_rounded,
round(public.t_can_sxx_gps_entf.zeit_s, 1) - round(s11_temp.zeit_s_min, 1) as s11_entf_s_rounded,
round(public.t_can_sxx_gps_entf.zeit_s, 1) - round(s12_temp.zeit_s_min, 1) as s12_entf_s_rounded,
round(public.t_can_sxx_gps_entf.zeit_s, 1) - round(s13_temp.zeit_s_min, 1) as s13_entf_s_rounded,
round(public.t_can_sxx_gps_entf.zeit_s, 1) - round(s14_temp.zeit_s_min, 1) as s14_entf_s_rounded,
round(public.t_can_sxx_gps_entf.zeit_s, 1) - round(s15_temp.zeit_s_min, 1) as s15_entf_s_rounded,
round(public.t_can_sxx_gps_entf.zeit_s, 1) - round(s16_temp.zeit_s_min, 1) as s16_entf_s_rounded,
round(public.t_can_sxx_gps_entf.zeit_s, 1) - round(s17_temp.zeit_s_min, 1) as s17_entf_s_rounded,
round(public.t_can_sxx_gps_entf.zeit_s, 1) - round(s18_temp.zeit_s_min, 1) as s18_entf_s_rounded,
--
s01_temp.distanz_m_min as s01_distanz_m_min,
s02_temp.distanz_m_min as s02_distanz_m_min,
s03_temp.distanz_m_min as s03_distanz_m_min,
s04_temp.distanz_m_min as s04_distanz_m_min,
s05_temp.distanz_m_min as s05_distanz_m_min,
s06_temp.distanz_m_min as s06_distanz_m_min,
s07_temp.distanz_m_min as s07_distanz_m_min,
s08_temp.distanz_m_min as s08_distanz_m_min,
s09_temp.distanz_m_min as s09_distanz_m_min,
s10_temp.distanz_m_min as s10_distanz_m_min,
s11_temp.distanz_m_min as s11_distanz_m_min,
s12_temp.distanz_m_min as s12_distanz_m_min,
s13_temp.distanz_m_min as s13_distanz_m_min,
s14_temp.distanz_m_min as s14_distanz_m_min,
s15_temp.distanz_m_min as s15_distanz_m_min,
s16_temp.distanz_m_min as s16_distanz_m_min,
s17_temp.distanz_m_min as s17_distanz_m_min,
s18_temp.distanz_m_min as s18_distanz_m_min,
--
round(s01_temp.distanz_m_min, 0) as s01_distanz_m_min_rounded,
round(s02_temp.distanz_m_min, 0) as s02_distanz_m_min_rounded,
round(s03_temp.distanz_m_min, 0) as s03_distanz_m_min_rounded,
round(s04_temp.distanz_m_min, 0) as s04_distanz_m_min_rounded,
round(s05_temp.distanz_m_min, 0) as s05_distanz_m_min_rounded,
round(s06_temp.distanz_m_min, 0) as s06_distanz_m_min_rounded,
round(s07_temp.distanz_m_min, 0) as s07_distanz_m_min_rounded,
round(s08_temp.distanz_m_min, 0) as s08_distanz_m_min_rounded,
round(s09_temp.distanz_m_min, 0) as s09_distanz_m_min_rounded,
round(s10_temp.distanz_m_min, 0) as s10_distanz_m_min_rounded,
round(s11_temp.distanz_m_min, 0) as s11_distanz_m_min_rounded,
round(s12_temp.distanz_m_min, 0) as s12_distanz_m_min_rounded,
round(s13_temp.distanz_m_min, 0) as s13_distanz_m_min_rounded,
round(s14_temp.distanz_m_min, 0) as s14_distanz_m_min_rounded,
round(s15_temp.distanz_m_min, 0) as s15_distanz_m_min_rounded,
round(s16_temp.distanz_m_min, 0) as s16_distanz_m_min_rounded,
round(s17_temp.distanz_m_min, 0) as s17_distanz_m_min_rounded,
round(s18_temp.distanz_m_min, 0) as s18_distanz_m_min_rounded,
--
"public".t_can_sxx_gps_entf.distanz_m - s01_temp.distanz_m_min as s01_entf_m,
"public".t_can_sxx_gps_entf.distanz_m - s02_temp.distanz_m_min as s02_entf_m,
"public".t_can_sxx_gps_entf.distanz_m - s03_temp.distanz_m_min as s03_entf_m,
"public".t_can_sxx_gps_entf.distanz_m - s04_temp.distanz_m_min as s04_entf_m,
"public".t_can_sxx_gps_entf.distanz_m - s05_temp.distanz_m_min as s05_entf_m,
"public".t_can_sxx_gps_entf.distanz_m - s06_temp.distanz_m_min as s06_entf_m,
"public".t_can_sxx_gps_entf.distanz_m - s07_temp.distanz_m_min as s07_entf_m,
"public".t_can_sxx_gps_entf.distanz_m - s08_temp.distanz_m_min as s08_entf_m,
"public".t_can_sxx_gps_entf.distanz_m - s09_temp.distanz_m_min as s09_entf_m,
"public".t_can_sxx_gps_entf.distanz_m - s10_temp.distanz_m_min as s10_entf_m,
"public".t_can_sxx_gps_entf.distanz_m - s11_temp.distanz_m_min as s11_entf_m,
"public".t_can_sxx_gps_entf.distanz_m - s12_temp.distanz_m_min as s12_entf_m,
"public".t_can_sxx_gps_entf.distanz_m - s13_temp.distanz_m_min as s13_entf_m,
"public".t_can_sxx_gps_entf.distanz_m - s14_temp.distanz_m_min as s14_entf_m,
"public".t_can_sxx_gps_entf.distanz_m - s15_temp.distanz_m_min as s15_entf_m,
"public".t_can_sxx_gps_entf.distanz_m - s16_temp.distanz_m_min as s16_entf_m,
"public".t_can_sxx_gps_entf.distanz_m - s17_temp.distanz_m_min as s17_entf_m,
"public".t_can_sxx_gps_entf.distanz_m - s18_temp.distanz_m_min as s18_entf_m,
--
round("public".t_can_sxx_gps_entf.distanz_m, 0) - round(s01_temp.distanz_m_min, 0) as s01_entf_m_rounded,
round("public".t_can_sxx_gps_entf.distanz_m, 0) - round(s02_temp.distanz_m_min, 0) as s02_entf_m_rounded,
round("public".t_can_sxx_gps_entf.distanz_m, 0) - round(s03_temp.distanz_m_min, 0) as s03_entf_m_rounded,
round("public".t_can_sxx_gps_entf.distanz_m, 0) - round(s04_temp.distanz_m_min, 0) as s04_entf_m_rounded,
round("public".t_can_sxx_gps_entf.distanz_m, 0) - round(s05_temp.distanz_m_min, 0) as s05_entf_m_rounded,
round("public".t_can_sxx_gps_entf.distanz_m, 0) - round(s06_temp.distanz_m_min, 0) as s06_entf_m_rounded,
round("public".t_can_sxx_gps_entf.distanz_m, 0) - round(s07_temp.distanz_m_min, 0) as s07_entf_m_rounded,
round("public".t_can_sxx_gps_entf.distanz_m, 0) - round(s08_temp.distanz_m_min, 0) as s08_entf_m_rounded,
round("public".t_can_sxx_gps_entf.distanz_m, 0) - round(s09_temp.distanz_m_min, 0) as s09_entf_m_rounded,
round("public".t_can_sxx_gps_entf.distanz_m, 0) - round(s10_temp.distanz_m_min, 0) as s10_entf_m_rounded,
round("public".t_can_sxx_gps_entf.distanz_m, 0) - round(s11_temp.distanz_m_min, 0) as s11_entf_m_rounded,
round("public".t_can_sxx_gps_entf.distanz_m, 0) - round(s12_temp.distanz_m_min, 0) as s12_entf_m_rounded,
round("public".t_can_sxx_gps_entf.distanz_m, 0) - round(s13_temp.distanz_m_min, 0) as s13_entf_m_rounded,
round("public".t_can_sxx_gps_entf.distanz_m, 0) - round(s14_temp.distanz_m_min, 0) as s14_entf_m_rounded,
round("public".t_can_sxx_gps_entf.distanz_m, 0) - round(s15_temp.distanz_m_min, 0) as s15_entf_m_rounded,
round("public".t_can_sxx_gps_entf.distanz_m, 0) - round(s16_temp.distanz_m_min, 0) as s16_entf_m_rounded,
round("public".t_can_sxx_gps_entf.distanz_m, 0) - round(s17_temp.distanz_m_min, 0) as s17_entf_m_rounded,
round("public".t_can_sxx_gps_entf.distanz_m, 0) - round(s18_temp.distanz_m_min, 0) as s18_entf_m_rounded

FROM
"public".t_can_sxx_gps_entf,

( SELECT
	"public".t_can_sxx_gps_entf.vp,
	"public".t_can_sxx_gps_entf.runde,
	min("public".t_can_sxx_gps_entf.znr) as znr_min,
	min("public".t_can_sxx_gps_entf.zeit_s) as zeit_s_min,
	min("public".t_can_sxx_gps_entf.distanz_m) as distanz_m_min

	FROM
	"public".t_can_sxx_gps_entf

	WHERE
	"public".t_can_sxx_gps_entf.runde_teil = 1 AND
	"public".t_can_sxx_gps_entf.s01_gps_entf_m = "public".t_can_sxx_gps_entf.s01_gps_entf_m_min

	GROUP BY
	"public".t_can_sxx_gps_entf.vp,
	"public".t_can_sxx_gps_entf.runde
) s01_temp,

( SELECT
	"public".t_can_sxx_gps_entf.vp,
	"public".t_can_sxx_gps_entf.runde,
	min("public".t_can_sxx_gps_entf.znr) as znr_min,
	min("public".t_can_sxx_gps_entf.zeit_s) as zeit_s_min,
	min("public".t_can_sxx_gps_entf.distanz_m) as distanz_m_min

	FROM
	"public".t_can_sxx_gps_entf

	WHERE
	"public".t_can_sxx_gps_entf.runde_teil = 1 AND
	"public".t_can_sxx_gps_entf.s02_gps_entf_m = "public".t_can_sxx_gps_entf.s02_gps_entf_m_min

	GROUP BY
	"public".t_can_sxx_gps_entf.vp,
	"public".t_can_sxx_gps_entf.runde
) s02_temp,

( SELECT
	"public".t_can_sxx_gps_entf.vp,
	"public".t_can_sxx_gps_entf.runde,
	min("public".t_can_sxx_gps_entf.znr) as znr_min,
	min("public".t_can_sxx_gps_entf.zeit_s) as zeit_s_min,
	min("public".t_can_sxx_gps_entf.distanz_m) as distanz_m_min

	FROM
	"public".t_can_sxx_gps_entf

	WHERE
	"public".t_can_sxx_gps_entf.runde_teil = 1 AND
	"public".t_can_sxx_gps_entf.s03_gps_entf_m = "public".t_can_sxx_gps_entf.s03_gps_entf_m_min

	GROUP BY
	"public".t_can_sxx_gps_entf.vp,
	"public".t_can_sxx_gps_entf.runde
) s03_temp,

( SELECT
	"public".t_can_sxx_gps_entf.vp,
	"public".t_can_sxx_gps_entf.runde,
	min("public".t_can_sxx_gps_entf.znr) as znr_min,
	min("public".t_can_sxx_gps_entf.zeit_s) as zeit_s_min,
	min("public".t_can_sxx_gps_entf.distanz_m) as distanz_m_min

	FROM
	"public".t_can_sxx_gps_entf

	WHERE
	"public".t_can_sxx_gps_entf.runde_teil = 1 AND
	"public".t_can_sxx_gps_entf.s04_gps_entf_m = "public".t_can_sxx_gps_entf.s04_gps_entf_m_min

	GROUP BY
	"public".t_can_sxx_gps_entf.vp,
	"public".t_can_sxx_gps_entf.runde
) s04_temp,

( SELECT
	"public".t_can_sxx_gps_entf.vp,
	"public".t_can_sxx_gps_entf.runde,
	min("public".t_can_sxx_gps_entf.znr) as znr_min,
	min("public".t_can_sxx_gps_entf.zeit_s) as zeit_s_min,
	min("public".t_can_sxx_gps_entf.distanz_m) as distanz_m_min

	FROM
	"public".t_can_sxx_gps_entf

	WHERE
	"public".t_can_sxx_gps_entf.runde_teil = 1 AND
	"public".t_can_sxx_gps_entf.s05_gps_entf_m = "public".t_can_sxx_gps_entf.s05_gps_entf_m_min

	GROUP BY
	"public".t_can_sxx_gps_entf.vp,
	"public".t_can_sxx_gps_entf.runde
) s05_temp,

( SELECT
	"public".t_can_sxx_gps_entf.vp,
	"public".t_can_sxx_gps_entf.runde,
	min("public".t_can_sxx_gps_entf.znr) as znr_min,
	min("public".t_can_sxx_gps_entf.zeit_s) as zeit_s_min,
	min("public".t_can_sxx_gps_entf.distanz_m) as distanz_m_min

	FROM
	"public".t_can_sxx_gps_entf

	WHERE
	"public".t_can_sxx_gps_entf.runde_teil = 1 AND
	"public".t_can_sxx_gps_entf.s06_gps_entf_m = "public".t_can_sxx_gps_entf.s06_gps_entf_m_min

	GROUP BY
	"public".t_can_sxx_gps_entf.vp,
	"public".t_can_sxx_gps_entf.runde
) s06_temp,

( SELECT
	"public".t_can_sxx_gps_entf.vp,
	"public".t_can_sxx_gps_entf.runde,
	min("public".t_can_sxx_gps_entf.znr) as znr_min,
	min("public".t_can_sxx_gps_entf.zeit_s) as zeit_s_min,
	min("public".t_can_sxx_gps_entf.distanz_m) as distanz_m_min

	FROM
	"public".t_can_sxx_gps_entf

	WHERE 
	"public".t_can_sxx_gps_entf.runde_teil = 1 AND
	"public".t_can_sxx_gps_entf.s07_gps_entf_m = "public".t_can_sxx_gps_entf.s07_gps_entf_m_min

	GROUP BY
	"public".t_can_sxx_gps_entf.vp,
	"public".t_can_sxx_gps_entf.runde
) s07_temp,

( SELECT
	"public".t_can_sxx_gps_entf.vp,
	"public".t_can_sxx_gps_entf.runde,
	min("public".t_can_sxx_gps_entf.znr) as znr_min,
	min("public".t_can_sxx_gps_entf.zeit_s) as zeit_s_min,
	min("public".t_can_sxx_gps_entf.distanz_m) as distanz_m_min

	FROM
	"public".t_can_sxx_gps_entf

	WHERE
	"public".t_can_sxx_gps_entf.runde_teil = 1 AND
	"public".t_can_sxx_gps_entf.s08_gps_entf_m = "public".t_can_sxx_gps_entf.s08_gps_entf_m_min

	GROUP BY
	"public".t_can_sxx_gps_entf.vp,
	"public".t_can_sxx_gps_entf.runde
) s08_temp,

( SELECT
	"public".t_can_sxx_gps_entf.vp,
	"public".t_can_sxx_gps_entf.runde,
	min("public".t_can_sxx_gps_entf.znr) as znr_min,
	min("public".t_can_sxx_gps_entf.zeit_s) as zeit_s_min,
	min("public".t_can_sxx_gps_entf.distanz_m) as distanz_m_min

	FROM
	"public".t_can_sxx_gps_entf

	WHERE
	"public".t_can_sxx_gps_entf.runde_teil_v2 = 1 AND
	"public".t_can_sxx_gps_entf.s09_gps_entf_m = "public".t_can_sxx_gps_entf.s09_gps_entf_m_min

	GROUP BY
	"public".t_can_sxx_gps_entf.vp,
	"public".t_can_sxx_gps_entf.runde
) s09_temp,

( SELECT
	"public".t_can_sxx_gps_entf.vp,
	"public".t_can_sxx_gps_entf.runde,
	min("public".t_can_sxx_gps_entf.znr) as znr_min,
	min("public".t_can_sxx_gps_entf.zeit_s) as zeit_s_min,
	min("public".t_can_sxx_gps_entf.distanz_m) as distanz_m_min

	FROM
	"public".t_can_sxx_gps_entf

	WHERE
	"public".t_can_sxx_gps_entf.runde_teil_v2 = 1 AND
	"public".t_can_sxx_gps_entf.s10_gps_entf_m = "public".t_can_sxx_gps_entf.s10_gps_entf_m_min

	GROUP BY
	"public".t_can_sxx_gps_entf.vp,
	"public".t_can_sxx_gps_entf.runde
) s10_temp,

( SELECT
	"public".t_can_sxx_gps_entf.vp,
	"public".t_can_sxx_gps_entf.runde,
	min("public".t_can_sxx_gps_entf.znr) as znr_min,
	min("public".t_can_sxx_gps_entf.zeit_s) as zeit_s_min,
	min("public".t_can_sxx_gps_entf.distanz_m) as distanz_m_min

	FROM
	"public".t_can_sxx_gps_entf

	WHERE
	"public".t_can_sxx_gps_entf.runde_teil_v2 = 1 AND 
	"public".t_can_sxx_gps_entf.s11_gps_entf_m = "public".t_can_sxx_gps_entf.s11_gps_entf_m_min

	GROUP BY
	"public".t_can_sxx_gps_entf.vp,
	"public".t_can_sxx_gps_entf.runde
) s11_temp,

( SELECT
	"public".t_can_sxx_gps_entf.vp,
	"public".t_can_sxx_gps_entf.runde,
	min("public".t_can_sxx_gps_entf.znr) as znr_min,
	min("public".t_can_sxx_gps_entf.zeit_s) as zeit_s_min,
	min("public".t_can_sxx_gps_entf.distanz_m) as distanz_m_min

	FROM
	"public".t_can_sxx_gps_entf

	WHERE
	"public".t_can_sxx_gps_entf.runde_teil = 2 AND 
	"public".t_can_sxx_gps_entf.s12_gps_entf_m = "public".t_can_sxx_gps_entf.s12_gps_entf_m_min

	GROUP BY
	"public".t_can_sxx_gps_entf.vp,
	"public".t_can_sxx_gps_entf.runde
) s12_temp,

( SELECT
	"public".t_can_sxx_gps_entf.vp,
	"public".t_can_sxx_gps_entf.runde,
	min("public".t_can_sxx_gps_entf.znr) as znr_min,
	min("public".t_can_sxx_gps_entf.zeit_s) as zeit_s_min,
	min("public".t_can_sxx_gps_entf.distanz_m) as distanz_m_min

	FROM
	"public".t_can_sxx_gps_entf

	WHERE
	"public".t_can_sxx_gps_entf.runde_teil = 2 AND 
	"public".t_can_sxx_gps_entf.s13_gps_entf_m = "public".t_can_sxx_gps_entf.s13_gps_entf_m_min

	GROUP BY
	"public".t_can_sxx_gps_entf.vp,
	"public".t_can_sxx_gps_entf.runde
) s13_temp,

( SELECT
	"public".t_can_sxx_gps_entf.vp,
	"public".t_can_sxx_gps_entf.runde,
	min("public".t_can_sxx_gps_entf.znr) as znr_min,
	min("public".t_can_sxx_gps_entf.zeit_s) as zeit_s_min,
	min("public".t_can_sxx_gps_entf.distanz_m) as distanz_m_min

	FROM
	"public".t_can_sxx_gps_entf

	WHERE
	"public".t_can_sxx_gps_entf.runde_teil = 2 AND 
	"public".t_can_sxx_gps_entf.s14_gps_entf_m = "public".t_can_sxx_gps_entf.s14_gps_entf_m_min

	GROUP BY
	"public".t_can_sxx_gps_entf.vp,
	"public".t_can_sxx_gps_entf.runde
) s14_temp,

( SELECT
	"public".t_can_sxx_gps_entf.vp,
	"public".t_can_sxx_gps_entf.runde,
	min("public".t_can_sxx_gps_entf.znr) as znr_min,
	min("public".t_can_sxx_gps_entf.zeit_s) as zeit_s_min,
	min("public".t_can_sxx_gps_entf.distanz_m) as distanz_m_min

	FROM
	"public".t_can_sxx_gps_entf

	WHERE
	"public".t_can_sxx_gps_entf.runde_teil = 2 AND 
	"public".t_can_sxx_gps_entf.s15_gps_entf_m = "public".t_can_sxx_gps_entf.s15_gps_entf_m_min

	GROUP BY
	"public".t_can_sxx_gps_entf.vp,
	"public".t_can_sxx_gps_entf.runde
) s15_temp,

( SELECT
	"public".t_can_sxx_gps_entf.vp,
	"public".t_can_sxx_gps_entf.runde,
	min("public".t_can_sxx_gps_entf.znr) as znr_min,
	min("public".t_can_sxx_gps_entf.zeit_s) as zeit_s_min,
	min("public".t_can_sxx_gps_entf.distanz_m) as distanz_m_min

	FROM
	"public".t_can_sxx_gps_entf

	WHERE
	"public".t_can_sxx_gps_entf.runde_teil = 2 AND 
	"public".t_can_sxx_gps_entf.s16_gps_entf_m = "public".t_can_sxx_gps_entf.s16_gps_entf_m_min

	GROUP BY
	"public".t_can_sxx_gps_entf.vp,
	"public".t_can_sxx_gps_entf.runde
) s16_temp,

( SELECT
	"public".t_can_sxx_gps_entf.vp,
	"public".t_can_sxx_gps_entf.runde,
	min("public".t_can_sxx_gps_entf.znr) as znr_min,
	min("public".t_can_sxx_gps_entf.zeit_s) as zeit_s_min,
	min("public".t_can_sxx_gps_entf.distanz_m) as distanz_m_min

	FROM
	"public".t_can_sxx_gps_entf

	WHERE
	"public".t_can_sxx_gps_entf.runde_teil = 2 AND 
	"public".t_can_sxx_gps_entf.s17_gps_entf_m = "public".t_can_sxx_gps_entf.s17_gps_entf_m_min

	GROUP BY
	"public".t_can_sxx_gps_entf.vp,
	"public".t_can_sxx_gps_entf.runde
) s17_temp,

( SELECT
	"public".t_can_sxx_gps_entf.vp,
	"public".t_can_sxx_gps_entf.runde,
	min("public".t_can_sxx_gps_entf.znr) as znr_min,
	min("public".t_can_sxx_gps_entf.zeit_s) as zeit_s_min,
	min("public".t_can_sxx_gps_entf.distanz_m) as distanz_m_min

	FROM
	"public".t_can_sxx_gps_entf

	WHERE
	"public".t_can_sxx_gps_entf.runde_teil = 2 AND 
	"public".t_can_sxx_gps_entf.s18_gps_entf_m = "public".t_can_sxx_gps_entf.s18_gps_entf_m_min

	GROUP BY
	"public".t_can_sxx_gps_entf.vp,
	"public".t_can_sxx_gps_entf.runde
) s18_temp

WHERE 
"public".t_can_sxx_gps_entf.vp = s01_temp.vp AND
"public".t_can_sxx_gps_entf.vp = s02_temp.vp AND
"public".t_can_sxx_gps_entf.vp = s03_temp.vp AND
"public".t_can_sxx_gps_entf.vp = s04_temp.vp AND
"public".t_can_sxx_gps_entf.vp = s05_temp.vp AND
"public".t_can_sxx_gps_entf.vp = s06_temp.vp AND
"public".t_can_sxx_gps_entf.vp = s07_temp.vp AND
"public".t_can_sxx_gps_entf.vp = s08_temp.vp AND
"public".t_can_sxx_gps_entf.vp = s09_temp.vp AND
"public".t_can_sxx_gps_entf.vp = s10_temp.vp AND
"public".t_can_sxx_gps_entf.vp = s11_temp.vp AND
"public".t_can_sxx_gps_entf.vp = s12_temp.vp AND
"public".t_can_sxx_gps_entf.vp = s13_temp.vp AND
"public".t_can_sxx_gps_entf.vp = s14_temp.vp AND
"public".t_can_sxx_gps_entf.vp = s15_temp.vp AND
"public".t_can_sxx_gps_entf.vp = s16_temp.vp AND
"public".t_can_sxx_gps_entf.vp = s17_temp.vp AND
"public".t_can_sxx_gps_entf.vp = s18_temp.vp AND
"public".t_can_sxx_gps_entf.runde = s01_temp.runde AND
"public".t_can_sxx_gps_entf.runde = s02_temp.runde AND
"public".t_can_sxx_gps_entf.runde = s03_temp.runde AND
"public".t_can_sxx_gps_entf.runde = s04_temp.runde AND
"public".t_can_sxx_gps_entf.runde = s05_temp.runde AND
"public".t_can_sxx_gps_entf.runde = s06_temp.runde AND
"public".t_can_sxx_gps_entf.runde = s07_temp.runde AND
"public".t_can_sxx_gps_entf.runde = s08_temp.runde AND
"public".t_can_sxx_gps_entf.runde = s09_temp.runde AND
"public".t_can_sxx_gps_entf.runde = s10_temp.runde AND
"public".t_can_sxx_gps_entf.runde = s11_temp.runde AND
"public".t_can_sxx_gps_entf.runde = s12_temp.runde AND
"public".t_can_sxx_gps_entf.runde = s13_temp.runde AND
"public".t_can_sxx_gps_entf.runde = s14_temp.runde AND
"public".t_can_sxx_gps_entf.runde = s15_temp.runde AND
"public".t_can_sxx_gps_entf.runde = s16_temp.runde AND
"public".t_can_sxx_gps_entf.runde = s17_temp.runde AND
"public".t_can_sxx_gps_entf.runde = s18_temp.runde

ORDER BY
"public".t_can_sxx_gps_entf.znr ASC
