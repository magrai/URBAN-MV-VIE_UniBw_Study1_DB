DROP VIEW IF EXISTS v_personal_data_demography CASCADE;
CREATE VIEW v_personal_data_demography AS

SELECT
"public".t_personaldata.subid,
"public".t_personaldata.age,
"public".t_personaldata.birthday,
"public".t_personaldata.gender,
"public".t_personaldata.education,
"public".t_q_demography.glasses,
"public".t_q_demography.licence,
"public".t_q_demography.drivingperweek,
"public".t_q_demography.km_year,
"public".t_q_demography.km_overall,
"public".t_q_demography.vehicle_brand,
"public".t_q_demography.vehicle_hp,
"public".t_q_demography.vehicle_build,
"public".t_q_demography.vehicle_milage,
"public".t_q_demography.roadtype_country,
"public".t_q_demography.roadtype_motorway,
"public".t_q_demography.roadtype_city,
"public".t_q_demography.roadtype_town,
"public".t_q_demography.roadtype_varcheck,
"public".t_q_demography.freq_automatic,
"public".t_q_demography.freq_tempomat,
"public".t_q_demography.freq_acc,
"public".t_q_demography.drivingstyle
FROM
"public".t_personaldata
INNER JOIN "public".t_q_demography ON "public".t_personaldata.subid = "public".t_q_demography.subid
WHERE
"public".t_personaldata.subid <> 19
ORDER BY
"public".t_personaldata.subid ASC
