CREATE OR REPLACE VIEW v_can_integration_triggerid_v3 AS 

SELECT 

t_temp.znr, 
t_temp.vp, 
t_temp.zeit_s, 
t_temp.triggerid_v3, 
t_temp.triggerid_v3_startzeit_s, 
t_temp.triggerid_v3_endzeit_s, 
t_temp.triggerid_v3_startzeit_quelle, 
t_temp.triggerid_v3_endzeit_quelle, 
t_temp.check_endzeit1_startzeit2, 
t_temp.check_endzeit1_startzeit1, 
t_temp.runde

FROM ( 
	SELECT
	t_can_gesamt.znr, 
	t_can_gesamt.vp, 
	t_can_gesamt.zeit_s, 
	CASE
		WHEN 
		t_can_gesamt.zeit_s >= t_can_triggerid_v3_zeiten.triggerid_v3_startzeit_s AND 
		t_can_gesamt.zeit_s <= t_can_triggerid_v3_zeiten.triggerid_v3_endzeit_s
		THEN t_can_triggerid_v3_zeiten.triggerid_v3
		ELSE NULL::numeric
	END AS triggerid_v3, 

	t_can_triggerid_v3_zeiten.triggerid_v3_startzeit_s, 
 	t_can_triggerid_v3_zeiten.triggerid_v3_endzeit_s, 
 	t_can_triggerid_v3_zeiten.triggerid_v3_startzeit_quelle, 
 	t_can_triggerid_v3_zeiten.triggerid_v3_endzeit_quelle, 
 	t_can_triggerid_v3_zeiten.check_endzeit1_startzeit2, 
 	t_can_triggerid_v3_zeiten.check_endzeit1_startzeit1, 
 	t_can_triggerid_v3_zeiten.runde
  
	FROM 
	t_can_gesamt
  LEFT OUTER JOIN t_can_triggerid_v3_zeiten ON t_can_gesamt.vp = t_can_triggerid_v3_zeiten.vp

) t_temp
  WHERE t_temp.triggerid_v3 IS NOT NULL;