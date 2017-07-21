DROP TABLE IF EXISTS t_can_format CASCADE;
CREATE TABLE t_can_format AS

SELECT 

--Zeilennummerierung für gesamten Tabelle
ROW_NUMBER() OVER (ORDER BY v_can_union."Vp"::NUMERIC, v_can_union."Time"::NUMERIC) AS rownr,

v_can_union."Vp"::NUMERIC AS subid, 

--Zeilennummerierung für jede Versuchsperson
ROW_NUMBER() OVER (PARTITION BY v_can_union."Vp"::NUMERIC 
	ORDER BY v_can_union."Vp"::NUMERIC, v_can_union."Time"::NUMERIC) 
	AS znr_vp,

v_can_union."Datei"::VARCHAR as name_data,
v_can_union."Time"::NUMERIC AS time_s, 
v_can_union."ESP_v_Signal"::NUMERIC AS speed_kmh, 
-- v_can_union."ESP_v_Signal"::NUMERIC - lag(v_can_union."ESP_v_Signal"::NUMERIC) 
-- 	over (partition by v_can_union."Vp"::NUMERIC order by v_can_union."Vp"::NUMERIC, v_can_union."Time"::NUMERIC) 
-- 	AS speed_kmh_diff,
v_can_union."ESP_Querbeschleunigung"::NUMERIC AS acclat_ms2, 
-- v_can_union."ESP_Querbeschleunigung"::NUMERIC - lag(v_can_union."ESP_Querbeschleunigung"::NUMERIC) 
-- 	over (partition by v_can_union."Vp"::NUMERIC order by v_can_union."Vp"::NUMERIC, v_can_union."Time"::NUMERIC) 
-- 	AS acclat_ms2_diff,
v_can_union."ESP_Laengsbeschl"::NUMERIC AS acclong_ms2, 
-- v_can_union."ESP_Laengsbeschl"::NUMERIC - lag(v_can_union."ESP_Laengsbeschl"::NUMERIC) 
-- 	over (partition by v_can_union."Vp"::NUMERIC order by v_can_union."Vp"::NUMERIC, v_can_union."Time"::NUMERIC) 
-- 	AS acclong_ms2_diff,
v_can_union."ESP_Gierrate"::NUMERIC AS yawrate_degs, 
-- v_can_union."ESP_Gierrate"::NUMERIC - lag(v_can_union."ESP_Gierrate"::NUMERIC) 
-- 	over (partition by v_can_union."Vp"::NUMERIC order by v_can_union."Vp"::NUMERIC, v_can_union."Time"::NUMERIC) 
-- 	AS yawrate_degs_diff,
v_can_union."ESP_Bremsdruck"::NUMERIC AS brakepress_bar,
-- v_can_union."ESP_Bremsdruck"::NUMERIC - lag(v_can_union."ESP_Bremsdruck"::NUMERIC) 
-- 	over (partition by v_can_union."Vp"::NUMERIC order by v_can_union."Vp"::NUMERIC, v_can_union."Time"::NUMERIC) 
-- 	AS brakepress_bar_diff, 
v_can_union."ESP_Status_Bremsdruck"::NUMERIC AS brakepress_status, 
v_can_union."LWI_Lenkradwinkel"::NUMERIC AS steerangle_deg, 
-- v_can_union."LWI_Lenkradwinkel"::NUMERIC - lag(v_can_union."LWI_Lenkradwinkel"::NUMERIC) 
-- 	over (partition by v_can_union."Vp"::NUMERIC order by v_can_union."Vp"::NUMERIC, v_can_union."Time"::NUMERIC) 
-- 	AS steerangle_deg_diff, 
v_can_union."LWI_Lenkradw_Geschw"::NUMERIC AS steerangle_speed,
-- v_can_union."LWI_Lenkradw_Geschw"::NUMERIC - lag(v_can_union."LWI_Lenkradw_Geschw"::NUMERIC) 
-- 	over (partition by v_can_union."Vp"::NUMERIC order by v_can_union."Vp"::NUMERIC, v_can_union."Time"::NUMERIC) 
-- 	AS steerangle_speed_diff,  
v_can_union."OBD_Abs_Pedal_Pos"::NUMERIC AS accpedalpos_perc, 
-- v_can_union."OBD_Abs_Pedal_Pos"::NUMERIC - lag(v_can_union."OBD_Abs_Pedal_Pos"::NUMERIC) 
-- 	over (partition by v_can_union."Vp"::NUMERIC order by v_can_union."Vp"::NUMERIC, v_can_union."Time"::NUMERIC) 
-- 	AS accpedalpos_perc_diff, 
v_can_union."WBA_Fahrstufe"::NUMERIC AS wba_fahrstufe,

