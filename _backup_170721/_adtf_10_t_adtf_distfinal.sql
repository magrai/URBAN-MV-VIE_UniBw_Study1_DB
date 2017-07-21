DROP TABLE IF EXISTS t_adtf_distfinal CASCADE;
CREATE TABLE t_adtf_distfinal AS

SELECT
t_adtf_dist.rnr,
t_adtf_dist.subject_id,
t_adtf_dist.round_id,
t_adtf_dist.time_s,
t_adtf_dist.dist_m,
--
t_adtf_dist2sxx_s01.s01_dist_s,
t_adtf_dist2sxx_s02.s02_dist_s,
t_adtf_dist2sxx_s03.s03_dist_s,
t_adtf_dist2sxx_s04.s04_dist_s,
t_adtf_dist2sxx_s05.s05_dist_s,
t_adtf_dist2sxx_s06.s06_dist_s,
t_adtf_dist2sxx_s07.s07_dist_s,
t_adtf_dist2sxx_s08.s08_dist_s,
t_adtf_dist2sxx_s09.s09_dist_s,
t_adtf_dist2sxx_s10.s10_dist_s,
t_adtf_dist2sxx_s11.s11_dist_s,
t_adtf_dist2sxx_s12.s12_dist_s,
t_adtf_dist2sxx_s13.s13_dist_s,
t_adtf_dist2sxx_s14.s14_dist_s,
t_adtf_dist2sxx_s15.s15_dist_s,
t_adtf_dist2sxx_s16.s16_dist_s,
t_adtf_dist2sxx_s17.s17_dist_s,
t_adtf_dist2sxx_s18.s18_dist_s,
--t_adtf_dist2sxx_s99.s99_dist_s,

t_adtf_dist2sxx_s01.s01_dist_m,
t_adtf_dist2sxx_s02.s02_dist_m,
t_adtf_dist2sxx_s03.s03_dist_m,
t_adtf_dist2sxx_s04.s04_dist_m,
t_adtf_dist2sxx_s05.s05_dist_m,
t_adtf_dist2sxx_s06.s06_dist_m,
t_adtf_dist2sxx_s07.s07_dist_m,
t_adtf_dist2sxx_s08.s08_dist_m,
t_adtf_dist2sxx_s09.s09_dist_m,
t_adtf_dist2sxx_s10.s10_dist_m,
t_adtf_dist2sxx_s11.s11_dist_m,
t_adtf_dist2sxx_s12.s12_dist_m,
t_adtf_dist2sxx_s13.s13_dist_m,
t_adtf_dist2sxx_s14.s14_dist_m,
t_adtf_dist2sxx_s15.s15_dist_m,
t_adtf_dist2sxx_s16.s16_dist_m,
t_adtf_dist2sxx_s17.s17_dist_m,
t_adtf_dist2sxx_s18.s18_dist_m
--t_adtf_dist2sxx_s99.s99_dist_m

FROM
t_adtf_dist
LEFT OUTER JOIN t_adtf_dist2sxx_s01 ON t_adtf_dist.rnr = t_adtf_dist2sxx_s01.rnr
LEFT OUTER JOIN t_adtf_dist2sxx_s02 ON t_adtf_dist.rnr = t_adtf_dist2sxx_s02.rnr
LEFT OUTER JOIN t_adtf_dist2sxx_s03 ON t_adtf_dist.rnr = t_adtf_dist2sxx_s03.rnr
LEFT OUTER JOIN t_adtf_dist2sxx_s04 ON t_adtf_dist.rnr = t_adtf_dist2sxx_s04.rnr
LEFT OUTER JOIN t_adtf_dist2sxx_s05 ON t_adtf_dist.rnr = t_adtf_dist2sxx_s05.rnr
LEFT OUTER JOIN t_adtf_dist2sxx_s06 ON t_adtf_dist.rnr = t_adtf_dist2sxx_s06.rnr
LEFT OUTER JOIN t_adtf_dist2sxx_s07 ON t_adtf_dist.rnr = t_adtf_dist2sxx_s07.rnr
LEFT OUTER JOIN t_adtf_dist2sxx_s08 ON t_adtf_dist.rnr = t_adtf_dist2sxx_s08.rnr
LEFT OUTER JOIN t_adtf_dist2sxx_s09 ON t_adtf_dist.rnr = t_adtf_dist2sxx_s09.rnr
LEFT OUTER JOIN t_adtf_dist2sxx_s10 ON t_adtf_dist.rnr = t_adtf_dist2sxx_s10.rnr
LEFT OUTER JOIN t_adtf_dist2sxx_s11 ON t_adtf_dist.rnr = t_adtf_dist2sxx_s11.rnr
LEFT OUTER JOIN t_adtf_dist2sxx_s12 ON t_adtf_dist.rnr = t_adtf_dist2sxx_s12.rnr
LEFT OUTER JOIN t_adtf_dist2sxx_s13 ON t_adtf_dist.rnr = t_adtf_dist2sxx_s13.rnr
LEFT OUTER JOIN t_adtf_dist2sxx_s14 ON t_adtf_dist.rnr = t_adtf_dist2sxx_s14.rnr
LEFT OUTER JOIN t_adtf_dist2sxx_s15 ON t_adtf_dist.rnr = t_adtf_dist2sxx_s15.rnr
LEFT OUTER JOIN t_adtf_dist2sxx_s16 ON t_adtf_dist.rnr = t_adtf_dist2sxx_s16.rnr
LEFT OUTER JOIN t_adtf_dist2sxx_s17 ON t_adtf_dist.rnr = t_adtf_dist2sxx_s17.rnr
LEFT OUTER JOIN t_adtf_dist2sxx_s18 ON t_adtf_dist.rnr = t_adtf_dist2sxx_s18.rnr
--LEFT OUTER JOIN t_adtf_dist2sxx_s99 ON t_adtf_dist.rnr = t_adtf_dist2sxx_s99.rnr