-- not really necessary

DROP TABLE IF EXISTS t_can_dist2sxx;
CREATE TABLE t_can_dist2sxx AS

SELECT * 

FROM 
"public".v_can_dist2sxx

ORDER BY 
"public".v_can_dist2sxx.rownr