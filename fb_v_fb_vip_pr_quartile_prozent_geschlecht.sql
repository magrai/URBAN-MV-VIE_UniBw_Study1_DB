DROP VIEW IF EXISTS v_fb_vip_pr_quartile_prozent_geschlecht;
CREATE OR REPLACE VIEW v_fb_vip_pr_quartile_prozent_geschlecht AS

SELECT

"public".t_personendaten."Geschlecht" as "Geschlecht",
'0 bis 25%' as "Prozentrang",
100/30 * COUNT (
	CASE
		WHEN 
		t_fb_vip_ohne19."VIP_PR_AI" <= 25
		THEN 1
	END) as "AI",

100/30 * COUNT (
	CASE
		WHEN 
		t_fb_vip_ohne19."VIP_PR_EA" <= 25
		THEN 1
	END) as "EA",

100/30 * COUNT (
	CASE
		WHEN 
		t_fb_vip_ohne19."VIP_PR_SE" <= 25
		THEN 1
	END) as "SE",

100/30 * COUNT (
	CASE
		WHEN 
		t_fb_vip_ohne19."VIP_PR_US" <= 25
		THEN 1
	END) as "US"

FROM
t_fb_vip_ohne19
LEFT JOIN "public".t_personendaten ON "public".t_fb_vip_ohne19."Vp" = "public".t_personendaten."Vp"

GROUP BY
"public".t_personendaten."Geschlecht"

UNION

SELECT

"public".t_personendaten."Geschlecht" as "Geschlecht",
'25 bis 50%' as "Prozentrang",
100/30 * COUNT (
	CASE
		WHEN 
		t_fb_vip_ohne19."VIP_PR_AI" > 25 AND
		t_fb_vip_ohne19."VIP_PR_AI" <= 50
		THEN 1
	END) as "AI",

100/30 * COUNT (
	CASE
		WHEN 
		t_fb_vip_ohne19."VIP_PR_EA" > 25 AND
		t_fb_vip_ohne19."VIP_PR_EA" <= 50
		THEN 1
	END) as "EA",

100/30 * COUNT (
	CASE
		WHEN 
		t_fb_vip_ohne19."VIP_PR_SE" > 25 AND
		t_fb_vip_ohne19."VIP_PR_SE" <= 50
		THEN 1
	END) as "SE",

100/30 * COUNT (
	CASE
		WHEN 
		t_fb_vip_ohne19."VIP_PR_US" > 25 AND
		t_fb_vip_ohne19."VIP_PR_US" <= 50
		THEN 1
	END) as "US"

FROM
t_fb_vip_ohne19
LEFT JOIN "public".t_personendaten ON "public".t_fb_vip_ohne19."Vp" = "public".t_personendaten."Vp"

GROUP BY
"public".t_personendaten."Geschlecht"

UNION

SELECT

"public".t_personendaten."Geschlecht" as "Geschlecht",
'50 bis 75%' as "Prozentrang",
100/30 * COUNT (
	CASE
		WHEN 
		t_fb_vip_ohne19."VIP_PR_AI" > 50 AND
		t_fb_vip_ohne19."VIP_PR_AI" <= 75
		THEN 1
	END) as "AI",

100/30 * COUNT (
	CASE
		WHEN 
		t_fb_vip_ohne19."VIP_PR_EA" > 50 AND
		t_fb_vip_ohne19."VIP_PR_EA" <= 75
		THEN 1
	END) as "EA",

100/30 * COUNT (
	CASE
		WHEN 
		t_fb_vip_ohne19."VIP_PR_SE" > 50 AND
		t_fb_vip_ohne19."VIP_PR_SE" <= 75
		THEN 1
	END) as "SE",

100/30 * COUNT (
	CASE
		WHEN 
		t_fb_vip_ohne19."VIP_PR_US" > 50 AND
		t_fb_vip_ohne19."VIP_PR_US" <= 75
		THEN 1
	END) as "US"

FROM
t_fb_vip_ohne19
LEFT JOIN "public".t_personendaten ON "public".t_fb_vip_ohne19."Vp" = "public".t_personendaten."Vp"

GROUP BY
"public".t_personendaten."Geschlecht"

UNION

SELECT

"public".t_personendaten."Geschlecht" as "Geschlecht",
'75 bis 100%' as "Prozentrang",
100/30 * COUNT (
	CASE
		WHEN 
		t_fb_vip_ohne19."VIP_PR_AI" > 75 AND
		t_fb_vip_ohne19."VIP_PR_AI" <= 100
		THEN 1
	END) as "AI",

100/30 * COUNT (
	CASE
		WHEN 
		t_fb_vip_ohne19."VIP_PR_EA" > 75 AND
		t_fb_vip_ohne19."VIP_PR_EA" <= 100
		THEN 1
	END) as "EA",

100/30 * COUNT (
	CASE
		WHEN 
		t_fb_vip_ohne19."VIP_PR_SE" > 75 AND
		t_fb_vip_ohne19."VIP_PR_SE" <= 100
		THEN 1
	END) as "SE",

100/30 * COUNT (
	CASE
		WHEN 
		t_fb_vip_ohne19."VIP_PR_US" > 75 AND
		t_fb_vip_ohne19."VIP_PR_US" <= 100
		THEN 1
	END) as "US"

FROM
t_fb_vip_ohne19
LEFT JOIN "public".t_personendaten ON "public".t_fb_vip_ohne19."Vp" = "public".t_personendaten."Vp"

GROUP BY
"public".t_personendaten."Geschlecht"

--

ORDER BY
"Geschlecht", "Prozentrang"