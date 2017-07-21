DROP VIEW v_can_sxx_gps_entf CASCADE;
CREATE OR REPLACE VIEW v_can_sxx_gps_entf AS

SELECT
"public".t_can_gesamt.znr,
"public".t_can_gesamt.vp,
"public".t_can_gesamt.zeit_s,
"public".v_can_distanz.distanz_m_diff,
"public".v_can_distanz.distanz_m,
"public".v_can_distanz.runde,
"public".v_can_distanz.runde_teil,
"public".v_can_distanz.runde_teil_v2,
"public".v_can_distanz.runde_distanz_m,

"public".t_can_gesamt.gps_lat,
"public".t_can_gesamt.gps_long,

gps_s01.situation_lat as s01_gps_lat,
gps_s01.situation_long as s01_gps_long,
gps_s02.situation_lat as s02_gps_lat,
gps_s02.situation_long as s02_gps_long,
gps_s03.situation_lat as s03_gps_lat,
gps_s03.situation_long as s03_gps_long,
gps_s04.situation_lat as s04_gps_lat,
gps_s04.situation_long as s04_gps_long,
gps_s05.situation_lat as s05_gps_lat,
gps_s05.situation_long as s05_gps_long,
gps_s06.situation_lat as s06_gps_lat,
gps_s06.situation_long as s06_gps_long,
gps_s07.situation_lat as s07_gps_lat,
gps_s07.situation_long as s07_gps_long,
gps_s08.situation_lat as s08_gps_lat,
gps_s08.situation_long as s08_gps_long,
gps_s09.situation_lat as s09_gps_lat,
gps_s09.situation_long as s09_gps_long,
gps_s10.situation_lat as s10_gps_lat,
gps_s10.situation_long as s10_gps_long,
gps_s11.situation_lat as s11_gps_lat,
gps_s11.situation_long as s11_gps_long,
gps_s12.situation_lat as s12_gps_lat,
gps_s12.situation_long as s12_gps_long,
gps_s13.situation_lat as s13_gps_lat,
gps_s13.situation_long as s13_gps_long,
gps_s14.situation_lat as s14_gps_lat,
gps_s14.situation_long as s14_gps_long,
gps_s15.situation_lat as s15_gps_lat,
gps_s15.situation_long as s15_gps_long,
gps_s16.situation_lat as s16_gps_lat,
gps_s16.situation_long as s16_gps_long,
gps_s17.situation_lat as s17_gps_lat,
gps_s17.situation_long as s17_gps_long,
gps_s18.situation_lat as s18_gps_lat,
gps_s18.situation_long as s18_gps_long,

ST_distance_sphere(
 	st_point("public".t_can_gesamt.gps_long, "public".t_can_gesamt.gps_lat), 
 	st_point(gps_s01.situation_long, gps_s01.situation_lat)) 
 	AS s01_gps_entf_m,

ST_distance_sphere(
 	st_point("public".t_can_gesamt.gps_long, "public".t_can_gesamt.gps_lat), 
 	st_point(gps_s02.situation_long, gps_s02.situation_lat)) 
 	AS s02_gps_entf_m,

ST_distance_sphere(
 	st_point("public".t_can_gesamt.gps_long, "public".t_can_gesamt.gps_lat), 
 	st_point(gps_s03.situation_long, gps_s03.situation_lat)) 
 	AS s03_gps_entf_m,

ST_distance_sphere(
 	st_point("public".t_can_gesamt.gps_long, "public".t_can_gesamt.gps_lat), 
 	st_point(gps_s04.situation_long, gps_s04.situation_lat)) 
 	AS s04_gps_entf_m,

ST_distance_sphere(
 	st_point("public".t_can_gesamt.gps_long, "public".t_can_gesamt.gps_lat), 
 	st_point(gps_s05.situation_long, gps_s05.situation_lat)) 
 	AS s05_gps_entf_m,

