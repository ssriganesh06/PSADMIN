SELECT * FROM PS_OPT_ACT_CRS_REF WHERE PROJECT_ID='010000000012696';
delete from  PS_OPT_ACT_CRS_REF WHERE PROJECT_ID='010000000012696';

SELECT * FROM PS_PROJ_ACTIVITY WHERE PROJECT_ID='010000000012696';
delete from  PS_PROJ_ACTIVITY WHERE PROJECT_ID='010000000012696';


--SELECT * FROM PS_PROJECT_TEAM WHERE PROJECT_ID='010000000012696';
--delete from PS_PROJECT_TEAM wHERE PROJECT_ID='010000000012696';


SELECT * FROM PS_PROJ_ACT_TEAM WHERE PROJECT_ID='010000000012696';
delete  FROM PS_PROJ_ACT_TEAM WHERE PROJECT_ID='010000000012696';


SELECT * FROM PS_PROJ_ACT_STATUS WHERE PROJECT_ID='010000000012696';
delete  FROM PS_PROJ_ACT_STATUS WHERE PROJECT_ID='010000000012696';


SELECT * FROM PS_PROJ_ACT_DESCR WHERE PROJECT_ID='010000000012696';
delete  FROM PS_PROJ_ACT_DESCR WHERE PROJECT_ID='010000000012696';