-- Compute distance between gps data and reference gps points
--------------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION f_t_adtf_pxx_dist_gps (pos_id INT DEFAULT NULL) 
RETURNS VOID
LANGUAGE plpgsql AS $$
--------------------------------------------------------------------------------
DECLARE pos_id_txt TEXT = LPAD(pos_id::text, 2, '0');
--------------------------------------------------------------------------------
BEGIN
RAISE INFO '==================================================';
RAISE INFO 'Processing f_t_adtf_pxx_dist_gps';
RAISE INFO 'GPS reference position %', pos_id;
RAISE INFO '==================================================';
--------------------------------------------------------------------------------
EXECUTE '
--------------------------------------------------------------------------------
DROP TABLE IF EXISTS t_adtf_p' || pos_id_txt || '_dist_gps CASCADE;
CREATE TABLE t_adtf_p' || pos_id_txt || '_dist_gps AS
--------------------------------------------------------------------------------

		SELECT
		t_adtf_formatted.row_nr,
		t_adtf_formatted.subject_id,
		t_adtf_driven_dist_cum.round_id,
		t_adtf_driven_dist_cum.round_helper1,
		t_adtf_driven_dist_cum.round_helper2,
		t_adtf_driven_dist_cum.time_s,
		t_adtf_driven_dist_cum.dist_m,
		t_adtf_formatted.gps_lat,
		t_adtf_formatted.gps_lon,

		ST_DistanceSphere(
			st_point(t_adtf_formatted.gps_lon, t_adtf_formatted.gps_lat), 
			st_point(gps_p' || pos_id_txt || '.gps_lon, gps_p' || pos_id_txt || '.gps_lat)) 
		AS p' ||  pos_id_txt || '_gps_dist_m

		FROM
		t_adtf_formatted 
		LEFT JOIN t_adtf_driven_dist_cum 
			ON t_adtf_formatted.row_nr = t_adtf_driven_dist_cum.row_nr,
		(
			SELECT 
			position_id, 
			gps_lat, 
			gps_lon 
			
			FROM 
			t_gps_reference_positions 
			
			WHERE 
			position_id = ' || pos_id || '
		) gps_p' || pos_id_txt || '
		
		ORDER BY
		row_nr
		';
END $$;



