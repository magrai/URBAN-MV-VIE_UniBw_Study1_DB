DROP TABLE IF EXISTS t_q_assessment_ext;
CREATE TABLE t_q_assessment_ext AS

SELECT
"public".t_q_assessment_ext_paul.subid,
"public".t_q_assessment_ext_paul.drivingstyle_start,
"public".t_q_assessment_ext_paul.drivingstyle_coverstory,

CASE 
	WHEN "public".t_q_assessment_ext_paul.drivingstyle = 5 then 1 
	WHEN "public".t_q_assessment_ext_paul.drivingstyle = 4 then 2  
	WHEN "public".t_q_assessment_ext_paul.drivingstyle = 3 then 3  
	WHEN "public".t_q_assessment_ext_paul.drivingstyle = 2 then 4 
	WHEN "public".t_q_assessment_ext_paul.drivingstyle = 1 then 5
END AS drivingstyle, 

CASE 
	WHEN "public".t_q_assessment_ext_paul.speed = 5 then 1 
	WHEN "public".t_q_assessment_ext_paul.speed = 4 then 2  
	WHEN "public".t_q_assessment_ext_paul.speed = 3 then 3 
	WHEN "public".t_q_assessment_ext_paul.speed = 2 then 4 
	WHEN "public".t_q_assessment_ext_paul.speed = 1 then 5
END AS speed, 

CASE 
	WHEN "public".t_q_assessment_ext_paul.acceleration = 5 then 1 
	WHEN "public".t_q_assessment_ext_paul.acceleration = 4 then 2  
	WHEN "public".t_q_assessment_ext_paul.acceleration = 3 then 3
	WHEN "public".t_q_assessment_ext_paul.acceleration = 2 then 4 
	WHEN "public".t_q_assessment_ext_paul.acceleration = 1 then 5
END AS acceleration,

CASE 
	WHEN "public".t_q_assessment_ext_paul.gap = 5 then 1 
	WHEN "public".t_q_assessment_ext_paul.gap = 4 then 2  
	WHEN "public".t_q_assessment_ext_paul.gap = 3 then 3 
	WHEN "public".t_q_assessment_ext_paul.gap = 2 then 4 
	WHEN "public".t_q_assessment_ext_paul.gap = 1 then 5
END AS gap,

CASE 
	WHEN "public".t_q_assessment_ext_paul.curve = 5 then 1 
	WHEN "public".t_q_assessment_ext_paul.curve = 4 then 2  
	WHEN "public".t_q_assessment_ext_paul.curve = 3 then 3 
	WHEN "public".t_q_assessment_ext_paul.curve = 2 then 4 
	WHEN "public".t_q_assessment_ext_paul.curve = 1 then 5
END AS curve,

CASE 
	WHEN "public".t_q_assessment_ext_paul.mirror_ext = 5 then 1 
	WHEN "public".t_q_assessment_ext_paul.mirror_ext = 4 then 2  
	WHEN "public".t_q_assessment_ext_paul.mirror_ext = 3 then 3 
	WHEN "public".t_q_assessment_ext_paul.mirror_ext = 2 then 4 
	WHEN "public".t_q_assessment_ext_paul.mirror_ext = 1 then 5
END AS mirror_ext,

CASE 
	WHEN "public".t_q_assessment_ext_paul.mirror_int = 5 then 1 
	WHEN "public".t_q_assessment_ext_paul.mirror_int = 4 then 2  
	WHEN "public".t_q_assessment_ext_paul.mirror_int = 3 then 3 
	WHEN "public".t_q_assessment_ext_paul.mirror_int = 2 then 4 
	WHEN "public".t_q_assessment_ext_paul.mirror_int = 1 then 5
END AS mirror_int,

CASE 
	WHEN "public".t_q_assessment_ext_paul.shouldercheck = 5 then 1 
	WHEN "public".t_q_assessment_ext_paul.shouldercheck = 4 then 2  
	WHEN "public".t_q_assessment_ext_paul.shouldercheck = 3 then 3 
	WHEN "public".t_q_assessment_ext_paul.shouldercheck = 2 then 4 
	WHEN "public".t_q_assessment_ext_paul.shouldercheck = 1 then 5
END AS shouldercheck,

"public".t_q_assessment_ext_paul.comment

FROM
"public".t_q_assessment_ext_paul