ST_distance_sphere(
 	st_point("public".t_can_gesamt.gps_long, "public".t_can_gesamt.gps_lat), 
 	st_point(gps_s06.situation_long, gps_s06.situation_lat)) 
 	AS s06_gps_entf_m,

ST_distance_sphere(
 	st_point("public".t_can_gesamt.gps_long, "public".t_can_gesamt.gps_lat), 
 	st_point(gps_s07.situation_long, gps_s07.situation_lat)) 
 	AS s07_gps_entf_m,

ST_distance_sphere(
 	st_point("public".t_can_gesamt.gps_long, "public".t_can_gesamt.gps_lat), 
 	st_point(gps_s08.situation_long, gps_s08.situation_lat)) 
 	AS s08_gps_entf_m,

ST_distance_sphere(
 	st_point("public".t_can_gesamt.gps_long, "public".t_can_gesamt.gps_lat), 
 	st_point(gps_s09.situation_long, gps_s09.situation_lat)) 
 	AS s09_gps_entf_m,

ST_distance_sphere(
 	st_point("public".t_can_gesamt.gps_long, "public".t_can_gesamt.gps_lat), 
 	st_point(gps_s10.situation_long, gps_s10.situation_lat)) 
 	AS s10_gps_entf_m,

ST_distance_sphere(
 	st_point("public".t_can_gesamt.gps_long, "public".t_can_gesamt.gps_lat), 
 	st_point(gps_s11.situation_long, gps_s11.situation_lat)) 
 	AS s11_gps_entf_m,

ST_distance_sphere(
 	st_point("public".t_can_gesamt.gps_long, "public".t_can_gesamt.gps_lat), 
 	st_point(gps_s12.situation_long, gps_s12.situation_lat)) 
 	AS s12_gps_entf_m,

ST_distance_sphere(
 	st_point("public".t_can_gesamt.gps_long, "public".t_can_gesamt.gps_lat), 
 	st_point(gps_s13.situation_long, gps_s13.situation_lat)) 
 	AS s13_gps_entf_m,

ST_distance_sphere(
 	st_point("public".t_can_gesamt.gps_long, "public".t_can_gesamt.gps_lat), 
 	st_point(gps_s14.situation_long, gps_s14.situation_lat)) 
 	AS s14_gps_entf_m,

ST_distance_sphere(
 	st_point("public".t_can_gesamt.gps_long, "public".t_can_gesamt.gps_lat), 
 	st_point(gps_s15.situation_long, gps_s15.situation_lat)) 
 	AS s15_gps_entf_m,

ST_distance_sphere(
 	st_point("public".t_can_gesamt.gps_long, "public".t_can_gesamt.gps_lat), 
 	st_point(gps_s16.situation_long, gps_s16.situation_lat)) 
 	AS s16_gps_entf_m,

ST_distance_sphere(
 	st_point("public".t_can_gesamt.gps_long, "public".t_can_gesamt.gps_lat), 
 	st_point(gps_s17.situation_long, gps_s17.situation_lat)) 
 	AS s17_gps_entf_m,

ST_distance_sphere(
 	st_point("public".t_can_gesamt.gps_long, "public".t_can_gesamt.gps_lat), 
 	st_point(gps_s18.situation_long, gps_s18.situation_lat)) 
 	AS s18_gps_entf_m,

--minimale Distanzen je Runde zu jeder Situation
MIN(ST_distance_sphere(
		st_point("public".t_can_gesamt.gps_long, "public".t_can_gesamt.gps_lat), 
		st_point(gps_s01.situation_long, gps_s01.situation_lat))) 
	OVER (PARTITION BY "public".v_can_distanz.vp, "public".v_can_distanz.runde, "public".v_can_distanz.runde_teil)
AS s01_gps_entf_m_min,

MIN(ST_distance_sphere(
		st_point("public".t_can_gesamt.gps_long, "public".t_can_gesamt.gps_lat), 
		st_point(gps_s02.situation_long, gps_s02.situation_lat))) 
	OVER (PARTITION BY "public".v_can_distanz.vp, "public".v_can_distanz.runde, "public".v_can_distanz.runde_teil)
