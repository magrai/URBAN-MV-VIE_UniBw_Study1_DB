DROP VIEW IF EXISTS v_q_vip_pr_quartile_prozent;
CREATE OR REPLACE VIEW v_q_vip_pr_quartile_prozent AS

SELECT

'0 bis 25%' as "Prozentrang",
100/30 * COUNT (
	CASE
		WHEN 
		t_q_vip.vip_pr_ai <= 25
		THEN 1
	END) as "AI",

100/30 * COUNT (
	CASE
		WHEN 
		t_q_vip.vip_pr_ea <= 25
		THEN 1
	END) as "EA",

100/30 * COUNT (
	CASE
		WHEN 
		t_q_vip.vip_pr_se <= 25
		THEN 1
	END) as "SE",

100/30 * COUNT (
	CASE
		WHEN 
		t_q_vip.vip_pr_us <= 25
		THEN 1
	END) as "US"

FROM
t_q_vip

UNION

SELECT

'25 bis 50%' as "Prozentrang",
100/30 * COUNT (
	CASE
		WHEN 
		t_q_vip.vip_pr_ai > 25 AND
		t_q_vip.vip_pr_ai <= 50
		THEN 1
	END) as "AI",

100/30 * COUNT (
	CASE
		WHEN 
		t_q_vip.vip_pr_ea > 25 AND
		t_q_vip.vip_pr_ea <= 50
		THEN 1
	END) as "EA",

100/30 * COUNT (
	CASE
		WHEN 
		t_q_vip.vip_pr_se > 25 AND
		t_q_vip.vip_pr_se <= 50
		THEN 1
	END) as "SE",

100/30 * COUNT (
	CASE
		WHEN 
		t_q_vip.vip_pr_us > 25 AND
		t_q_vip.vip_pr_us <= 50
		THEN 1
	END) as "US"

FROM
t_q_vip

UNION

SELECT

'50 bis 75%' as "Prozentrang",
100/30 * COUNT (
	CASE
		WHEN 
		t_q_vip.vip_pr_ai > 50 AND
		t_q_vip.vip_pr_ai <= 75
		THEN 1
	END) as "AI",

100/30 * COUNT (
	CASE
		WHEN 
		t_q_vip.vip_pr_ea > 50 AND
		t_q_vip.vip_pr_ea <= 75
		THEN 1
	END) as "EA",

100/30 * COUNT (
	CASE
		WHEN 
		t_q_vip.vip_pr_se > 50 AND
		t_q_vip.vip_pr_se <= 75
		THEN 1
	END) as "SE",

100/30 * COUNT (
	CASE
		WHEN 
		t_q_vip.vip_pr_us > 50 AND
		t_q_vip.vip_pr_us <= 75
		THEN 1
	END) as "US"

FROM
t_q_vip

UNION

SELECT

'75 bis 100%' as "Prozentrang",
100/30 * COUNT (
	CASE
		WHEN 
		t_q_vip.vip_pr_ai > 75 AND
		t_q_vip.vip_pr_ai <= 100
		THEN 1
	END) as "AI",

100/30 * COUNT (
	CASE
		WHEN 
		t_q_vip.vip_pr_ea > 75 AND
		t_q_vip.vip_pr_ea <= 100
		THEN 1
	END) as "EA",

100/30 * COUNT (
	CASE
		WHEN 
		t_q_vip.vip_pr_se > 75 AND
		t_q_vip.vip_pr_se <= 100
		THEN 1
	END) as "SE",

100/30 * COUNT (
	CASE
		WHEN 
		t_q_vip.vip_pr_us > 75 AND
		t_q_vip.vip_pr_us <= 100
		THEN 1
	END) as "US"

FROM
t_q_vip

WHERE
t_q_vip.subject_id <> 19

ORDER BY
"Prozentrang"