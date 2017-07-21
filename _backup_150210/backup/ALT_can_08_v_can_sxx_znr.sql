CREATE OR REPLACE VIEW v_can_sxx_znr AS

--GROUP BY drin lassen; kann sein, dass es doppelte Werte gibt

SELECT
s01_temp.znr_min as s01_znr_min,
s01_temp.zeit_s_min as s01_zeit_s_min,
s01_temp.distanz_m_min as s01_distanz_m_min,
s02_temp.znr_min as s02_znr_min,
s02_temp.zeit_s_min as s02_zeit_s_min,
s02_temp.distanz_m_min as s02_distanz_m_min,
s03_temp.znr_min as s03_znr_min,
s03_temp.zeit_s_min as s03_zeit_s_min,
s03_temp.distanz_m_min as s03_distanz_m_min,
s04_temp.znr_min as s04_znr_min,
s04_temp.zeit_s_min as s04_zeit_s_min,
s04_temp.distanz_m_min as s04_distanz_m_min,
s05_temp.znr_min as s05_znr_min,
s05_temp.zeit_s_min as s05_zeit_s_min,
s05_temp.distanz_m_min as s05_distanz_m_min,
s06_temp.znr_min as s06_znr_min,
s06_temp.zeit_s_min as s06_zeit_s_min,
s06_temp.distanz_m_min as s06_distanz_m_min,
s07_temp.znr_min as s07_znr_min,
s07_temp.zeit_s_min as s07_zeit_s_min,
s07_temp.distanz_m_min as s07_distanz_m_min,
s08_temp.znr_min as s08_znr_min,
s08_temp.zeit_s_min as s08_zeit_s_min,
s08_temp.distanz_m_min as s08_distanz_m_min,
s09_temp.znr_min as s09_znr_min,
s09_temp.zeit_s_min as s09_zeit_s_min,
s09_temp.distanz_m_min as s09_distanz_m_min,
s10_temp.znr_min as s10_znr_min,
s10_temp.zeit_s_min as s10_zeit_s_min,
s10_temp.distanz_m_min as s10_distanz_m_min,
s11_temp.znr_min as s11_znr_min,
s11_temp.zeit_s_min as s11_zeit_s_min,
s11_temp.distanz_m_min as s11_distanz_m_min,
s12_temp.znr_min as s12_znr_min,
s12_temp.zeit_s_min as s12_zeit_s_min,
s12_temp.distanz_m_min as s12_distanz_m_min,
s13_temp.znr_min as s13_znr_min,
s13_temp.zeit_s_min as s13_zeit_s_min,
s13_temp.distanz_m_min as s13_distanz_m_min,
s14_temp.znr_min as s14_znr_min,
s14_temp.zeit_s_min as s14_zeit_s_min,
s14_temp.distanz_m_min as s14_distanz_m_min,
s15_temp.znr_min as s15_znr_min,
s15_temp.zeit_s_min as s15_zeit_s_min,
s15_temp.distanz_m_min as s15_distanz_m_min,
s16_temp.znr_min as s16_znr_min,
s16_temp.zeit_s_min as s16_zeit_s_min,
s16_temp.distanz_m_min as s16_distanz_m_min,
s17_temp.znr_min as s17_znr_min,
s17_temp.zeit_s_min as s17_zeit_s_min,
s17_temp.distanz_m_min as s17_distanz_m_min,
s18_temp.znr_min as s18_znr_min,
s18_temp.zeit_s_min as s18_zeit_s_min,
s18_temp.distanz_m_min as s18_distanz_m_min

FROM
( SELECT
	"public".v_can_sxx_distanz.vp,
	"public".v_can_sxx_distanz.runde,
	min("public".v_can_sxx_distanz.znr) as znr_min,
	min("public".v_can_sxx_distanz.zeit_s) as zeit_s_min,
	min("public".v_can_sxx_distanz.distanz_m) as distanz_m_min

	FROM
	"public".v_can_sxx_distanz

	WHERE 
	"public".v_can_sxx_distanz.s01_gps_entf_m = "public".v_can_sxx_distanz.s01_gps_entf_m_min

	GROUP BY
	"public".v_can_sxx_distanz.vp,
	"public".v_can_sxx_distanz.runde
) s01_temp,