AS s02_gps_entf_m_min,

MIN(ST_distance_sphere(
		st_point("public".t_can_gesamt.gps_long, "public".t_can_gesamt.gps_lat), 
		st_point(gps_s03.situation_long, gps_s03.situation_lat))) 
	OVER (PARTITION BY "public".v_can_distanz.vp, "public".v_can_distanz.runde, "public".v_can_distanz.runde_teil)
AS s03_gps_entf_m_min,

MIN(ST_distance_sphere(
		st_point("public".t_can_gesamt.gps_long, "public".t_can_gesamt.gps_lat), 
		st_point(gps_s04.situation_long, gps_s04.situation_lat))) 
	OVER (PARTITION BY "public".v_can_distanz.vp, "public".v_can_distanz.runde, "public".v_can_distanz.runde_teil)
AS s04_gps_entf_m_min,

MIN(ST_distance_sphere(
		st_point("public".t_can_gesamt.gps_long, "public".t_can_gesamt.gps_lat), 
		st_point(gps_s05.situation_long, gps_s05.situation_lat))) 
	OVER (PARTITION BY "public".v_can_distanz.vp, "public".v_can_distanz.runde, "public".v_can_distanz.runde_teil)
AS s05_gps_entf_m_min,

MIN(ST_distance_sphere(
		st_point("public".t_can_gesamt.gps_long, "public".t_can_gesamt.gps_lat), 
		st_point(gps_s06.situation_long, gps_s06.situation_lat))) 
	OVER (PARTITION BY "public".v_can_distanz.vp, "public".v_can_distanz.runde, "public".v_can_distanz.runde_teil)
AS s06_gps_entf_m_min,

MIN(ST_distance_sphere(
		st_point("public".t_can_gesamt.gps_long, "public".t_can_gesamt.gps_lat), 
		st_point(gps_s07.situation_long, gps_s07.situation_lat))) 
	OVER (PARTITION BY "public".v_can_distanz.vp, "public".v_can_distanz.runde, "public".v_can_distanz.runde_teil)
AS s07_gps_entf_m_min,

MIN(ST_distance_sphere(
		st_point("public".t_can_gesamt.gps_long, "public".t_can_gesamt.gps_lat), 
		st_point(gps_s08.situation_long, gps_s08.situation_lat))) 
	OVER (PARTITION BY "public".v_can_distanz.vp, "public".v_can_distanz.runde, "public".v_can_distanz.runde_teil)
AS s08_gps_entf_m_min,

MIN(ST_distance_sphere(
		st_point("public".t_can_gesamt.gps_long, "public".t_can_gesamt.gps_lat), 
		st_point(gps_s09.situation_long, gps_s09.situation_lat))) 
	OVER (PARTITION BY "public".v_can_distanz.vp, "public".v_can_distanz.runde, "public".v_can_distanz.runde_teil_v2)
AS s09_gps_entf_m_min,

MIN(ST_distance_sphere(
		st_point("public".t_can_gesamt.gps_long, "public".t_can_gesamt.gps_lat), 
		st_point(gps_s10.situation_long, gps_s10.situation_lat))) 
	OVER (PARTITION BY "public".v_can_distanz.vp, "public".v_can_distanz.runde, "public".v_can_distanz.runde_teil_v2)
AS s10_gps_entf_m_min,

MIN(ST_distance_sphere(
		st_point("public".t_can_gesamt.gps_long, "public".t_can_gesamt.gps_lat), 
		st_point(gps_s11.situation_long, gps_s11.situation_lat))) 
	OVER (PARTITION BY "public".v_can_distanz.vp, "public".v_can_distanz.runde, "public".v_can_distanz.runde_teil_v2)
AS s11_gps_entf_m_min,

MIN(ST_distance_sphere(
		st_point("public".t_can_gesamt.gps_long, "public".t_can_gesamt.gps_lat), 
		st_point(gps_s12.situation_long, gps_s12.situation_lat))) 
	OVER (PARTITION BY "public".v_can_distanz.vp, "public".v_can_distanz.runde, "public".v_can_distanz.runde_teil)
