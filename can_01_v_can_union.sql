DROP VIEW IF EXISTS v_can_union CASCADE;
CREATE OR REPLACE VIEW v_can_union AS

SELECT 
1::NUMERIC AS "Vp", 
'IN_PJ_934_20130613_133650'::VARCHAR as "Datei", *
FROM "IN_PJ_934_20130613_133650__Data"

UNION
SELECT
2::NUMERIC AS "Vp",
'IN_PJ_934_20130613_155152'::VARCHAR as file, *
FROM "IN_PJ_934_20130613_155152__Data"

UNION
SELECT
3::NUMERIC AS "Vp",
'IN_PJ_934_20130614_092749'::VARCHAR as file, *
FROM "IN_PJ_934_20130614_092749__Data"


UNION
SELECT
4::NUMERIC AS "Vp",
'IN_PJ_934_20130614_112310'::VARCHAR as file, *
FROM "IN_PJ_934_20130614_112310__Data"


UNION
SELECT
5::NUMERIC AS "Vp",
'IN_PJ_934_20130614_142730'::VARCHAR as file, *
FROM "IN_PJ_934_20130614_142730__Data"


UNION
SELECT
6::NUMERIC AS "Vp",
'IN_PJ_934_20130615_122230'::VARCHAR as file, *
FROM "IN_PJ_934_20130615_122230__Data"


UNION
SELECT
7::NUMERIC AS "Vp",
'IN_PJ_934_20130615_142609'::VARCHAR as file, *
FROM "IN_PJ_934_20130615_142609__Data"


UNION
SELECT
8::NUMERIC AS "Vp",
'IN_PJ_934_20130615_162217'::VARCHAR as file, *
FROM "IN_PJ_934_20130615_162217__Data"


UNION
SELECT
9::NUMERIC AS "Vp",
'IN_PJ_934_20130617_084822'::VARCHAR as file, *
FROM "IN_PJ_934_20130617_084822__Data"


UNION
SELECT
10::NUMERIC AS "Vp",
'IN_PJ_934_20130617_105028'::VARCHAR as file, *
FROM "IN_PJ_934_20130617_105028__Data"


UNION
SELECT
11::NUMERIC AS "Vp",
'IN_PJ_934_20130617_124651'::VARCHAR as file, *
FROM "IN_PJ_934_20130617_124651__Data"


UNION
SELECT
12::NUMERIC AS "Vp",
'IN_PJ_934_20130617_165258'::VARCHAR as file, *
FROM "IN_PJ_934_20130617_165258__Data"


UNION
SELECT
13::NUMERIC AS "Vp",
'IN_PJ_934_20130617_185802'::VARCHAR as file, *
FROM "IN_PJ_934_20130617_185802__Data"


UNION
SELECT
14::NUMERIC AS "Vp",
'IN_PJ_934_20130618_082715'::VARCHAR as file, *
FROM "IN_PJ_934_20130618_082715__Data"


UNION
SELECT
15::NUMERIC AS "Vp",
'IN_PJ_934_20130618_101141'::VARCHAR as file, *
FROM "IN_PJ_934_20130618_101141__Data"


UNION
SELECT
16::NUMERIC AS "Vp",
'IN_PJ_934_20130618_123545'::VARCHAR as file, *
FROM "IN_PJ_934_20130618_123545__Data"


UNION
SELECT
17::NUMERIC AS "Vp",
'IN_PJ_934_20130618_161330'::VARCHAR as file, *
FROM "IN_PJ_934_20130618_161330__Data"


UNION
SELECT
18::NUMERIC AS "Vp",
'IN_PJ_934_20130618_182239'::VARCHAR as file, *
FROM "IN_PJ_934_20130618_182239__Data"


-- Abbruch wegem technischen Fehler
-- UNION
-- SELECT
-- 19::NUMERIC AS "Vp",
-- ''::VARCHAR as file, *
-- FROM "__Data"


UNION
SELECT
20::NUMERIC AS "Vp",
'IN_PJ_934_20130620_082322'::VARCHAR as file, *
FROM "IN_PJ_934_20130620_082322__Data"


UNION
SELECT
21::NUMERIC AS "Vp",
'IN_PJ_934_20130620_153800'::VARCHAR as file, *
FROM "IN_PJ_934_20130620_153800__Data"


UNION
SELECT
22::NUMERIC AS "Vp",
'IN_PJ_934_20130620_133031'::VARCHAR as file, *
FROM "IN_PJ_934_20130620_133031__Data"


UNION
SELECT
23::NUMERIC AS "Vp",
'IN_PJ_934_20130621_092338'::VARCHAR as file, *
FROM "IN_PJ_934_20130621_092338__Data"


UNION
SELECT
24::NUMERIC AS "Vp",
'IN_PJ_934_20130621_112607'::VARCHAR as file, *
FROM "IN_PJ_934_20130621_112607__Data"


UNION
SELECT
25::NUMERIC AS "Vp",
'IN_PJ_934_20130621_161530'::VARCHAR as file, *
FROM "IN_PJ_934_20130621_161530__Data"


UNION
SELECT
26::NUMERIC AS "Vp",
'IN_PJ_934_20130622_115740'::VARCHAR as file, *
FROM "IN_PJ_934_20130622_115740__Data"


UNION
SELECT
27::NUMERIC AS "Vp",
'IN_PJ_934_20130622_160541'::VARCHAR as file, *
FROM "IN_PJ_934_20130622_160541__Data"


UNION
SELECT
28::NUMERIC AS "Vp",
'IN_PJ_934_20130623_161130'::VARCHAR as file, *
FROM "IN_PJ_934_20130623_161130__Data"


UNION
SELECT
29::NUMERIC AS "Vp",
'IN_PJ_934_20130624_102617'::VARCHAR as file, *
FROM "IN_PJ_934_20130624_102617__Data"


UNION
SELECT
30::NUMERIC AS "Vp",
'IN_PJ_934_20130624_122403'::VARCHAR as file, *
FROM "IN_PJ_934_20130624_122403__Data"


UNION
SELECT
31::NUMERIC AS "Vp",
'IN_PJ_934_20130626_121244'::VARCHAR as file, *
FROM "IN_PJ_934_20130626_121244__Data"