( SELECT
	"public".v_can_sxx_distanz.vp,
	"public".v_can_sxx_distanz.runde,
	min("public".v_can_sxx_distanz.znr) as znr_min,
	min("public".v_can_sxx_distanz.zeit_s) as zeit_s_min,
	min("public".v_can_sxx_distanz.distanz_m) as distanz_m_min

	FROM
	"public".v_can_sxx_distanz

	WHERE 
	"public".v_can_sxx_distanz.s02_gps_entf_m = "public".v_can_sxx_distanz.s02_gps_entf_m_min

	GROUP BY
	"public".v_can_sxx_distanz.vp,
	"public".v_can_sxx_distanz.runde
) s02_temp,

( SELECT
	"public".v_can_sxx_distanz.vp,
	"public".v_can_sxx_distanz.runde,
	min("public".v_can_sxx_distanz.znr) as znr_min,
	min("public".v_can_sxx_distanz.zeit_s) as zeit_s_min,
	min("public".v_can_sxx_distanz.distanz_m) as distanz_m_min

	FROM
	"public".v_can_sxx_distanz

	WHERE 
	"public".v_can_sxx_distanz.s03_gps_entf_m = "public".v_can_sxx_distanz.s03_gps_entf_m_min

	GROUP BY
	"public".v_can_sxx_distanz.vp,
	"public".v_can_sxx_distanz.runde
) s03_temp,

( SELECT
	"public".v_can_sxx_distanz.vp,
	"public".v_can_sxx_distanz.runde,
	min("public".v_can_sxx_distanz.znr) as znr_min,
	min("public".v_can_sxx_distanz.zeit_s) as zeit_s_min,
	min("public".v_can_sxx_distanz.distanz_m) as distanz_m_min

	FROM
	"public".v_can_sxx_distanz

	WHERE 
	"public".v_can_sxx_distanz.s04_gps_entf_m = "public".v_can_sxx_distanz.s04_gps_entf_m_min

	GROUP BY
	"public".v_can_sxx_distanz.vp,
	"public".v_can_sxx_distanz.runde
) s04_temp,

( SELECT
	"public".v_can_sxx_distanz.vp,
	"public".v_can_sxx_distanz.runde,
	min("public".v_can_sxx_distanz.znr) as znr_min,
	min("public".v_can_sxx_distanz.zeit_s) as zeit_s_min,
	min("public".v_can_sxx_distanz.distanz_m) as distanz_m_min

	FROM
	"public".v_can_sxx_distanz

	WHERE 
	"public".v_can_sxx_distanz.s05_gps_entf_m = "public".v_can_sxx_distanz.s05_gps_entf_m_min

	GROUP BY
	"public".v_can_sxx_distanz.vp,
	"public".v_can_sxx_distanz.runde
) s05_temp,

( SELECT
	"public".v_can_sxx_distanz.vp,
	"public".v_can_sxx_distanz.runde,
	min("public".v_can_sxx_distanz.znr) as znr_min,
	min("public".v_can_sxx_distanz.zeit_s) as zeit_s_min,
	min("public".v_can_sxx_distanz.distanz_m) as distanz_m_min

	FROM
	"public".v_can_sxx_distanz

	WHERE 
	"public".v_can_sxx_distanz.s06_gps_entf_m = "public".v_can_sxx_distanz.s06_gps_entf_m_min

	GROUP BY
	"public".v_can_sxx_distanz.vp,
	"public".v_can_sxx_distanz.runde
) s06_temp,

