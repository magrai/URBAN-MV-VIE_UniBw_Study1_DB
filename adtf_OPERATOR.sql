DO
$do$
DECLARE 
	s INT;
	gpsref_nr INT[];
BEGIN
	SELECT DISTINCT array_agg(sxx ORDER BY sxx) FROM t_gpsref INTO gpsref_nr;
	-- For manual situation selection use following line
	SELECT array_agg(24) INTO gpsref_nr;
	FOREACH s IN ARRAY gpsref_nr LOOP
		RAISE INFO 'Processing situation %', s;
		PERFORM f_t_adtf_dist2gpsref_sxx(s); -- Compute distance between gps data and reference position
		PERFORM f_t_adtf_dist2gpsref_sxx_min(s); -- Find minimum gps distance
		PERFORM f_t_adtf_dist2sxx_sxx(s); -- Compute driven distance or time until reaching the gps reference position
		PERFORM f_t_adtf_dist2sxx_min(s); -- Find minimum driven distance or time when reaching the minimum distance to the gps reference position
		PERFORM f_t_adtf_dist2sxx_dist_s_rnd1(s); -- Aggregate to 10 Hz distance (and minimise time)
		PERFORM f_t_adtf_dist2sxx_dist_m_rnd1(s); -- Aggregate to 10 Hz time (and minimise distance)
		PERFORM f_t_adtf_full_sxx(s); -- Join non-aggregated arrival measures with vehicle data and round names
		PERFORM f_t_adtf_dist_m_rnd1_full_sxx(s); -- Join distance-aggregated arrival measures with vehicle data and round names
		PERFORM f_t_adtf_dist_s_rnd1_full_sxx(s); -- Join time-aggregated arrival measures with vehicle data and round names
	END LOOP;
END $do$;