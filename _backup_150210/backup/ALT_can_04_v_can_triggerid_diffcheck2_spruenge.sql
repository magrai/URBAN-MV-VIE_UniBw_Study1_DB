CREATE OR REPLACE VIEW "v_can_triggerid_diffcheck_v2_spruenge" AS 

SELECT
"public".v_can_triggerid_diffcheck1.ab_znr,
"public".v_can_triggerid_diffcheck1.bis_znr,
"public".v_can_triggerid_diffcheck1.ab_znr_vp,
"public".v_can_triggerid_diffcheck1.bis_znr_vp,
"public".v_can_triggerid_diffcheck1.vp,
"public".v_can_triggerid_diffcheck1.triggerid_zeit_start,
"public".v_can_triggerid_diffcheck1.triggerid_zeit_ende,
"public".v_can_triggerid_diffcheck1.znr_diff_vp_triggerid,
"public".v_can_triggerid_diffcheck1.triggerid_v2,
"public".v_can_triggerid_diffcheck1.triggerid_v2_diffcheck_lag,
"public".v_can_triggerid_diffcheck1.triggerid_v2_diffcheck_lead
FROM
"public".v_can_triggerid_diffcheck1
WHERE
"public".v_can_triggerid_diffcheck1.triggerid_v2_diffcheck_lag <> 1 AND
"public".v_can_triggerid_diffcheck1.triggerid_v2_diffcheck_lag IS NOT NULL