AS s12_gps_entf_m_min,

MIN(ST_distance_sphere(
		st_point("public".t_can_gesamt.gps_long, "public".t_can_gesamt.gps_lat), 
		st_point(gps_s13.situation_long, gps_s13.situation_lat))) 
	OVER (PARTITION BY "public".v_can_distanz.vp, "public".v_can_distanz.runde, "public".v_can_distanz.runde_teil)
AS s13_gps_entf_m_min,

MIN(ST_distance_sphere(
		st_point("public".t_can_gesamt.gps_long, "public".t_can_gesamt.gps_lat), 
		st_point(gps_s14.situation_long, gps_s14.situation_lat))) 
	OVER (PARTITION BY "public".v_can_distanz.vp, "public".v_can_distanz.runde, "public".v_can_distanz.runde_teil)
AS s14_gps_entf_m_min,

MIN(ST_distance_sphere(
		st_point("public".t_can_gesamt.gps_long, "public".t_can_gesamt.gps_lat), 
		st_point(gps_s15.situation_long, gps_s15.situation_lat))) 
	OVER (PARTITION BY "public".v_can_distanz.vp, "public".v_can_distanz.runde, "public".v_can_distanz.runde_teil)
AS s15_gps_entf_m_min,

MIN(ST_distance_sphere(
		st_point("public".t_can_gesamt.gps_long, "public".t_can_gesamt.gps_lat), 
		st_point(gps_s16.situation_long, gps_s16.situation_lat))) 
	OVER (PARTITION BY "public".v_can_distanz.vp, "public".v_can_distanz.runde, "public".v_can_distanz.runde_teil)
AS s16_gps_entf_m_min,

MIN(ST_distance_sphere(
		st_point("public".t_can_gesamt.gps_long, "public".t_can_gesamt.gps_lat), 
		st_point(gps_s17.situation_long, gps_s17.situation_lat))) 
	OVER (PARTITION BY "public".v_can_distanz.vp, "public".v_can_distanz.runde, "public".v_can_distanz.runde_teil)
AS s17_gps_entf_m_min,

MIN(ST_distance_sphere(
		st_point("public".t_can_gesamt.gps_long, "public".t_can_gesamt.gps_lat), 
		st_point(gps_s18.situation_long, gps_s18.situation_lat))) 
	OVER (PARTITION BY "public".v_can_distanz.vp, "public".v_can_distanz.runde, "public".v_can_distanz.runde_teil)
AS s18_gps_entf_m_min


FROM
"public".t_can_gesamt
LEFT OUTER JOIN "public".v_can_distanz ON "public".t_can_gesamt.znr = "public".v_can_distanz.znr,

(	SELECT
	"public".t_situation_gps2.situation,
	"public".t_situation_gps2.situation_lat,
	"public".t_situation_gps2.situation_long
	FROM
	"public".t_situation_gps2
	WHERE
	"public".t_situation_gps2.situation = 1
) gps_s01,

(	SELECT
	"public".t_situation_gps2.situation,
	"public".t_situation_gps2.situation_lat,
	"public".t_situation_gps2.situation_long
	FROM
	"public".t_situation_gps2
	WHERE
	"public".t_situation_gps2.situation = 2
) gps_s02,

(	SELECT
	"public".t_situation_gps2.situation,
	"public".t_situation_gps2.situation_lat,
	"public".t_situation_gps2.situation_long
	FROM
	"public".t_situation_gps2
	WHERE
	"public".t_situation_gps2.situation = 3
) gps_s03,

(	SELECT
	"public".t_situation_gps2.situation,
	"public".t_situation_gps2.situation_lat,
	"public".t_situation_gps2.situation_long
	FROM
	"public".t_situation_gps2
	WHERE
	"public".t_situation_gps2.situation = 4
) gps_s04,

