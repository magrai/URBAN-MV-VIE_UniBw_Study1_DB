DROP VIEW IF EXISTS v_glances_format CASCADE;
CREATE OR REPLACE VIEW v_glances_format AS

SELECT 
substr("Datei", 3, 2)::NUMERIC AS subject_id,
"Anfangszeit - msec"::NUMERIC / 1000 AS glance_time_s_start,
"Endzeit - msec"::NUMERIC / 1000 AS glance_time_s_end,
"Blickrichtung"::NUMERIC AS glance_dir_level,

CASE 
	WHEN "Blickrichtung"::NUMERIC = 0 THEN 'undefined'
	WHEN "Blickrichtung"::NUMERIC = 1 THEN 'ahead'
	WHEN "Blickrichtung"::NUMERIC = 2 THEN 'other'
	WHEN "Blickrichtung"::NUMERIC = 3 THEN 'rear mirror'
	WHEN "Blickrichtung"::NUMERIC = 4 THEN 'left window'
	WHEN "Blickrichtung"::NUMERIC = 5 THEN 'left mirror'
	WHEN "Blickrichtung"::NUMERIC = 6 THEN 'right window'
	WHEN "Blickrichtung"::NUMERIC = 7 THEN 'right mirror'
END AS glance_dir_label,

-- Gather glances into left and right mirror into categories of left and right side
CASE 
	WHEN "Blickrichtung"::NUMERIC = 0 THEN 0
	WHEN "Blickrichtung"::NUMERIC = 1 THEN 1
	WHEN "Blickrichtung"::NUMERIC = 2 THEN 2
	WHEN "Blickrichtung"::NUMERIC = 3 THEN 3
	WHEN "Blickrichtung"::NUMERIC = 4 THEN 4
	WHEN "Blickrichtung"::NUMERIC = 5 THEN 4
	WHEN "Blickrichtung"::NUMERIC = 6 THEN 6
	WHEN "Blickrichtung"::NUMERIC = 7 THEN 6
END AS glance_dir_level_v2,
CASE 
	WHEN "Blickrichtung"::NUMERIC = 0 THEN 'undefined'
	WHEN "Blickrichtung"::NUMERIC = 1 THEN 'ahead'
	WHEN "Blickrichtung"::NUMERIC = 2 THEN 'other'
	WHEN "Blickrichtung"::NUMERIC = 3 THEN 'rear'
	WHEN "Blickrichtung"::NUMERIC = 4 THEN 'left'
	WHEN "Blickrichtung"::NUMERIC = 5 THEN 'left'
	WHEN "Blickrichtung"::NUMERIC = 6 THEN 'right'
	WHEN "Blickrichtung"::NUMERIC = 7 THEN 'right'
END AS glance_dir_label_v2,

-- Glance duration in seconds
"Endzeit - msec"::NUMERIC / 1000 - 
"Anfangszeit - msec"::NUMERIC / 1000 
AS glance_dur_s,

-- Cumulated glance duration in seconds
sum("Endzeit - msec"::NUMERIC / 1000 - "Anfangszeit - msec"::NUMERIC / 1000) 
	OVER (
		PARTITION BY "Datei", "Blickrichtung" 
		ORDER BY "Datei", "Anfangszeit - msec"
) AS glance_dur_s_dir_cum,

ROW_NUMBER() OVER (
	PARTITION BY "Datei" 
	ORDER BY "Datei", "Anfangszeit - msec") 
AS glance_nr,

ROW_NUMBER() OVER (
	PARTITION BY "Datei", "Blickrichtung" 
	ORDER BY "Datei", "Anfangszeit - msec") 
AS glance_nr_dir

FROM t_glance_import

ORDER BY
SUBSTR("Datei", 3, 2)::NUMERIC, -- subject_id
"Anfangszeit - msec"::NUMERIC / 1000