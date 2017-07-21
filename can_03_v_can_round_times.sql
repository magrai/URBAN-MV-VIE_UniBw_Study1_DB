DROP VIEW IF EXISTS v_can_round_times;
CREATE OR REPLACE VIEW v_can_round_times AS 

SELECT *

FROM (

	SELECT
	t_can_format.rownr, 
	t_can_format.subid, 
	t_can_format.time_s, 
	CASE
		WHEN 
		t_can_format.time_s >= t_temp_rounds.runde_startzeit AND
		t_can_format.time_s <= t_temp_rounds.runde_endzeit
		THEN t_temp_rounds.runde
	END AS round,

	t_temp_rounds.runde_startzeit as round_time_s_start,
	t_temp_rounds.runde_endzeit as round_time_s_end

	FROM 
	t_can_format,

	( SELECT
		"public".t_triggerid_v3_zeiten.vp,
		"public".t_triggerid_v3_zeiten.runde,
		MIN("public".t_triggerid_v3_zeiten.triggerid_v3_startzeit_s) as runde_startzeit,
		MAX("public".t_triggerid_v3_zeiten.triggerid_v3_endzeit_s) as runde_endzeit

		FROM
		"public".t_triggerid_v3_zeiten

		GROUP BY 
		"public".t_triggerid_v3_zeiten.vp,
		"public".t_triggerid_v3_zeiten.runde

		ORDER BY 
		"public".t_triggerid_v3_zeiten.vp,
		"public".t_triggerid_v3_zeiten.runde,
		MIN("public".t_triggerid_v3_zeiten.triggerid_v3_startzeit_s)
	) t_temp_rounds

	WHERE 
	t_can_format.subid = t_temp_rounds.vp
) t_temp_fuse

WHERE 
t_temp_fuse.round IS NOT NULL

ORDER BY 
t_temp_fuse.rownr