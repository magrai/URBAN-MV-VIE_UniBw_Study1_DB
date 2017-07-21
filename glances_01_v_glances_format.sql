DROP VIEW v_glance_format CASCADE;
CREATE OR REPLACE VIEW v_glance_format AS

SELECT 
substr("t_glance_import"."Datei", 3, 2)::numeric as subid,
"t_glance_import"."Anfangszeit - msec"::numeric / 1000 as glance_time_s_start,
"t_glance_import"."Endzeit - msec"::numeric / 1000 as glance_time_s_end,
"t_glance_import"."Blickrichtung"::numeric AS glance_dir,
CASE 
	WHEN "t_glance_import"."Blickrichtung"::numeric = 0 THEN 'undefined'
	WHEN "t_glance_import"."Blickrichtung"::numeric = 1 THEN 'ahead'
	WHEN "t_glance_import"."Blickrichtung"::numeric = 2 THEN 'instr'
	WHEN "t_glance_import"."Blickrichtung"::numeric = 3 THEN 'rear'
	WHEN "t_glance_import"."Blickrichtung"::numeric = 4 THEN 'left_window'
	WHEN "t_glance_import"."Blickrichtung"::numeric = 5 THEN 'left_mirror'
	WHEN "t_glance_import"."Blickrichtung"::numeric = 6 THEN 'right_window'
	WHEN "t_glance_import"."Blickrichtung"::numeric = 7 THEN 'right_mirror'
END AS glance_dir_txt,
--
CASE 
	WHEN "t_glance_import"."Blickrichtung"::numeric = 0 THEN 0
	WHEN "t_glance_import"."Blickrichtung"::numeric = 1 THEN 1
	WHEN "t_glance_import"."Blickrichtung"::numeric = 2 THEN 2
	WHEN "t_glance_import"."Blickrichtung"::numeric = 3 THEN 3
	WHEN "t_glance_import"."Blickrichtung"::numeric = 4 THEN 4
	WHEN "t_glance_import"."Blickrichtung"::numeric = 5 THEN 4
	WHEN "t_glance_import"."Blickrichtung"::numeric = 6 THEN 6
	WHEN "t_glance_import"."Blickrichtung"::numeric = 7 THEN 6
END AS glance_dir_v2,
CASE 
	WHEN "t_glance_import"."Blickrichtung"::numeric = 0 THEN 'undefined'
	WHEN "t_glance_import"."Blickrichtung"::numeric = 1 THEN 'ahead'
	WHEN "t_glance_import"."Blickrichtung"::numeric = 2 THEN 'other'
	WHEN "t_glance_import"."Blickrichtung"::numeric = 3 THEN 'rear'
	WHEN "t_glance_import"."Blickrichtung"::numeric = 4 THEN 'left'
	WHEN "t_glance_import"."Blickrichtung"::numeric = 5 THEN 'left'
	WHEN "t_glance_import"."Blickrichtung"::numeric = 6 THEN 'right'
	WHEN "t_glance_import"."Blickrichtung"::numeric = 7 THEN 'right'
END AS glance_dir_v2_txt,
"t_glance_import"."Endzeit - msec"::numeric / 1000 - "t_glance_import"."Anfangszeit - msec"::numeric / 1000 as glance_dur_s,
sum("t_glance_import"."Endzeit - msec"::numeric / 1000 - "t_glance_import"."Anfangszeit - msec"::numeric / 1000) OVER (PARTITION BY "t_glance_import"."Datei", "t_glance_import"."Blickrichtung" ORDER BY "t_glance_import"."Datei", "t_glance_import"."Anfangszeit - msec") as glance_dur_s_dir_cum,
row_number() OVER (PARTITION BY "t_glance_import"."Datei" ORDER BY "t_glance_import"."Datei", "t_glance_import"."Anfangszeit - msec") as glance_nr,
row_number() OVER (PARTITION BY "t_glance_import"."Datei", "t_glance_import"."Blickrichtung" ORDER BY "t_glance_import"."Datei", "t_glance_import"."Anfangszeit - msec") as glance_nr_dir

FROM "t_glance_import"

ORDER BY
substr("t_glance_import"."Datei", 3, 2)::numeric, 
"t_glance_import"."Anfangszeit - msec"::numeric / 1000;