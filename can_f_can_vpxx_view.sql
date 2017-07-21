CREATE OR REPLACE FUNCTION f_can_vpxx_view() RETURNS VOID LANGUAGE plpgsql AS $$

DECLARE vp INT;

BEGIN

FOR vp in 1..31 LOOP
		
		CASE WHEN Vp<=9 THEN EXECUTE(
		
		'CREATE OR REPLACE VIEW v_can_vp0' || vp || ' AS

		SELECT 
		t_can_sxx_gesamt.vp, 
    t_can_sxx_gesamt.zeit_s, 
    t_can_sxx_gesamt.geschw_kmh,
		t_can_sxx_gesamt.geschw_kmh_diff,
    t_can_sxx_gesamt.querb_ms2, 
		t_can_sxx_gesamt.querb_ms2_diff, 
		t_can_sxx_gesamt.laengsb_ms2, 
		t_can_sxx_gesamt.laengsb_ms2_diff, 
		t_can_sxx_gesamt.gierrate_grad, 
		t_can_sxx_gesamt.gierrate_grad_diff, 
		t_can_sxx_gesamt.bremsdruck_bar, 
		t_can_sxx_gesamt.bremsdruck_bar_diff, 
		t_can_sxx_gesamt.bremsdruck_status, 
		t_can_sxx_gesamt.lwi_grad,
		t_can_sxx_gesamt.lwi_grad_diff,
		t_can_sxx_gesamt.lwi_geschw,
		t_can_sxx_gesamt.lwi_geschw_diff,
		t_can_sxx_gesamt.pedalpos_prozent,
		t_can_sxx_gesamt.pedalpos_prozent_diff,
		t_can_sxx_gesamt.blinker,
    t_can_sxx_gesamt.gps_lat, 
    t_can_sxx_gesamt.gps_long
		FROM 
		t_can_sxx_gesamt
		WHERE 
		t_can_sxx_gesamt.vp = ' || vp || '
		ORDER BY 
		t_can_sxx_gesamt.znr');

		WHEN Vp = 19 THEN --nichts--
		ELSE EXECUTE(
		
		'CREATE OR REPLACE VIEW v_can_vp' || vp || ' AS

		SELECT 
		t_can_sxx_gesamt.vp, 
    t_can_sxx_gesamt.zeit_s, 
    t_can_sxx_gesamt.geschw_kmh,
		t_can_sxx_gesamt.geschw_kmh_diff,
    t_can_sxx_gesamt.querb_ms2, 
		t_can_sxx_gesamt.querb_ms2_diff, 
		t_can_sxx_gesamt.laengsb_ms2, 
		t_can_sxx_gesamt.laengsb_ms2_diff, 
		t_can_sxx_gesamt.gierrate_grad, 
		t_can_sxx_gesamt.gierrate_grad_diff, 
		t_can_sxx_gesamt.bremsdruck_bar, 
		t_can_sxx_gesamt.bremsdruck_bar_diff, 
		t_can_sxx_gesamt.bremsdruck_status, 
		t_can_sxx_gesamt.lwi_grad,
		t_can_sxx_gesamt.lwi_grad_diff,
		t_can_sxx_gesamt.lwi_geschw,
		t_can_sxx_gesamt.lwi_geschw_diff,
		t_can_sxx_gesamt.pedalpos_prozent,
		t_can_sxx_gesamt.pedalpos_prozent_diff,
		t_can_sxx_gesamt.blinker,
    t_can_sxx_gesamt.gps_lat, 
    t_can_sxx_gesamt.gps_long
		FROM 
		t_can_sxx_gesamt
		WHERE 
		t_can_sxx_gesamt.vp = ' || vp || '
		ORDER BY 
		t_can_sxx_gesamt.znr');

	
END CASE;
	END LOOP;

END;
$$;