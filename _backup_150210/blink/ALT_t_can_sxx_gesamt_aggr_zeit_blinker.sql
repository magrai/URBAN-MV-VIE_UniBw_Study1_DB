DROP TABLE IF EXISTS t_can_sxx_gesamt_aggr_zeit_blinker_v2 CASCADE;
CREATE TABLE t_can_sxx_gesamt_aggr_zeit_blinker_v2 AS

SELECT 
row_number() over (order by t_can_sxx_gesamt_aggr_zeit.znr) znr_aggr,
t_can_sxx_gesamt_aggr_zeit.vp,
t_can_sxx_gesamt_aggr_zeit.zeit_s_rounded,
t_can_sxx_gesamt_aggr_zeit.runde,
t_can_sxx_gesamt_aggr_zeit.runde_txt,
row_number() over (partition by "public".t_can_sxx_gesamt_aggr_zeit.vp, "public".t_can_sxx_gesamt_aggr_zeit.runde, "public".t_can_sxx_gesamt_aggr_zeit.blinker order by "public".t_can_sxx_gesamt_aggr_zeit.znr) as znr_blinker_vp,
row_number() over (order by t_can_sxx_gesamt_aggr_zeit.znr) - row_number() over (partition by "public".t_can_sxx_gesamt_aggr_zeit.vp, "public".t_can_sxx_gesamt_aggr_zeit.runde, "public".t_can_sxx_gesamt_aggr_zeit.blinker order by "public".t_can_sxx_gesamt_aggr_zeit.znr) as blinker_seq_vp,
row_number() over (partition by "public".t_can_sxx_gesamt_aggr_zeit.runde, "public".t_can_sxx_gesamt_aggr_zeit.blinker order by "public".t_can_sxx_gesamt_aggr_zeit.znr) as znr_blinker_gesamt,
row_number() over (order by t_can_sxx_gesamt_aggr_zeit.znr) - row_number() over (partition by "public".t_can_sxx_gesamt_aggr_zeit.runde, "public".t_can_sxx_gesamt_aggr_zeit.blinker order by "public".t_can_sxx_gesamt_aggr_zeit.znr) as blinker_seq_gesamt,

"public".t_can_sxx_gesamt_aggr_zeit.blinker,

"public".t_can_sxx_gesamt_aggr_zeit.s01_entf_s_rounded,
"public".t_can_sxx_gesamt_aggr_zeit.s02_entf_s_rounded,
"public".t_can_sxx_gesamt_aggr_zeit.s03_entf_s_rounded,
"public".t_can_sxx_gesamt_aggr_zeit.s04_entf_s_rounded,
"public".t_can_sxx_gesamt_aggr_zeit.s05_entf_s_rounded,
"public".t_can_sxx_gesamt_aggr_zeit.s06_entf_s_rounded,
"public".t_can_sxx_gesamt_aggr_zeit.s07_entf_s_rounded,
"public".t_can_sxx_gesamt_aggr_zeit.s08_entf_s_rounded,
"public".t_can_sxx_gesamt_aggr_zeit.s09_entf_s_rounded,
"public".t_can_sxx_gesamt_aggr_zeit.s10_entf_s_rounded,
"public".t_can_sxx_gesamt_aggr_zeit.s11_entf_s_rounded,
"public".t_can_sxx_gesamt_aggr_zeit.s12_entf_s_rounded,
"public".t_can_sxx_gesamt_aggr_zeit.s13_entf_s_rounded,
"public".t_can_sxx_gesamt_aggr_zeit.s14_entf_s_rounded,
"public".t_can_sxx_gesamt_aggr_zeit.s15_entf_s_rounded,
"public".t_can_sxx_gesamt_aggr_zeit.s16_entf_s_rounded,
"public".t_can_sxx_gesamt_aggr_zeit.s17_entf_s_rounded,
"public".t_can_sxx_gesamt_aggr_zeit.s18_entf_s_rounded


FROM
t_can_sxx_gesamt_aggr_zeit

ORDER BY
t_can_sxx_gesamt_aggr_zeit