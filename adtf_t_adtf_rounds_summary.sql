DROP TABLE IF EXISTS t_adtf_rounds_summary CASCADE;
CREATE TABLE t_adtf_rounds_summary AS

SELECT
subject_id,
round_id,
MIN(starttime_s) as time_s_round_start,
MAX(endtime_s) as time_s_round_end

FROM
t_trigger_times

GROUP BY 
subject_id,
round_id

ORDER BY 
subject_id,
round_id,
MIN(starttime_s)