DROP VIEW IF EXISTS v_adtf_union CASCADE;
CREATE OR REPLACE VIEW v_adtf_union AS
--------------------------------------------------------------------------------
SELECT 
1::INT2 AS subject_id,
'IN_PJ_934_20130613_133650'::VARCHAR as filename, *
FROM "IN_PJ_934_20130613_133650__Data"
--------------------------------------------------------------------------------
UNION
SELECT
2::INT2 AS subject_id,
'IN_PJ_934_20130613_155152'::VARCHAR as filename, *
FROM "IN_PJ_934_20130613_155152__Data"
--------------------------------------------------------------------------------
UNION
SELECT
3::INT2 AS subject_id,
'IN_PJ_934_20130614_092749'::VARCHAR as filename, *
FROM "IN_PJ_934_20130614_092749__Data"
--------------------------------------------------------------------------------
UNION
SELECT
4::INT2 AS subject_id,
'IN_PJ_934_20130614_112310'::VARCHAR as filename, *
FROM "IN_PJ_934_20130614_112310__Data"
--------------------------------------------------------------------------------
UNION
SELECT
5::INT2 AS subject_id,
'IN_PJ_934_20130614_142730'::VARCHAR as filename, *
FROM "IN_PJ_934_20130614_142730__Data"
--------------------------------------------------------------------------------
UNION
SELECT
6::INT2 AS subject_id,
'IN_PJ_934_20130615_122230'::VARCHAR as filename, *
FROM "IN_PJ_934_20130615_122230__Data"
--------------------------------------------------------------------------------
UNION
SELECT
7::INT2 AS subject_id,
'IN_PJ_934_20130615_142609'::VARCHAR as filename, *
FROM "IN_PJ_934_20130615_142609__Data"
--------------------------------------------------------------------------------
UNION
SELECT
8::INT2 AS subject_id,
'IN_PJ_934_20130615_162217'::VARCHAR as filename, *
FROM "IN_PJ_934_20130615_162217__Data"
--------------------------------------------------------------------------------
UNION
SELECT
9::INT2 AS subject_id,
'IN_PJ_934_20130617_084822'::VARCHAR as filename, *
FROM "IN_PJ_934_20130617_084822__Data"
--------------------------------------------------------------------------------
UNION
SELECT
10::INT2 AS subject_id,
'IN_PJ_934_20130617_105028'::VARCHAR as filename, *
FROM "IN_PJ_934_20130617_105028__Data"
--------------------------------------------------------------------------------
UNION
SELECT
11::INT2 AS subject_id,
'IN_PJ_934_20130617_124651'::VARCHAR as filename, *
FROM "IN_PJ_934_20130617_124651__Data"
--------------------------------------------------------------------------------
UNION
SELECT
12::INT2 AS subject_id,
'IN_PJ_934_20130617_165258'::VARCHAR as filename, *
FROM "IN_PJ_934_20130617_165258__Data"
--------------------------------------------------------------------------------
UNION
SELECT
13::INT2 AS subject_id,
'IN_PJ_934_20130617_185802'::VARCHAR as filename, *
FROM "IN_PJ_934_20130617_185802__Data"
--------------------------------------------------------------------------------
UNION
SELECT
14::INT2 AS subject_id,
'IN_PJ_934_20130618_082715'::VARCHAR as filename, *
FROM "IN_PJ_934_20130618_082715__Data"
--------------------------------------------------------------------------------
UNION
SELECT
15::INT2 AS subject_id,
'IN_PJ_934_20130618_101141'::VARCHAR as filename, *
FROM "IN_PJ_934_20130618_101141__Data"
--------------------------------------------------------------------------------
UNION
SELECT
16::INT2 AS subject_id,
'IN_PJ_934_20130618_123545'::VARCHAR as filename, *
FROM "IN_PJ_934_20130618_123545__Data"
--------------------------------------------------------------------------------
UNION
SELECT
17::INT2 AS subject_id,
'IN_PJ_934_20130618_161330'::VARCHAR as filename, *
FROM "IN_PJ_934_20130618_161330__Data"
--------------------------------------------------------------------------------
UNION
SELECT
18::INT2 AS subject_id,
'IN_PJ_934_20130618_182239'::VARCHAR as filename, *
FROM "IN_PJ_934_20130618_182239__Data"
--------------------------------------------------------------------------------
-- Technical failure in recording / excluded / no data
-- UNION
-- SELECT
-- 19::INT2 AS subject_id,
-- ''::VARCHAR as filename, *
-- FROM "__Data"
--------------------------------------------------------------------------------
UNION
SELECT
20::INT2 AS subject_id,
'IN_PJ_934_20130620_082322'::VARCHAR as filename, *
FROM "IN_PJ_934_20130620_082322__Data"
--------------------------------------------------------------------------------
UNION
SELECT
21::INT2 AS subject_id,
'IN_PJ_934_20130620_153800'::VARCHAR as filename, *
FROM "IN_PJ_934_20130620_153800__Data"
--------------------------------------------------------------------------------
UNION
SELECT
22::INT2 AS subject_id,
'IN_PJ_934_20130620_133031'::VARCHAR as filename, *
FROM "IN_PJ_934_20130620_133031__Data"
--------------------------------------------------------------------------------
UNION
SELECT
23::INT2 AS subject_id,
'IN_PJ_934_20130621_092338'::VARCHAR as filename, *
FROM "IN_PJ_934_20130621_092338__Data"
--------------------------------------------------------------------------------
UNION
SELECT
24::INT2 AS subject_id,
'IN_PJ_934_20130621_112607'::VARCHAR as filename, *
FROM "IN_PJ_934_20130621_112607__Data"
--------------------------------------------------------------------------------
UNION
SELECT
25::INT2 AS subject_id,
'IN_PJ_934_20130621_161530'::VARCHAR as filename, *
FROM "IN_PJ_934_20130621_161530__Data"
--------------------------------------------------------------------------------
UNION
SELECT
26::INT2 AS subject_id,
'IN_PJ_934_20130622_115740'::VARCHAR as filename, *
FROM "IN_PJ_934_20130622_115740__Data"
--------------------------------------------------------------------------------
UNION
SELECT
27::INT2 AS subject_id,
'IN_PJ_934_20130622_160541'::VARCHAR as filename, *
FROM "IN_PJ_934_20130622_160541__Data"
--------------------------------------------------------------------------------
UNION
SELECT
28::INT2 AS subject_id,
'IN_PJ_934_20130623_161130'::VARCHAR as filename, *
FROM "IN_PJ_934_20130623_161130__Data"
--------------------------------------------------------------------------------
UNION
SELECT
29::INT2 AS subject_id,
'IN_PJ_934_20130624_102617'::VARCHAR as filename, *
FROM "IN_PJ_934_20130624_102617__Data"
--------------------------------------------------------------------------------
UNION
SELECT
30::INT2 AS subject_id,
'IN_PJ_934_20130624_122403'::VARCHAR as filename, *
FROM "IN_PJ_934_20130624_122403__Data"
--------------------------------------------------------------------------------
UNION
SELECT
31::INT2 AS subject_id,
'IN_PJ_934_20130626_121244'::VARCHAR as filename, *
FROM "IN_PJ_934_20130626_121244__Data"