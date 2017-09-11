DROP TABLE IF EXISTS t_adtf_formatted CASCADE;
CREATE TABLE t_adtf_formatted AS
--------------------------------------------------------------------------------
SELECT 
-- Row numbers for complete table
ROW_NUMBER() 
	OVER (ORDER BY subject_id, "Time"::NUMERIC) 
	AS row_nr,
subject_id,
--------------------------------------------------------------------------------
"Time"										::NUMERIC AS time_s, 
"ESP_v_Signal"						::NUMERIC AS speed_kmh, 
"ESP_v_Signal" 						::NUMERIC / 3.6 AS speed_ms, 
"ESP_Querbeschleunigung"	::NUMERIC AS acc_lat_ms2, 
"ESP_Laengsbeschl"				::NUMERIC AS acc_lon_ms2, 
"ESP_Bremsdruck"					::NUMERIC AS brake_press_bar,
"ESP_Status_Bremsdruck"		::NUMERIC AS brake_status, 
"OBD_Abs_Pedal_Pos"				::NUMERIC AS acc_pedal_pos_perc, 
"LWI_Lenkradwinkel"				::NUMERIC AS steer_angle_deg, 
"LWI_Lenkradw_Geschw"			::NUMERIC AS steer_angle_degs,
"ESP_Gierrate"						::NUMERIC AS yaw_rate_degs,
--------------------------------------------------------------------------------
-- Recoding indicator variables to a single variable
CASE 
	WHEN "BH_Blinker_li"::NUMERIC = 1 
	THEN 1
	WHEN "BH_Blinker_re"::NUMERIC = 1 
	THEN -1
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
FROM 
v_adtf_union
--------------------------------------------------------------------------------
ORDER BY
v_adtf_union.subject_id::NUMERIC,
v_adtf_union."Time"::NUMERIC