 SELECT min(t_can_gesamt.znr) AS ab_znr,
    max(t_can_gesamt.znr) AS bis_znr,
    min(t_can_gesamt.znr_vp) AS ab_znr_vp,
    max(t_can_gesamt.znr_vp) AS bis_znr_vp,
    t_can_gesamt.vp,
    min(t_can_gesamt.zeit_s) AS triggerid_zeit_start,
    max(t_can_gesamt.zeit_s) AS triggerid_zeit_ende,
    t_can_gesamt.znr_diff_vp_triggerid,
    t_can_gesamt.triggerid,
    t_can_gesamt.triggerid_v2,
    (t_can_gesamt.triggerid_v2 - lag(t_can_gesamt.triggerid_v2) OVER (ORDER BY min(t_can_gesamt.znr))) AS triggerid_v2_diffcheck_lag,
    (t_can_gesamt.triggerid_v2 - lead(t_can_gesamt.triggerid_v2) OVER (ORDER BY min(t_can_gesamt.znr))) AS triggerid_v2_diffcheck_lead
   FROM t_can_gesamt
  GROUP BY t_can_gesamt.vp, t_can_gesamt.datei, t_can_gesamt.znr_diff_vp_triggerid, t_can_gesamt.triggerid, t_can_gesamt.triggerid_v2
  ORDER BY max(t_can_gesamt.znr);