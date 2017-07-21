CREATE OR REPLACE VIEW v_can_rundenzeiten AS 

SELECT *

FROM(

	SELECT
	t_can_gesamt.znr, 
	t_can_gesamt.vp, 
	t_can_gesamt.zeit_s, 
	CASE
		WHEN 
		t_can_gesamt.zeit_s >= t_temp_runden.runde_startzeit AND
		t_can_gesamt.zeit_s <= t_temp_runden.runde_endzeit
		THEN t_temp_runden.runde
	END AS runde,

	t_temp_runden.runde_startzeit,
	t_temp_runden.runde_endzeit 

	FROM 
	t_can_gesamt,
	( SELECT
		"public".t_can_triggerid_v3_zeiten.vp,
		"public".t_can_triggerid_v3_zeiten.runde,
		MIN("public".t_can_triggerid_v3_zeiten.triggerid_v3_startzeit_s) as runde_startzeit,
		MAX("public".t_can_triggerid_v3_zeiten.triggerid_v3_endzeit_s) as runde_endzeit

		FROM
		"public".t_can_triggerid_v3_zeiten

		GROUP BY 
		"public".t_can_triggerid_v3_zeiten.vp,
		"public".t_can_triggerid_v3_zeiten.runde

		ORDER BY 
		"public".t_can_triggerid_v3_zeiten.vp,
		"public".t_can_triggerid_v3_zeiten.runde,
		MIN("public".t_can_triggerid_v3_zeiten.triggerid_v3_startzeit_s)
	) t_temp_runden

	WHERE 
	t_can_gesamt.vp=t_temp_runden.vp
) t_temp_integration

WHERE 
t_temp_integration.runde IS NOT NULL

ORDER BY 
t_temp_integration.znr