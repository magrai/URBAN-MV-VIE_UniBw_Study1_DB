--DROP TABLE IF EXISTS t_adtf_full_aggr_dist_m_rnd1_min CASCADE;
--CREATE TABLE t_adtf_full_aggr_dist_m_rnd1_min AS
DROP VIEW IF EXISTS v_adtf_full_aggr_dist_m_rnd1_min CASCADE;
CREATE OR REPLACE VIEW v_adtf_full_aggr_dist_m_rnd1_min AS

SELECT
MIN(t_adtf_full.rnr) AS rnr,
--t_adtf_full.subject_id,
MIN(t_adtf_full.round_id) AS round_id,
--t_adtf_full.round_txt,
--
--MIN(t_adtf_full.time_s) AS time_s,
MIN(round(t_adtf_full.time_s, 1)) AS time_s_rnd1,
--MIN(t_adtf_full.dist_m) AS dist_m,
round(t_adtf_full.dist_m, 1) AS dist_m_rnd1
--
-- Irrelevant if MIN oder MAX, AS data is grouped by round_txt
-- MIN(t_adtf_full.gps_lat) AS gps_lat,
-- MIN(t_adtf_full.gps_lon) AS gps_lon,
--
-- MIN(t_adtf_full.speed_kmh) AS speed_kmh,
-- MIN(t_adtf_full.acclat_ms2) AS acclat_ms2,
-- MIN(t_adtf_full.acclon_ms2) AS acclon_ms2,
-- MIN(t_adtf_full.yawrate_degs) AS yawrate_degs,
-- MIN(t_adtf_full.brakepress_bar) AS brakepress_bar,
-- MIN(t_adtf_full.brakepress_status) AS brakepress_status,
-- MIN(t_adtf_full.steerangle_deg) AS steerangle_deg,
-- MIN(t_adtf_full.steerangle_degs) AS steerangle_degs,
-- MIN(t_adtf_full.accpedalpos_perc) AS accpedalpos_perc,
-- MIN(t_adtf_full.ind) AS ind,
-- MIN(t_adtf_full.ldw_side) AS ldw_side,
-- MIN(t_adtf_full.ldw_tlc_s) AS ldw_tlc_s,
-- MIN(t_adtf_full.ldw_dlc_m) AS ldw_dlc_m,
-- MIN(t_adtf_full.psd_roadtype) AS psd_roadtype,
-- MIN(t_adtf_full.psd_seqlength_m) AS psd_seqlength_m,
-- MIN(t_adtf_full.psd_lanes_n) AS psd_lanes_n

FROM
t_adtf_full

GROUP BY
t_adtf_full.subject_id,
-- Grouping by round_txt is eaier to handle than MIN/MAX from round_txt
--t_adtf_full.round_txt, 
t_adtf_fullround_id
round(t_adtf_full.dist_m, 1)