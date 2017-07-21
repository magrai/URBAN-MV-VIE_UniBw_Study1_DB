--CREATE OR REPLACE VIEW v_blinker_seq AS

SELECT
min("public".t_can_sxx_gesamt_aggr_zeit_blinker.znr_aggr) as znr_aggr_min,
"public".t_can_sxx_gesamt_aggr_zeit_blinker.vp,
min("public".t_can_sxx_gesamt_aggr_zeit_blinker.zeit_s_rounded) as zeit_s_rounded_min,
min("public".t_can_sxx_gesamt_aggr_zeit_blinker.runde) as runde,
"public".t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt,
"public".t_can_sxx_gesamt_aggr_zeit_blinker.blinker_seq,
min("public".t_can_sxx_gesamt_aggr_zeit_blinker.blinker) as blinker,
--
SUM(
	CASE
		WHEN
		"public".t_can_sxx_gesamt_aggr_zeit_blinker.blinker = 1
		THEN 1
		ELSE 0::NUMERIC
	END
) as counter,
--
min("public".t_can_sxx_gesamt_aggr_zeit_blinker.s01_entf_s_rounded) as s01_entf_s_rounded_min_blinker,
min("public".t_can_sxx_gesamt_aggr_zeit_blinker.s02_entf_s_rounded) as s02_entf_s_rounded_min_blinker,
min("public".t_can_sxx_gesamt_aggr_zeit_blinker.s03_entf_s_rounded) as s03_entf_s_rounded_min_blinker,
min("public".t_can_sxx_gesamt_aggr_zeit_blinker.s04_entf_s_rounded) as s04_entf_s_rounded_min_blinker,
min("public".t_can_sxx_gesamt_aggr_zeit_blinker.s05_entf_s_rounded) as s05_entf_s_rounded_min_blinker,
min("public".t_can_sxx_gesamt_aggr_zeit_blinker.s06_entf_s_rounded) as s06_entf_s_rounded_min_blinker,
min("public".t_can_sxx_gesamt_aggr_zeit_blinker.s07_entf_s_rounded) as s07_entf_s_rounded_min_blinker,
min("public".t_can_sxx_gesamt_aggr_zeit_blinker.s08_entf_s_rounded) as s08_entf_s_rounded_min_blinker,
min("public".t_can_sxx_gesamt_aggr_zeit_blinker.s09_entf_s_rounded) as s09_entf_s_rounded_min_blinker,
min("public".t_can_sxx_gesamt_aggr_zeit_blinker.s10_entf_s_rounded) as s10_entf_s_rounded_min_blinker,
min("public".t_can_sxx_gesamt_aggr_zeit_blinker.s11_entf_s_rounded) as s11_entf_s_rounded_min_blinker,
min("public".t_can_sxx_gesamt_aggr_zeit_blinker.s12_entf_s_rounded) as s12_entf_s_rounded_min_blinker,
min("public".t_can_sxx_gesamt_aggr_zeit_blinker.s13_entf_s_rounded) as s13_entf_s_rounded_min_blinker,
min("public".t_can_sxx_gesamt_aggr_zeit_blinker.s14_entf_s_rounded) as s14_entf_s_rounded_min_blinker,
min("public".t_can_sxx_gesamt_aggr_zeit_blinker.s15_entf_s_rounded) as s15_entf_s_rounded_min_blinker,
min("public".t_can_sxx_gesamt_aggr_zeit_blinker.s16_entf_s_rounded) as s16_entf_s_rounded_min_blinker,
min("public".t_can_sxx_gesamt_aggr_zeit_blinker.s17_entf_s_rounded) as s17_entf_s_rounded_min_blinker,
min("public".t_can_sxx_gesamt_aggr_zeit_blinker.s18_entf_s_rounded) as s18_entf_s_rounded_min_blinker

FROM
"public".t_can_sxx_gesamt_aggr_zeit_blinker
GROUP BY
"public".t_can_sxx_gesamt_aggr_zeit_blinker.vp,
"public".t_can_sxx_gesamt_aggr_zeit_blinker.runde_txt,
"public".t_can_sxx_gesamt_aggr_zeit_blinker.blinker_seq
ORDER BY
min(znr_aggr)
