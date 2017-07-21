DROP VIEW IF EXISTS v_fb_vip CASCADE;
CREATE OR REPLACE VIEW v_fb_vip AS

SELECT 
t_fb_vip."Vp",
t_personendaten."Alter",
t_personendaten."Geschlecht",
t_fb_vip."VIP_Testdauer",
t_fb_vip."VIP_Item01",
t_fb_vip."VIP_Item02",
t_fb_vip."VIP_Item03",
t_fb_vip."VIP_Item04",
t_fb_vip."VIP_Item05",
t_fb_vip."VIP_Item06",
t_fb_vip."VIP_Item07",
t_fb_vip."VIP_Item08",
t_fb_vip."VIP_Item09",
t_fb_vip."VIP_Item10",
t_fb_vip."VIP_Item11",
t_fb_vip."VIP_Item12",
t_fb_vip."VIP_Item13",
t_fb_vip."VIP_Item14",
t_fb_vip."VIP_Item15",
t_fb_vip."VIP_Item16",
t_fb_vip."VIP_Item17",
t_fb_vip."VIP_Item18",
t_fb_vip."VIP_Item19",
t_fb_vip."VIP_Item20",
t_fb_vip."VIP_Item21",
t_fb_vip."VIP_Item22",
t_fb_vip."VIP_Item23",
t_fb_vip."VIP_Item24",
t_fb_vip."VIP_Item25",
t_fb_vip."VIP_Item26",
t_fb_vip."VIP_Item27",
t_fb_vip."VIP_Item28",
t_fb_vip."VIP_Item29",
t_fb_vip."VIP_Item30",
t_fb_vip."VIP_Item31",
t_fb_vip."VIP_Item32",
t_fb_vip."VIP_Item33",
t_fb_vip."VIP_Item34",
t_fb_vip."VIP_Item35",
t_fb_vip."VIP_Item36",
t_fb_vip."VIP_Item37",
t_fb_vip."VIP_Item38",
t_fb_vip."VIP_Item39",
t_fb_vip."VIP_Item40",
t_fb_vip."VIP_Item41",
t_fb_vip."VIP_Item42",
t_fb_vip."VIP_Item43",
t_fb_vip."VIP_Item44",
t_fb_vip."VIP_Item45",
t_fb_vip."VIP_Item46",
t_fb_vip."VIP_Item47",
t_fb_vip."VIP_Item48",
t_fb_vip."VIP_Item49",
t_fb_vip."VIP_RW_AI",
t_fb_vip."VIP_RW_EA",
t_fb_vip."VIP_RW_SE",
t_fb_vip."VIP_RW_US",
t_fb_vip."VIP_PR_AI",
t_fb_vip."VIP_PR_EA",
t_fb_vip."VIP_PR_SE",
t_fb_vip."VIP_PR_US",
t_fb_vip."VIP_T_AI",
t_fb_vip."VIP_T_EA",
t_fb_vip."VIP_T_SE",
t_fb_vip."VIP_T_US",
t_fb_vip."VIP_Z_AI",
t_fb_vip."VIP_Z_EA",
t_fb_vip."VIP_Z_SE",
t_fb_vip."VIP_Z_US",
t_fb_vip."VIP_IQ_AI",
t_fb_vip."VIP_IQ_EA",
t_fb_vip."VIP_IQ_SE",
t_fb_vip."VIP_IQ_US",
t_fb_vip."VIP_STAW_AI",
t_fb_vip."VIP_STAW_EA",
t_fb_vip."VIP_STAW_SE",
t_fb_vip."VIP_STAW_US",
t_fb_vip."VIP_STE_AI",
t_fb_vip."VIP_STE_EA",
t_fb_vip."VIP_STE_SE",
t_fb_vip."VIP_STE_US",
t_fb_vip."VIP_C11_AI",
t_fb_vip."VIP_C11_EA",
t_fb_vip."VIP_C11_SE",
t_fb_vip."VIP_C11_US",
--
CASE 
	WHEN t_fb_vip."VIP_PR_AI" <= 25 THEN 'PR_AI_0-25'
	WHEN t_fb_vip."VIP_PR_AI" >= 75 THEN 'PR_AI_75-100'
	ELSE 'PR_AI_25-75'
END AS "check_VIP_PR_AI_Q",

CASE 
	WHEN t_fb_vip."VIP_PR_EA" <= 25 THEN 'PR_EA_0-25'
	WHEN t_fb_vip."VIP_PR_EA" >= 75 THEN 'PR_EA_75-100'
	ELSE 'PR_EA_25-75'
END AS "check_VIP_PR_EA_Q",

	
CASE 
	WHEN t_fb_vip."VIP_PR_SE" <= 25 THEN 'PR_SE_0-25'
	WHEN t_fb_vip."VIP_PR_SE" >= 75 THEN 'PR_SE_75-100'
	ELSE 'PR_SE_25-75'
END AS "check_VIP_PR_SE_Q",

CASE 
	WHEN t_fb_vip."VIP_PR_US" <= 25 THEN 'PR_US_0-25'
	WHEN t_fb_vip."VIP_PR_US" >= 75 THEN 'PR_US_75-100'
	ELSE 'PR_US_25-75'
END AS "check_VIP_PR_US_Q"

FROM
t_fb_vip
LEFT JOIN t_personendaten ON t_fb_vip."Vp" = t_personendaten."Vp"