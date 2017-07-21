--CREATE OR REPLACE VIEW blinker3 AS

SELECT
--"public".t_can_sxx_gesamt_aggr_zeit.znr,
--"public".t_can_sxx_gesamt_aggr_zeit.vp,
--"public".t_can_sxx_gesamt_aggr_zeit.zeit_s_rounded,
max("public".t_can_sxx_gesamt_aggr_zeit.runde),
"public".t_can_sxx_gesamt_aggr_zeit.runde_txt,
"public".t_can_sxx_gesamt_aggr_zeit.s05_entf_s_rounded,
--"public".t_can_sxx_gesamt_aggr_zeit.blinker,
max(t_temp.s05_entf_s_rounded_min) as s05_entf_s_rounded_min,
max(
CASE 
	WHEN
	"public".t_can_sxx_gesamt_aggr_zeit.s05_entf_s_rounded >= t_temp.s05_entf_s_rounded_min
	THEN
	blinker_kum_rel
END) AS blinker_kum_rel

FROM "public".t_can_sxx_gesamt_aggr_zeit
LEFT OUTER JOIN
(	SELECT
	MIN("public".blinker1.znr) AS znr_min,
	"public".blinker1.vp,
	MIN("public".blinker1.zeit_s_rounded) AS zeit_s_rounded_min,
	"public".blinker1.runde,
	MIN("public".blinker1.runde_txt) AS runde_txt,
	--"public".blinker1.s05_entf_s_rounded),
	"public".blinker1.s05_entf_s_rounded_min,
	row_number() OVER (ORDER BY "public".blinker1.s05_entf_s_rounded_min) as blinker_kum,
	(100::NUMERIC/30::NUMERIC)*(row_number() OVER (ORDER BY "public".blinker1.s05_entf_s_rounded_min)) as blinker_kum_rel

	FROM
	"public".blinker1
	GROUP BY
	"public".blinker1.vp,
	"public".blinker1.runde,
	"public".blinker1.s05_entf_s_rounded_min
	ORDER BY
	"public".blinker1.s05_entf_s_rounded_min
) t_temp 
ON "public".t_can_sxx_gesamt_aggr_zeit.s05_entf_s_rounded >= t_temp.s05_entf_s_rounded_min

WHERE
"public".t_can_sxx_gesamt_aggr_zeit.runde_txt = 'normal' AND
"public".t_can_sxx_gesamt_aggr_zeit.s05_entf_s_rounded >= -15 AND
"public".t_can_sxx_gesamt_aggr_zeit.s05_entf_s_rounded <= 5

GROUP BY 
"public".t_can_sxx_gesamt_aggr_zeit.runde_txt,
"public".t_can_sxx_gesamt_aggr_zeit.s05_entf_s_rounded

ORDER BY
"public".t_can_sxx_gesamt_aggr_zeit.s05_entf_s_rounded