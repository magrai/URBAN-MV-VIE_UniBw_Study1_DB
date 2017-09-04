DROP TABLE IF EXISTS t_adtf_driven_dist_cum CASCADE;
CREATE TABLE t_adtf_driven_dist_cum AS

SELECT
v_adtf_driven_dist_diff_by_row.row_nr,
v_adtf_driven_dist_diff_by_row.subject_id,
t_adtf_rounds_by_row.round_id,
v_adtf_driven_dist_diff_by_row.time_s,

-- Sum driven distance over all rows
SUM(v_adtf_driven_dist_diff_by_row.dist_m_diff) 
	OVER (PARTITION BY v_adtf_driven_dist_diff_by_row.subject_id 
				ORDER BY v_adtf_driven_dist_diff_by_row.row_nr) 
	AS dist_m,

-- THIS MUST BE COMPUTED ROUND-WISE !!!
CASE 
	WHEN 
		SUM(v_adtf_driven_dist_diff_by_row.dist_m_diff) 
			OVER (PARTITION BY 
							v_adtf_driven_dist_diff_by_row.subject_id, 
							v_adtf_driven_dist_diff_by_row.round_id 
						ORDER BY 
							v_adtf_driven_dist_diff_by_row.row_nr) <= 5000
	THEN 1::NUMERIC
	ELSE 2::NUMERIC
	END AS round_helper1,

CASE 
	WHEN 
		SUM(v_adtf_driven_dist_diff_by_row.dist_m_diff) 
			OVER (PARTITION BY 
							v_adtf_driven_dist_diff_by_row.subject_id, 
							v_adtf_driven_dist_diff_by_row.round_id 
						ORDER BY 
							v_adtf_driven_dist_diff_by_row.row_nr) >= 4000 AND
		SUM(v_adtf_driven_dist_diff_by_row.dist_m_diff) 
			OVER (PARTITION BY 
							v_adtf_driven_dist_diff_by_row.subject_id, 
							v_adtf_driven_dist_diff_by_row.round_id 
						ORDER BY 
							v_adtf_driven_dist_diff_by_row.row_nr) <= 6000
 	THEN 1::NUMERIC
 	ELSE 2::NUMERIC
	END AS round_helper2 

FROM
v_adtf_driven_dist_diff_by_row
	LEFT JOIN t_adtf_rounds_by_row ON
		v_adtf_driven_dist_diff_by_row.row_nr = t_adtf_rounds_by_row.row_nr

ORDER BY
v_adtf_driven_dist_diff_by_row.row_nr