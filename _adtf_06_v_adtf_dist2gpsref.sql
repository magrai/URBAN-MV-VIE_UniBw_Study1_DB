DROP VIEW IF EXISTS v_adtf_dist2gpsref CASCADE;
CREATE OR REPLACE VIEW v_adtf_dist2gpsref AS

SELECT
t_adtf.rnr,
t_adtf.subject_id,
t_adtf_dist.round_id,
t_adtf_dist.round_helper1,
t_adtf_dist.round_helper2,
t_adtf.time_s,
t_adtf_dist.dist_m,
t_adtf.gps_lat,
t_adtf.gps_lon,

ST_distance_sphere(
 	st_point(t_adtf.gps_lon, t_adtf.gps_lat), 
 	st_point(gps_s01.lon, gps_s01.lat)) 
 	AS s01_gps_dist_m,

ST_distance_sphere(
 	st_point(t_adtf.gps_lon, t_adtf.gps_lat), 
 	st_point(gps_s02.lon, gps_s02.lat)) 
 	AS s02_gps_dist_m,

ST_distance_sphere(
 	st_point(t_adtf.gps_lon, t_adtf.gps_lat), 
 	st_point(gps_s03.lon, gps_s03.lat)) 
 	AS s03_gps_dist_m,

ST_distance_sphere(
 	st_point(t_adtf.gps_lon, t_adtf.gps_lat), 
 	st_point(gps_s04.lon, gps_s04.lat)) 
 	AS s04_gps_dist_m,

ST_distance_sphere(
 	st_point(t_adtf.gps_lon, t_adtf.gps_lat), 
 	st_point(gps_s05.lon, gps_s05.lat)) 
 	AS s05_gps_dist_m,

ST_distance_sphere(
 	st_point(t_adtf.gps_lon, t_adtf.gps_lat), 
 	st_point(gps_s06.lon, gps_s06.lat)) 
 	AS s06_gps_dist_m,

ST_distance_sphere(
 	st_point(t_adtf.gps_lon, t_adtf.gps_lat), 
 	st_point(gps_s07.lon, gps_s07.lat)) 
 	AS s07_gps_dist_m,

ST_distance_sphere(
 	st_point(t_adtf.gps_lon, t_adtf.gps_lat), 
 	st_point(gps_s08.lon, gps_s08.lat)) 
 	AS s08_gps_dist_m,

ST_distance_sphere(
 	st_point(t_adtf.gps_lon, t_adtf.gps_lat), 
 	st_point(gps_s09.lon, gps_s09.lat)) 
 	AS s09_gps_dist_m,

ST_distance_sphere(
 	st_point(t_adtf.gps_lon, t_adtf.gps_lat), 
 	st_point(gps_s10.lon, gps_s10.lat)) 
 	AS s10_gps_dist_m,

ST_distance_sphere(
 	st_point(t_adtf.gps_lon, t_adtf.gps_lat), 
 	st_point(gps_s11.lon, gps_s11.lat)) 
 	AS s11_gps_dist_m,

ST_distance_sphere(
 	st_point(t_adtf.gps_lon, t_adtf.gps_lat), 
 	st_point(gps_s12.lon, gps_s12.lat)) 
 	AS s12_gps_dist_m,

ST_distance_sphere(
 	st_point(t_adtf.gps_lon, t_adtf.gps_lat), 
 	st_point(gps_s13.lon, gps_s13.lat)) 
 	AS s13_gps_dist_m,

ST_distance_sphere(
 	st_point(t_adtf.gps_lon, t_adtf.gps_lat), 
 	st_point(gps_s14.lon, gps_s14.lat)) 
 	AS s14_gps_dist_m,

ST_distance_sphere(
 	st_point(t_adtf.gps_lon, t_adtf.gps_lat), 
 	st_point(gps_s15.lon, gps_s15.lat)) 
 	AS s15_gps_dist_m,

ST_distance_sphere(
 	st_point(t_adtf.gps_lon, t_adtf.gps_lat), 
 	st_point(gps_s16.lon, gps_s16.lat)) 
 	AS s16_gps_dist_m,

ST_distance_sphere(
 	st_point(t_adtf.gps_lon, t_adtf.gps_lat), 
 	st_point(gps_s17.lon, gps_s17.lat)) 
 	AS s17_gps_dist_m,

ST_distance_sphere(
 	st_point(t_adtf.gps_lon, t_adtf.gps_lat), 
 	st_point(gps_s18.lon, gps_s18.lat)) 
 	AS s18_gps_dist_m,

ST_distance_sphere(
 	st_point(t_adtf.gps_lon, t_adtf.gps_lat), 
 	st_point(gps_s99.lon, gps_s99.lat)) 
 	AS s99_gps_dist_m

FROM
t_adtf LEFT JOIN t_adtf_dist ON t_adtf.rnr = t_adtf_dist.rnr,
(	SELECT sxx, lat, lon FROM t_gpsref WHERE sxx = 1) gps_s01,
(	SELECT sxx, lat, lon FROM t_gpsref WHERE sxx = 2) gps_s02,
(	SELECT sxx, lat, lon FROM t_gpsref WHERE sxx = 3) gps_s03,
(	SELECT sxx, lat, lon FROM t_gpsref WHERE sxx = 4) gps_s04,
(	SELECT sxx, lat, lon FROM t_gpsref WHERE sxx = 5) gps_s05,
( SELECT sxx, lat, lon FROM t_gpsref WHERE sxx = 6) gps_s06,
(	SELECT sxx, lat, lon FROM t_gpsref WHERE sxx = 7) gps_s07,
(	SELECT sxx, lat, lon FROM t_gpsref WHERE sxx = 8) gps_s08,
(	SELECT sxx, lat, lon FROM t_gpsref WHERE sxx = 9) gps_s09,
(	SELECT sxx, lat, lon FROM t_gpsref WHERE sxx = 10) gps_s10,
(	SELECT sxx, lat, lon FROM t_gpsref WHERE sxx = 11) gps_s11,
(	SELECT sxx, lat, lon FROM t_gpsref WHERE sxx = 12) gps_s12,
(	SELECT sxx, lat, lon FROM t_gpsref WHERE sxx = 13) gps_s13,
(	SELECT sxx, lat, lon FROM t_gpsref WHERE sxx = 14) gps_s14,
(	SELECT sxx, lat, lon FROM t_gpsref WHERE sxx = 15) gps_s15,
(	SELECT sxx, lat, lon FROM t_gpsref WHERE sxx = 16) gps_s16,
(	SELECT sxx, lat, lon FROM t_gpsref WHERE sxx = 17) gps_s17,
(	SELECT sxx, lat, lon FROM t_gpsref WHERE sxx = 18) gps_s18,
(	SELECT sxx, lat, lon FROM t_gpsref WHERE sxx = 99) gps_s99

ORDER BY 
t_adtf.rnr