CREATE TABLE "Blickdaten_GESAMT" AS


SELECT

--Zeilennummerierung für gesamten Tabelle
ROW_NUMBER() OVER 
	(ORDER BY "01_Blickdaten_GESAMT"."Vp"::NUMERIC, "01_Blickdaten_GESAMT"."Time"::NUMERIC) AS "ZNr",

"public"."01_Blickdaten_GESAMT"."Vp"::NUMERIC AS "Vp",

--Zeilennummerierung für jede Versuchsperson
ROW_NUMBER() OVER 
	(PARTITION BY "01_Blickdaten_GESAMT"."Vp"::NUMERIC 
	ORDER BY "01_Blickdaten_GESAMT"."Vp"::NUMERIC, "01_Blickdaten_GESAMT"."Time"::NUMERIC) AS "ZNr_Vp",

"public"."01_Blickdaten_GESAMT"."Time"::NUMERIC AS "Zeit_s",
"public"."01_Blickdaten_GESAMT"."tSystemData/bFaceFound"::NUMERIC,
"public"."01_Blickdaten_GESAMT"."vFaceRectTL/Value1"::NUMERIC,
"public"."01_Blickdaten_GESAMT"."vFaceRectTL/Value2"::NUMERIC,
"public"."01_Blickdaten_GESAMT"."vFaceRectSize/Value1"::NUMERIC,
"public"."01_Blickdaten_GESAMT"."vFaceRectSize/Value2"::NUMERIC,
"public"."01_Blickdaten_GESAMT"."eState"::NUMERIC,
"public"."01_Blickdaten_GESAMT"."tSystemData/fFrameRate"::NUMERIC,
"public"."01_Blickdaten_GESAMT"."tSystemData/fTimeStamp"::NUMERIC,
"public"."01_Blickdaten_GESAMT"."tSystemData/fConfidence"::NUMERIC,
"public"."01_Blickdaten_GESAMT"."tSystemData/nFrameNumber"::NUMERIC,
"public"."01_Blickdaten_GESAMT"."headPoseData/bValid"::NUMERIC,
"public"."01_Blickdaten_GESAMT"."headPoseData/vPosition/Value1"::NUMERIC,
"public"."01_Blickdaten_GESAMT"."headPoseData/vPosition/Value2"::NUMERIC,
"public"."01_Blickdaten_GESAMT"."headPoseData/vPosition/Value3"::NUMERIC,
"public"."01_Blickdaten_GESAMT"."headPoseData/vPositionDeriv1/Value1"::NUMERIC,
"public"."01_Blickdaten_GESAMT"."headPoseData/vPositionDeriv1/Value2"::NUMERIC,
"public"."01_Blickdaten_GESAMT"."headPoseData/vPositionDeriv1/Value3"::NUMERIC,
"public"."01_Blickdaten_GESAMT"."headPoseData/vPositionDeriv2/Value1"::NUMERIC,
"public"."01_Blickdaten_GESAMT"."headPoseData/vPositionDeriv2/Value2"::NUMERIC,
"public"."01_Blickdaten_GESAMT"."headPoseData/vPositionDeriv2/Value3"::NUMERIC,
"public"."01_Blickdaten_GESAMT"."headPoseData/vRotation/Value1"::NUMERIC,
"public"."01_Blickdaten_GESAMT"."headPoseData/vRotation/Value2"::NUMERIC,
"public"."01_Blickdaten_GESAMT"."headPoseData/vRotation/Value3"::NUMERIC,
"public"."01_Blickdaten_GESAMT"."headPoseData/fRotationDeriv1"::NUMERIC,
"public"."01_Blickdaten_GESAMT"."headPoseData/fRotationDeriv2"::NUMERIC,
"public"."01_Blickdaten_GESAMT"."headPoseData/nClassLabel"::NUMERIC,
"public"."01_Blickdaten_GESAMT"."eyeBlinkData/bValid"::NUMERIC,
"public"."01_Blickdaten_GESAMT"."eyeBlinkData/fEyeOpening"::NUMERIC,
"public"."01_Blickdaten_GESAMT"."eyeBlinkData/fEyeOpeningDeriv1"::NUMERIC,
"public"."01_Blickdaten_GESAMT"."eyeBlinkData/fEyeOpeningDeriv2"::NUMERIC,
"public"."01_Blickdaten_GESAMT"."eyeBlinkData/bBlinked"::NUMERIC,
"public"."01_Blickdaten_GESAMT"."eyeBlinkData/nBlinksPerMinute"::NUMERIC,
"public"."01_Blickdaten_GESAMT"."eyeBlinkData/fBlinkDuration"::NUMERIC,
"public"."01_Blickdaten_GESAMT"."eyeBlinkData/fBlinkBaseline"::NUMERIC,
"public"."01_Blickdaten_GESAMT"."eyeBlinkData/fBelowBaseline"::NUMERIC,
"public"."01_Blickdaten_GESAMT"."eyeBlinkData/vEyePositionL/Value1"::NUMERIC,
"public"."01_Blickdaten_GESAMT"."eyeBlinkData/vEyePositionL/Value2"::NUMERIC,
"public"."01_Blickdaten_GESAMT"."eyeBlinkData/vEyePositionR/Value1"::NUMERIC,
"public"."01_Blickdaten_GESAMT"."eyeBlinkData/vEyePositionR/Value2"::NUMERIC,
"public"."01_Blickdaten_GESAMT"."heartRateData/bValid"::NUMERIC,
"public"."01_Blickdaten_GESAMT"."heartRateData/fReliability"::NUMERIC,
"public"."01_Blickdaten_GESAMT"."heartRateData/fBeatsPerMin"::NUMERIC
FROM
"public"."01_Blickdaten_GESAMT"


ORDER BY
"public"."01_Blickdaten_GESAMT"."Vp", 
"public"."01_Blickdaten_GESAMT"."Time"
