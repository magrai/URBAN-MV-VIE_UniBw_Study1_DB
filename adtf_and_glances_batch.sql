-- Study 1 Batch processing
-- Batch computing for all GPS-Coordinates given in t_gps_reference_positions
--------------------------------------------------------------------------------
DO
$do$
--------------------------------------------------------------------------------
DECLARE 
pos_id INT;
-- position_ids INT[];
-- position_ids INT[] := array[18];
position_ids INT[] := array[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13,14,15,16,17,18];
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
	PERFORM f_v_adtf_and_glances_pxx_full(pos_id); 
	PERFORM f_v_adtf_and_glances_pxx_full_aggr_dti_rnd1(pos_id); 
	PERFORM f_v_adtf_and_glances_pxx_full_aggr_tti_rnd1(pos_id); 
END LOOP;
--------------------------------------------------------------------------------
END $do$;