-- save data space
--v_can_union."BH_Blinker_li"::NUMERIC AS ind_left, 
--v_can_union."BH_Blinker_re"::NUMERIC AS ind_right,

--Integration des Blinkerstatus links und rechts in einer neuen Variable
CASE
	WHEN v_can_union."BH_Blinker_li"::NUMERIC=1 THEN 1::NUMERIC
	WHEN v_can_union."BH_Blinker_re"::NUMERIC=1 THEN -1::NUMERIC
	ELSE (0)::NUMERIC
END AS ind,  

v_can_union."LDW_Seite_DLCTLC"::NUMERIC AS ldw_side, 
v_can_union."LDW_TLC"::NUMERIC AS ldw_tlc_s,
-- v_can_union."LDW_TLC"::NUMERIC - lag(v_can_union."LDW_TLC"::NUMERIC) 
-- 	over (partition by v_can_union."Vp"::NUMERIC order by v_can_union."Vp"::NUMERIC, v_can_union."Time"::NUMERIC) 
-- 	AS ldw_tlc_s_diff, 
v_can_union."LDW_DLC"::NUMERIC AS ldw_dlc_m, 
-- v_can_union."LDW_DLC"::NUMERIC - lag(v_can_union."LDW_DLC"::NUMERIC) 
-- 	over (partition by v_can_union."Vp"::NUMERIC order by v_can_union."Vp"::NUMERIC, v_can_union."Time"::NUMERIC) 
-- 	AS ldw_dlc_m_diff, 
v_can_union."PSD_Pos_Segmentlaenge"::NUMERIC AS dist_intersect_m, 
v_can_union."PSD_Strassenklasse"::NUMERIC AS road_type, 
v_can_union."PSD_Fahrspuren"::NUMERIC AS lanes_count, 
v_can_union.position_type::NUMERIC AS dgps_correct_type,
v_can_union.solution_status::NUMERIC AS dgps_ressginal, 
v_can_union.differential_age::NUMERIC AS dgps_correct_age, 
v_can_union.gps_week::NUMERIC AS dgps_time_week, 
v_can_union.gps_ms::NUMERIC AS dgps_time_ms, 
v_can_union.latitude::numeric/ (100000000000000::bigint)::NUMERIC AS gps_lat, 
v_can_union.latitude_deviation::NUMERIC AS gps_lat_dev, 
v_can_union.longitude::numeric/ (100000000000000::bigint)::NUMERIC AS gps_long, 
v_can_union.longitude_deviation::NUMERIC AS gps_long_dev, 
v_can_union.height::NUMERIC AS gps_height, 
v_can_union.height_deviation::NUMERIC AS gps_height_dev,

--Zeilennummerierung für jede TriggerID (muss nach Korrektur revidiert werden)
ROW_NUMBER() OVER 
	(PARTITION BY v_can_union."Vp"::NUMERIC, "public".v_can_union.gps_trigger_id
	ORDER BY v_can_union."Vp"::NUMERIC, v_can_union."Time"::NUMERIC) AS rownr_triggerid,

--Differenz der Zeilennummerierung der gesamten Tabelle und der Zeilennummerierung einer Trigger ID dieser Vp
--Zuweisung eines eindeutigen Codes einzelner Trigger-Sequenzen
ROW_NUMBER() OVER 
	(ORDER BY v_can_union."Vp"::NUMERIC, v_can_union."Time"::NUMERIC) -
ROW_NUMBER() OVER 
	(PARTITION BY v_can_union."Vp"::NUMERIC, "public".v_can_union.gps_trigger_id
	ORDER BY v_can_union."Vp"::NUMERIC, v_can_union."Time"::NUMERIC)
AS rownr_diff_vp_triggerid,

v_can_union.gps_trigger_id::NUMERIC AS triggerid, 

--Korrektur der Triggerdaten
f_hex2int((v_can_union.gps_trigger_id::NUMERIC)::INTEGER)::NUMERIC AS triggerid_v2
--v_can_union."Xbee868CurrentState"::NUMERIC as xbee868currentstate, 
--v_can_union."XBee868CurrentMode"::NUMERIC as xbee868currentmode
   
FROM v_can_union
----
----
----
--WHERE
--v_can_union."Vp"::numeric <= 3
----
----
----


ORDER BY
v_can_union."Vp"::NUMERIC,
v_can_union."Time"::NUMERIC
