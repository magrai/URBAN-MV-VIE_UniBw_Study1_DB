CREATE OR REPLACE FUNCTION f_can_vpxx_view_v2() RETURNS VOID LANGUAGE plpgsql AS $$

DECLARE vp INT;
DECLARE vp_text VARCHAR;

BEGIN

FOR vp in 1..31 LOOP
	
	CASE 
		WHEN Vp<=9 
			THEN vp_text='0' || vp::varchar 
			ELSE vp_text=vp::varchar 
	END CASE;
	
	CASE 
		WHEN Vp = 19 
			THEN --nichts--	
			ELSE
				EXECUTE(
					'CREATE OR REPLACE VIEW v_can_vp' || vp_text || ' AS
					SELECT t_can_gesamt.vp, 
					t_can_gesamt.zeit_s, 
					t_can_gesamt.geschw_kmh, 
					t_can_gesamt.querB_ms2 AS querb_ms2, 
					t_can_gesamt.gps_lat, 
					t_can_gesamt.gps_long, 
					t_can_gesamt.triggerid, 
					t_can_gesamt.triggerid_korrigiert
					FROM t_can_gesamt
					WHERE (t_can_gesamt.vp = (' || vp || ')::numeric)
					ORDER BY t_can_gesamt.znr_vp')
	END CASE;
	
END LOOP;

END;
$$;