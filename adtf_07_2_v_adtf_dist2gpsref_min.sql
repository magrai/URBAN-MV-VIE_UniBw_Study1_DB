DROP VIEW IF EXISTS v_adtf_dist2gpsref_min CASCADE;
CREATE VIEW v_adtf_dist2gpsref_min AS

SELECT
part1.rnr_min,
part3.rnr_max,
part1.subject_id,
part1.round_id,
part1.s01_gps_dist_m_min,
part1.s02_gps_dist_m_min,
part1.s03_gps_dist_m_min,
part1.s04_gps_dist_m_min,
part1.s05_gps_dist_m_min,
part1.s06_gps_dist_m_min,
part1.s07_gps_dist_m_min,
part1.s08_gps_dist_m_min,
part2.s09_gps_dist_m_min,
part2.s10_gps_dist_m_min,
part2.s11_gps_dist_m_min,
part3.s12_gps_dist_m_min,
part3.s13_gps_dist_m_min,
part3.s14_gps_dist_m_min,
part3.s15_gps_dist_m_min,
part3.s16_gps_dist_m_min,
part3.s17_gps_dist_m_min,
part3.s18_gps_dist_m_min,
part3.s99_gps_dist_m_min

FROM
--------------------------------------------------------------------------------
-- ... using helper1 = 1
( SELECT
	MIN(t_adtf_dist2gpsref.rnr) AS rnr_min,
	-- MAX(t_adtf_dist2gpsref.rnr) AS rnr_max,
	subject_id,
	round_id,
	MIN(s01_gps_dist_m) AS s01_gps_dist_m_min,
	MIN(s02_gps_dist_m) AS s02_gps_dist_m_min,
	MIN(s03_gps_dist_m) AS s03_gps_dist_m_min,
	MIN(s04_gps_dist_m) AS s04_gps_dist_m_min,
	MIN(s05_gps_dist_m) AS s05_gps_dist_m_min,
	MIN(s06_gps_dist_m) AS s06_gps_dist_m_min,
	MIN(s07_gps_dist_m) AS s07_gps_dist_m_min,
	MIN(s08_gps_dist_m) AS s08_gps_dist_m_min

	FROM
	t_adtf_dist2gpsref 

	WHERE 
	round_helper1 = 1

	GROUP BY
	subject_id,
	round_id
) part1,
--------------------------------------------------------------------------------
-- ... using helper2 = 1
( SELECT
	-- MIN(t_adtf_dist2gpsref.rnr) AS rnr_min,
	-- MAX(t_adtf_dist2gpsref.rnr) AS rnr_max,
	subject_id,
	round_id,
	MIN(s09_gps_dist_m) AS s09_gps_dist_m_min,
	MIN(s10_gps_dist_m) AS s10_gps_dist_m_min,
	MIN(s11_gps_dist_m) AS s11_gps_dist_m_min

	FROM
	t_adtf_dist2gpsref

	WHERE 
	round_helper2 = 1

	GROUP BY
	subject_id,
	round_id
) part2,
--------------------------------------------------------------------------------
-- ... using helper1 = 2
( SELECT
	-- MIN(t_adtf_dist2gpsref.rnr) AS rnr_min,
	MAX(t_adtf_dist2gpsref.rnr) AS rnr_max,
	subject_id,
	round_id,
	MIN(s12_gps_dist_m) AS s12_gps_dist_m_min,
	MIN(s13_gps_dist_m) AS s13_gps_dist_m_min,
	MIN(s14_gps_dist_m) AS s14_gps_dist_m_min,
	MIN(s15_gps_dist_m) AS s15_gps_dist_m_min,
	MIN(s16_gps_dist_m) AS s16_gps_dist_m_min,
	MIN(s17_gps_dist_m) AS s17_gps_dist_m_min,
	MIN(s18_gps_dist_m) AS s18_gps_dist_m_min,
	MIN(s99_gps_dist_m) AS s99_gps_dist_m_min

	FROM
	t_adtf_dist2gpsref

	WHERE 
	round_helper1 = 2

	GROUP BY
	subject_id,
	round_id
) part3

WHERE
part1.subject_id = part2.subject_id AND
part2.subject_id = part3.subject_id AND
part1.round_id = part2.round_id AND
part2.round_id = part3.round_id