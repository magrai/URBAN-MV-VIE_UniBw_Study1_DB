DROP TABLE IF EXISTS t_adtf_rounds_summary CASCADE;
CREATE TABLE t_adtf_rounds_summary AS

SELECT
subject_id,
round_nr,
MIN(time_s_start) as time_s_round_start,
MAX(time_s_end) as time_s_round_end

FROM
t_trigger_times

GROUP BY 
subject_id,
round_nr

ORDER BY 
subject_id,
round_nr,
MIN(time_s_start)