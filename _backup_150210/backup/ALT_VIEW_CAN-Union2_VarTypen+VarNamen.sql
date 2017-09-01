--alt?

CREATE TABLE "CAN_Union2_VarTypen+VarNamen" AS

 SELECT ("CAN_Union1"."VP")::INTEGER AS "Vp", 
    "CAN_Union1"."Datei"::VARCHAR, 
    ("CAN_Union1"."Time")::NUMERIC AS "Zeit_ms", 
    "CAN_Union1"."ESP_v_Signal"::NUMERIC AS "Geschw_kmh", 
    "CAN_Union1"."ESP_Querbeschleunigung"::NUMERIC AS "QuerB_ms2", 
    "CAN_Union1"."ESP_Laengsbeschl"::NUMERIC AS "LaengsB_ms2", 
    "CAN_Union1"."ESP_Gierrate"::NUMERIC AS "Gierrate_Grad", 
    "CAN_Union1"."ESP_Bremsdruck"::NUMERIC AS "Bremsdruck_bar", 
    "CAN_Union1"."ESP_Status_Bremsdruck"::INTEGER AS "Bremsdruck_Status", 
    "CAN_Union1"."LWI_Lenkradwinkel"::NUMERIC AS "LWI_Grad", 
    "CAN_Union1"."LWI_Lenkradw_Geschw"::NUMERIC AS "LW_Geschw", 
    "CAN_Union1"."OBD_Abs_Pedal_Pos"::NUMERIC AS "PedalPos_Prozent", 
    --"CAN_Union1"."BH_Blinker_li"::INTEGER AS "Blinker_links", 
    --"CAN_Union1"."BH_Blinker_re"::INTEGER AS "Blinker_rechts", 
    --"CAN_Union1"."LDW_Seite_DLCTLC"::INTEGER AS "LDW_Seite", 
    "CAN_Union1"."LDW_TLC"::NUMERIC AS "LDW_TLC_s", 
    "CAN_Union1"."LDW_DLC"::NUMERIC AS "LDW_DLC_m", 
		"CAN_Union1"."PSD_Pos_Segmentlaenge"::NUMERIC AS "KreuzungAbstand_m", 
    --"CAN_Union1"."PSD_Strassenklasse"::INTEGER AS "StrTyp", 
    "CAN_Union1"."PSD_Fahrspuren"::INTEGER AS "FahrspurenAnzahl", 
    "CAN_Union1".position_type AS "DGPS_Korrekturtyp",
    "CAN_Union1".solution_status AS "DGPS_Aufloesungssignal", 
    "CAN_Union1".differential_age AS "DGPS_KorrekturAlter", 
    "CAN_Union1".gps_week AS "DGPS_Zeit_Woche", 
    "CAN_Union1".gps_ms AS "DGPS_Zeit_ms", 
    "CAN_Union1".latitude AS "GPS_latitude", 
		"CAN_Union1".latitude_deviation AS "GPS_latitude_dev", 
    "CAN_Union1".longitude AS "GPS_longitude", 
		"CAN_Union1".longitude_deviation AS "GPS_longitude_dev", 
    "CAN_Union1".height AS "GPS_height", 
    "CAN_Union1".height_deviation AS "GPS_height_dev" , 
    ("CAN_Union1".gps_trigger_id::NUMERIC) AS "GPS_TriggerID", 
    "CAN_Union1"."Xbee868CurrentState"::NUMERIC, 
    "CAN_Union1"."XBee868CurrentMode"::NUMERIC
   FROM "CAN_Union1";