( SELECT
	"public".v_can_sxx_distanz.vp,
	"public".v_can_sxx_distanz.runde,
	min("public".v_can_sxx_distanz.znr) as znr_min,
	min("public".v_can_sxx_distanz.zeit_s) as zeit_s_min,
	min("public".v_can_sxx_distanz.distanz_m) as distanz_m_min

	FROM
	"public".v_can_sxx_distanz

	WHERE 
	"public".v_can_sxx_distanz.s07_gps_entf_m = "public".v_can_sxx_distanz.s07_gps_entf_m_min

	GROUP BY
	"public".v_can_sxx_distanz.vp,
	"public".v_can_sxx_distanz.runde
) s07_temp,

( SELECT
	"public".v_can_sxx_distanz.vp,
	"public".v_can_sxx_distanz.runde,
	min("public".v_can_sxx_distanz.znr) as znr_min,
	min("public".v_can_sxx_distanz.zeit_s) as zeit_s_min,
	min("public".v_can_sxx_distanz.distanz_m) as distanz_m_min

	FROM
	"public".v_can_sxx_distanz

	WHERE 
	"public".v_can_sxx_distanz.s08_gps_entf_m = "public".v_can_sxx_distanz.s08_gps_entf_m_min

	GROUP BY
	"public".v_can_sxx_distanz.vp,
	"public".v_can_sxx_distanz.runde
) s08_temp,

( SELECT
	"public".v_can_sxx_distanz.vp,
	"public".v_can_sxx_distanz.runde,
	min("public".v_can_sxx_distanz.znr) as znr_min,
	min("public".v_can_sxx_distanz.zeit_s) as zeit_s_min,
	min("public".v_can_sxx_distanz.distanz_m) as distanz_m_min

	FROM
	"public".v_can_sxx_distanz

	WHERE 
	"public".v_can_sxx_distanz.s09_gps_entf_m = "public".v_can_sxx_distanz.s09_gps_entf_m_min

	GROUP BY
	"public".v_can_sxx_distanz.vp,
	"public".v_can_sxx_distanz.runde
) s09_temp,

( SELECT
	"public".v_can_sxx_distanz.vp,
	"public".v_can_sxx_distanz.runde,
	min("public".v_can_sxx_distanz.znr) as znr_min,
	min("public".v_can_sxx_distanz.zeit_s) as zeit_s_min,
	min("public".v_can_sxx_distanz.distanz_m) as distanz_m_min

	FROM
	"public".v_can_sxx_distanz

	WHERE 
	"public".v_can_sxx_distanz.s10_gps_entf_m = "public".v_can_sxx_distanz.s10_gps_entf_m_min

	GROUP BY
	"public".v_can_sxx_distanz.vp,
	"public".v_can_sxx_distanz.runde
) s10_temp,

( SELECT
	"public".v_can_sxx_distanz.vp,
	"public".v_can_sxx_distanz.runde,
	min("public".v_can_sxx_distanz.znr) as znr_min,
	min("public".v_can_sxx_distanz.zeit_s) as zeit_s_min,
	min("public".v_can_sxx_distanz.distanz_m) as distanz_m_min

	FROM
	"public".v_can_sxx_distanz

	WHERE 
	"public".v_can_sxx_distanz.s11_gps_entf_m = "public".v_can_sxx_distanz.s11_gps_entf_m_min

	GROUP BY
	"public".v_can_sxx_distanz.vp,
	"public".v_can_sxx_distanz.runde
) s11_temp,

( SELECT
	"public".v_can_sxx_distanz.vp,
	"public".v_can_sxx_distanz.runde,
	min("public".v_can_sxx_distanz.znr) as znr_min,
	min("public".v_can_sxx_distanz.zeit_s) as zeit_s_min,
	min("public".v_can_sxx_distanz.distanz_m) as distanz_m_min

	FROM
	"public".v_can_sxx_distanz

	WHERE 
	"public".v_can_sxx_distanz.s12_gps_entf_m = "public".v_can_sxx_distanz.s12_gps_entf_m_min

	GROUP BY
	"public".v_can_sxx_distanz.vp,
	"public".v_can_sxx_distanz.runde
) s12_temp,

