 SELECT min("03_CAN_TriggerID_DiffCheck"."ZNr") AS "ZNr", 
    min("03_CAN_TriggerID_DiffCheck"."ZNr_Vp") AS "ZNr_Vp", 
    min("03_CAN_TriggerID_DiffCheck"."Vp") AS "Vp", 
    min("03_CAN_TriggerID_DiffCheck"."Zeit_s") AS "Zeit_s", 
    min("03_CAN_TriggerID_DiffCheck"."GPS_TriggerID") AS "GPS_TriggerID", 
    min("03_CAN_TriggerID_DiffCheck"."GPS_TriggerID_neu") AS "GPS_TriggerID_neu", 
    min("03_CAN_TriggerID_DiffCheck"."DiffCheck_Erste") AS "DiffCheck_Erste", 
    count("03_CAN_TriggerID_DiffCheck"."GPS_TriggerID_neu") AS "AnzahlRunden"
   FROM "03_CAN_TriggerID_DiffCheck"
  WHERE ("03_CAN_TriggerID_DiffCheck"."DiffCheck_Erste" = ((-35))::numeric)
  GROUP BY "03_CAN_TriggerID_DiffCheck"."Vp"
  ORDER BY "03_CAN_TriggerID_DiffCheck"."Vp";