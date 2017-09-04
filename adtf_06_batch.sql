-- Study 1 Batch processing
-- Batch computing for all GPS-Coordinates given in t_gps_reference_positions
--------------------------------------------------------------------------------
DO
$do$
--------------------------------------------------------------------------------
DECLARE 
pos_id INT;
position_ids INT[];
-- position_ids INT[] := array[5, 6];
--------------------------------------------------------------------------------
BEGIN
--------------------------------------------------------------------------------
SELECT 
DISTINCT ARRAY_AGG(position_id ORDER BY position_id) 
FROM t_gps_reference_positions 
INTO position_ids;
--------------------------------------------------------------------------------
-- For manual situation selection use following line
-- SELECT array_agg(4) INTO position_ids;
--------------------------------------------------------------------------------
FOREACH pos_id IN ARRAY position_ids LOOP
	RAISE INFO 'Processing situation %', pos_id;
	-- Compute distance between gps data and reference position
	PERFORM f_t_adtf_pxx_dist_gps(pos_id); 
	-- Find minimum gps distance
	PERFORM f_t_adtf_pxx_dist_gps_min(pos_id);
	-- Compute driven distance or time until reaching the gps reference position
	PERFORM f_t_adtf_pxx_dist(pos_id); 
	-- 
	-- Find minimum driven distance or time when reaching the minimum distance to the gps reference position
	-- PERFORM f_t_adtf_dist2sxx_min(pos_id); 
	-- 
	-- Aggregate to 10 Hz distance (and minimise time)
	PERFORM f_t_adtf_pxx_dist_s_rnd1(pos_id); 
	-- Aggregate to 10 Hz time (and minimise distance)
	PERFORM f_t_adtf_pxx_dist_m_rnd1(pos_id); 
	-- Join non-aggregated arrival measures with vehicle data and round names
	PERFORM f_t_adtf_pxx_full(pos_id); 
	-- Join time-aggregated arrival measures with vehicle data and round names
	PERFORM f_t_adtf_pxx_full_dist_s_rnd1(pos_id); 
	-- Join distance-aggregated arrival measures with vehicle data and round names
	PERFORM f_t_adtf_pxx_full_dist_m_rnd1(pos_id); 
END LOOP;
--------------------------------------------------------------------------------
END $do$;