( SELECT
	"public".v_can_sxx_distanz.vp,
	"public".v_can_sxx_distanz.runde,
	min("public".v_can_sxx_distanz.znr) as znr_min,
	min("public".v_can_sxx_distanz.zeit_s) as zeit_s_min,
	min("public".v_can_sxx_distanz.distanz_m) as distanz_m_min

	FROM
	"public".v_can_sxx_distanz

	WHERE 
	"public".v_can_sxx_distanz.s13_gps_entf_m = "public".v_can_sxx_distanz.s13_gps_entf_m_min

	GROUP BY
	"public".v_can_sxx_distanz.vp,
	"public".v_can_sxx_distanz.runde
) s13_temp,

( SELECT
	"public".v_can_sxx_distanz.vp,
	"public".v_can_sxx_distanz.runde,
	min("public".v_can_sxx_distanz.znr) as znr_min,
	min("public".v_can_sxx_distanz.zeit_s) as zeit_s_min,
	min("public".v_can_sxx_distanz.distanz_m) as distanz_m_min

	FROM
	"public".v_can_sxx_distanz

	WHERE 
	"public".v_can_sxx_distanz.s14_gps_entf_m = "public".v_can_sxx_distanz.s14_gps_entf_m_min

	GROUP BY
	"public".v_can_sxx_distanz.vp,
	"public".v_can_sxx_distanz.runde
) s14_temp,

( SELECT
	"public".v_can_sxx_distanz.vp,
	"public".v_can_sxx_distanz.runde,
	min("public".v_can_sxx_distanz.znr) as znr_min,
	min("public".v_can_sxx_distanz.zeit_s) as zeit_s_min,
	min("public".v_can_sxx_distanz.distanz_m) as distanz_m_min

	FROM
	"public".v_can_sxx_distanz

	WHERE 
	"public".v_can_sxx_distanz.s15_gps_entf_m = "public".v_can_sxx_distanz.s15_gps_entf_m_min

	GROUP BY
	"public".v_can_sxx_distanz.vp,
	"public".v_can_sxx_distanz.runde
) s15_temp,

( SELECT
	"public".v_can_sxx_distanz.vp,
	"public".v_can_sxx_distanz.runde,
	min("public".v_can_sxx_distanz.znr) as znr_min,
	min("public".v_can_sxx_distanz.zeit_s) as zeit_s_min,
	min("public".v_can_sxx_distanz.distanz_m) as distanz_m_min

	FROM
	"public".v_can_sxx_distanz

	WHERE 
	"public".v_can_sxx_distanz.s16_gps_entf_m = "public".v_can_sxx_distanz.s16_gps_entf_m_min

	GROUP BY
	"public".v_can_sxx_distanz.vp,
	"public".v_can_sxx_distanz.runde
) s16_temp,

( SELECT
	"public".v_can_sxx_distanz.vp,
	"public".v_can_sxx_distanz.runde,
	min("public".v_can_sxx_distanz.znr) as znr_min,
	min("public".v_can_sxx_distanz.zeit_s) as zeit_s_min,
	min("public".v_can_sxx_distanz.distanz_m) as distanz_m_min

	FROM
	"public".v_can_sxx_distanz

	WHERE 
	"public".v_can_sxx_distanz.s17_gps_entf_m = "public".v_can_sxx_distanz.s17_gps_entf_m_min

	GROUP BY
	"public".v_can_sxx_distanz.vp,
	"public".v_can_sxx_distanz.runde
) s17_temp,

( SELECT
	"public".v_can_sxx_distanz.vp,
	"public".v_can_sxx_distanz.runde,
	min("public".v_can_sxx_distanz.znr) as znr_min,
	min("public".v_can_sxx_distanz.zeit_s) as zeit_s_min,
	min("public".v_can_sxx_distanz.distanz_m) as distanz_m_min

	FROM
	"public".v_can_sxx_distanz

	WHERE 
	"public".v_can_sxx_distanz.s18_gps_entf_m = "public".v_can_sxx_distanz.s18_gps_entf_m_min

	GROUP BY
	"public".v_can_sxx_distanz.vp,
	"public".v_can_sxx_distanz.runde
) s18_temp