(	SELECT
	"public".t_situation_gps2.situation,
	"public".t_situation_gps2.situation_lat,
	"public".t_situation_gps2.situation_long
	FROM
	"public".t_situation_gps2
	WHERE
	"public".t_situation_gps2.situation = 5
) gps_s05,

(	SELECT
	"public".t_situation_gps2.situation,
	"public".t_situation_gps2.situation_lat,
	"public".t_situation_gps2.situation_long
	FROM
	"public".t_situation_gps2
	WHERE
	"public".t_situation_gps2.situation = 6
) gps_s06,

(	SELECT
	"public".t_situation_gps2.situation,
	"public".t_situation_gps2.situation_lat,
	"public".t_situation_gps2.situation_long
	FROM
	"public".t_situation_gps2
	WHERE
	"public".t_situation_gps2.situation = 7
) gps_s07,

(	SELECT
	"public".t_situation_gps2.situation,
	"public".t_situation_gps2.situation_lat,
	"public".t_situation_gps2.situation_long
	FROM
	"public".t_situation_gps2
	WHERE
	"public".t_situation_gps2.situation = 8
) gps_s08,

(	SELECT
	"public".t_situation_gps2.situation,
	"public".t_situation_gps2.situation_lat,
	"public".t_situation_gps2.situation_long
	FROM
	"public".t_situation_gps2
	WHERE
	"public".t_situation_gps2.situation = 9
) gps_s09,

(	SELECT
	"public".t_situation_gps2.situation,
	"public".t_situation_gps2.situation_lat,
	"public".t_situation_gps2.situation_long
	FROM
	"public".t_situation_gps2
	WHERE
	"public".t_situation_gps2.situation = 10
) gps_s10,

(	SELECT
	"public".t_situation_gps2.situation,
	"public".t_situation_gps2.situation_lat,
	"public".t_situation_gps2.situation_long
	FROM
	"public".t_situation_gps2
	WHERE
	"public".t_situation_gps2.situation = 11
) gps_s11,

(	SELECT
	"public".t_situation_gps2.situation,
	"public".t_situation_gps2.situation_lat,
	"public".t_situation_gps2.situation_long
	FROM
	"public".t_situation_gps2
	WHERE
	"public".t_situation_gps2.situation = 12
) gps_s12,

(	SELECT
	"public".t_situation_gps2.situation,
	"public".t_situation_gps2.situation_lat,
	"public".t_situation_gps2.situation_long
	FROM
	"public".t_situation_gps2
	WHERE
	"public".t_situation_gps2.situation = 13
) gps_s13,

(	SELECT
	"public".t_situation_gps2.situation,
	"public".t_situation_gps2.situation_lat,
	"public".t_situation_gps2.situation_long
	FROM
	"public".t_situation_gps2
	WHERE
	"public".t_situation_gps2.situation = 14
) gps_s14,

(	SELECT
	"public".t_situation_gps2.situation,
	"public".t_situation_gps2.situation_lat,
	"public".t_situation_gps2.situation_long
	FROM
	"public".t_situation_gps2
	WHERE
	"public".t_situation_gps2.situation = 15
) gps_s15,

(	SELECT
	"public".t_situation_gps2.situation,
	"public".t_situation_gps2.situation_lat,
	"public".t_situation_gps2.situation_long
	FROM
	"public".t_situation_gps2
	WHERE
	"public".t_situation_gps2.situation = 16
) gps_s16,

(	SELECT
	"public".t_situation_gps2.situation,
	"public".t_situation_gps2.situation_lat,
	"public".t_situation_gps2.situation_long
	FROM
	"public".t_situation_gps2
	WHERE
	"public".t_situation_gps2.situation = 17
) gps_s17,

(	SELECT
	"public".t_situation_gps2.situation,
	"public".t_situation_gps2.situation_lat,
	"public".t_situation_gps2.situation_long
	FROM
	"public".t_situation_gps2
	WHERE
	"public".t_situation_gps2.situation = 18
) gps_s18

ORDER BY "public".t_can_gesamt.znr