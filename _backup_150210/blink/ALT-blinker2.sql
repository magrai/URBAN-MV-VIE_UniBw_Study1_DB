CREATE OR REPLACE VIEW blinker2 AS

SELECT
MIN("public".blinker1.znr) AS znr_min,
"public".blinker1.vp,
MIN("public".blinker1.zeit_s_rounded) AS zeit_s_rounded_min,
min("public".blinker1.runde) as runde,
"public".blinker1.runde_txt AS runde_txt,
--"public".blinker1.s01_entf_s_rounded),
"public".blinker1.s01_entf_s_rounded_min,
row_number() OVER (ORDER BY "public".blinker1.s01_entf_s_rounded_min) as blinker_kum,
(100::NUMERIC/30::NUMERIC)*(row_number() OVER (ORDER BY "public".blinker1.s01_entf_s_rounded_min)) as blinker_kum_rel

FROM
"public".blinker1
GROUP BY
"public".blinker1.vp,
"public".blinker1.runde_txt,
"public".blinker1.s01_entf_s_rounded_min
ORDER BY
"public".blinker1.s01_entf_s_rounded_min