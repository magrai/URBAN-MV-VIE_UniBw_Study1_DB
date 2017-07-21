DROP TABLE IF EXISTS t_adtf CASCADE;
CREATE TABLE t_adtf AS
--------------------------------------------------------------------------------
SELECT 
-- Row numbers for complete table
ROW_NUMBER() OVER (ORDER BY subject_id, "Time"::NUMERIC) AS rnr,
subject_id,
--------------------------------------------------------------------------------
"Time"										::NUMERIC AS time_s, 
"ESP_v_Signal"						::NUMERIC AS speed_kmh, 
"ESP_Querbeschleunigung"	::NUMERIC AS acclat_ms2, 
"ESP_Laengsbeschl"				::NUMERIC AS acclon_ms2, 
"ESP_Gierrate"						::NUMERIC AS yawrate_degs, 
"ESP_Bremsdruck"					::NUMERIC AS brakepress_bar,
"ESP_Status_Bremsdruck"		::NUMERIC AS brakepress_status, 
"LWI_Lenkradwinkel"				::NUMERIC AS steerangle_deg, 
"LWI_Lenkradw_Geschw"			::NUMERIC AS steerangle_degs,
"OBD_Abs_Pedal_Pos"				::NUMERIC AS accpedalpos_perc, 
 "WBA_Fahrstufe"					::NUMERIC AS wba_fahrstufe,
--------------------------------------------------------------------------------
-- Recoding indicator variables to a single variable
CASE
	WHEN "BH_Blinker_li"::NUMERIC = 1 THEN 1
	WHEN "BH_Blinker_re"::NUMERIC = 1 THEN -1
	ELSE (0)
	END AS ind, 
-------------------------------------------------------------------------------- 
"LDW_Seite_DLCTLC"				::NUMERIC AS ldw_side, 
"LDW_TLC"									::NUMERIC AS ldw_tlc_s,
"LDW_DLC"									::NUMERIC AS ldw_dlc_m, 
"PSD_Pos_Segmentlaenge"		::NUMERIC AS psd_seqlength_m, 
"PSD_Strassenklasse"			::NUMERIC AS psd_roadtype, 
"PSD_Fahrspuren"					::NUMERIC AS psd_lanes_n, 
--------------------------------------------------------------------------------
-- Correct decimal places from gps signals
latitude::numeric/ (100000000000000::bigint)	::NUMERIC AS gps_lat, 
longitude::numeric/ (100000000000000::bigint)	::NUMERIC AS gps_lon,
--------------------------------------------------------------------------------
height										::NUMERIC AS gps_height, 
latitude_deviation				::NUMERIC AS gps_lat_dev, 
longitude_deviation				::NUMERIC AS gps_lon_dev, 
height_deviation					::NUMERIC AS gps_height_dev,
position_type							::NUMERIC AS gps_correct_type,
solution_status						::NUMERIC AS gps_ressginal, 
differential_age					::NUMERIC AS gps_correct_age, 
gps_week									::NUMERIC AS gps_time_week, 
gps_ms										::NUMERIC AS gps_time_ms
--------------------------------------------------------------------------------
-- Row number for each subject
-- ROW_NUMBER() OVER (PARTITION BY subject_id ORDER BY subject_id, "Time"::NUMERIC) 
	-- AS rnr_subject,
--gps_trigger_id::NUMERIC AS trigger_id, 
-- Row number for each trigger ID
-- must be revised after correction (Update: Trigger id only needed for round assignment)
--ROW_NUMBER() OVER 
	--(PARTITION BY subject_id, gps_trigger_id
	--ORDER BY subject_id, "Time"::NUMERIC) AS rnr_trigger,
--------------------------------------------------------------------------------
FROM 
v_adtf_union
--------------------------------------------------------------------------------
-- For testing purpose
--WHERE subject_id <= 2