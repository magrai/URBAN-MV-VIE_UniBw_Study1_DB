CREATE OR REPLACE VIEW blinker1 AS

SELECT 
t_temp.znr,
t_temp.vp,
t_temp.zeit_s_rounded,
t_temp.runde,
t_temp.runde_txt,
t_temp.s01_entf_s_rounded,
MIN(t_temp.s01_entf_s_rounded) OVER (PARTITION BY t_temp.vp) as s01_entf_s_rounded_min

FROM (
	SELECT
	"public".t_can_sxx_gesamt_aggr_zeit.znr,
	"public".t_can_sxx_gesamt_aggr_zeit.vp,
	"public".t_can_sxx_gesamt_aggr_zeit.zeit_s_rounded,
	"public".t_can_sxx_gesamt_aggr_zeit.runde,
	"public".t_can_sxx_gesamt_aggr_zeit.runde_txt,
	"public".t_can_sxx_gesamt_aggr_zeit.s01_entf_s_rounded,
	"public".t_can_sxx_gesamt_aggr_zeit.blinker,
	--
	CASE 
		WHEN "public".t_can_sxx_gesamt_aggr_zeit.blinker = 1 
		THEN "public".t_can_sxx_gesamt_aggr_zeit.blinker-lag("public".t_can_sxx_gesamt_aggr_zeit.blinker) OVER (PARTITION BY "public".t_can_sxx_gesamt_aggr_zeit.vp, "public".t_can_sxx_gesamt_aggr_zeit.runde ORDER BY "public".t_can_sxx_gesamt_aggr_zeit.znr)
	END AS blinker_diff
	--

	FROM
	"public".t_can_sxx_gesamt_aggr_zeit

	WHERE
	"public".t_can_sxx_gesamt_aggr_zeit.runde_txt = 'normal' AND
	"public".t_can_sxx_gesamt_aggr_zeit.s01_entf_s_rounded >= -15 AND
	"public".t_can_sxx_gesamt_aggr_zeit.s01_entf_s_rounded <= 5
) t_temp

WHERE 
blinker_diff = 1

ORDER BY 
t_temp.s01_entf_s_rounded