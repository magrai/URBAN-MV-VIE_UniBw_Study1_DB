-- Study 1 Batch processing
-- Batch computing for all GPS-Coordinates given in t_gps_reference_positions
--------------------------------------------------------------------------------
DO
$do$
--------------------------------------------------------------------------------
DECLARE 
pos_id INT;
-- position_ids INT[];
-- position_ids INT[] := array[1, 2, 3, 4];
-- position_ids INT[] := array[5, 6, 7, 8];
-- position_ids INT[] := array[9, 10, 11, 12];
-- position_ids INT[] := array[13, 14, 15, 16];
position_ids INT[] := array[18];
-- position_ids INT[] := array[17, 18];
-- position_ids INT[] := array[21, 22, 23, 24];
-- position_ids INT[] := array[99];
-- position_ids INT[] := array[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13,14,15,16,17,18];
-- position_ids INT[] := array[4];
--------------------------------------------------------------------------------
BEGIN
--------------------------------------------------------------------------------
-- Comment this part when using pre-declared array
-- SELECT 
-- DISTINCT ARRAY_AGG(position_id ORDER BY position_id) 
-- FROM t_gps_reference_positions 
-- INTO position_ids;
--------------------------------------------------------------------------------
-- For manual situation selection use following line
-- SELECT array_agg(4) INTO position_ids;
--------------------------------------------------------------------------------
FOREACH pos_id IN ARRAY position_ids LOOP
	RAISE INFO 'Processing situation %', pos_id;
	
	-- Compute distance between gps data and reference position
	PERFORM f_t_adtf_pxx_gps_dist(pos_id); 
	
	-- Find minimum gps distance
	PERFORM f_t_adtf_pxx_gps_dist_min(pos_id);
	
	-- Compute driven distance or time until reaching the gps reference position
	PERFORM f_t_adtf_pxx_am(pos_id); 
	 
	-- Find minimum driven distance or time when reaching the minimum distance to the gps reference position
	-- !!! PERFORM f_t_adtf_dist2sxx_min(pos_id); 
	 
	-- Aggregate to 10 Hz time (and minimise distance)
	PERFORM f_t_adtf_pxx_am_dti_rnd1(pos_id); 
	
	-- Aggregate to 10 Hz distance (and minimise time)
	PERFORM f_t_adtf_pxx_am_tti_rnd1(pos_id); 
	
	-- Join non-aggregated arrival measures with vehicle data and round names
	PERFORM f_t_adtf_pxx_full(pos_id); 
	
	-- Join distance-aggregated arrival measures with vehicle data and round names
	PERFORM f_t_adtf_pxx_full_dti_rnd1(pos_id); 
	
	-- Join time-aggregated arrival measures with vehicle data and round names
	PERFORM f_t_adtf_pxx_full_tti_rnd1(pos_id); 
END LOOP;
--------------------------------------------------------------------------------
END $do$;