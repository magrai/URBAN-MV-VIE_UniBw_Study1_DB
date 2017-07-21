 SELECT v_can_triggerid_diffcheck1.ab_znr,
    v_can_triggerid_diffcheck1.bis_znr,
    v_can_triggerid_diffcheck1.ab_znr_vp,
    v_can_triggerid_diffcheck1.bis_znr_vp,
    v_can_triggerid_diffcheck1.vp,
    v_can_triggerid_diffcheck1.triggerid_zeit_start,
    v_can_triggerid_diffcheck1.triggerid_zeit_ende,
    v_can_triggerid_diffcheck1.znr_diff_vp_triggerid,
    v_can_triggerid_diffcheck1.triggerid_v2,
    v_can_triggerid_diffcheck1.triggerid_v2_diffcheck_lag,
    v_can_triggerid_diffcheck1.triggerid_v2_diffcheck_lead
   FROM v_can_triggerid_diffcheck1
  WHERE ((v_can_triggerid_diffcheck1.triggerid_v2_diffcheck_lag <> (1)::numeric) AND (v_can_triggerid_diffcheck1.triggerid_v2_diffcheck_lag IS NOT NULL));