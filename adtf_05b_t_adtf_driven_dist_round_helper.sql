DROP TABLE IF EXISTS t_adtf_driven_dist_round_helper CASCADE;
CREATE TABLE t_adtf_driven_dist_round_helper AS

SELECT 
*,
-- Will be necessary to correctly identify distance values for gps reference points
CASE 
	WHEN 
		dist_m <= 5000
	THEN 
		1::NUMERIC
	ELSE 
		2::NUMERIC
END AS round_helper1,

CASE 
	WHEN 
		dist_m >= 4000 AND
		dist_m <= 6000
	THEN 
		1::NUMERIC
	ELSE 
		2::NUMERIC
END AS round_helper2

FROM 
t_adtf_driven_dist_cum

