---RATE SET BLANK TESTING

UPDATE PS_CA_RATE
SET PC_TEMPLATE_ID = ' '
WHERE (CONTRACT_NUM , CONTRACT_LINE_NUM) IN (SELECT DISTINCT CONTRACT_NUM ,CONTRACT_LINE_NUM FROM PS_CA_DETAIL_PROJ
WHERE PROJECT_ID IN ('000000000000845',
'010000000000801',
'010000000010700',
'000000000000194',
'000000000000239',
'000000000000242'))


============================================================
---PC, Amount and TBP based Contracts 

select pricing_structure,count(*) from ps_CA_DETAIL
where contract_num between 'CON900000003179' AND 'CON900000005331'
GROUP BY A.pricing_structure ORDER BY 1;

select a.pricing_structure,A.CA_TXN_SOURCE, count(*) from ps_CA_DETAIL awhere a.contract_num between 'CON900000003179' AND 'CON900000005331'
gROUP BY A.pricing_structure,A.CA_TXN_SOURCE ORDER BY 1


=======================================================
---Transaction Volume
select A.analysis_type,COUNT(*) from ps_proj_resource A
where a.PROJECT_ID BETWEEN '000000000000912' and '000000000002921'
and  A.analysis_type IN( 'TLX','ACT','FTC')
GROUP BY A.analysis_type ORDER BY 1
==================================================================
SELECT * FROM PS_PROJ_RESOURCE
WHERE PROJECT_ID BETWEEN '000000000000913' AND '000000000000948'
AND RESOURCE_ID BETWEEN '10000000000001' AND '10000000002088'
AND LENGTH(RESOURCE_ID) <> 15
ORDER BY 4;


=====================================================================================
--update put the Rate Set Value “STANDARD” back on the contracts. 
UPDATE PS_CA_RATE
SET PC_TEMPLATE_ID = 'STANDARD'
WHERE (CONTRACT_NUM , CONTRACT_LINE_NUM) IN (SELECT DISTINCT CONTRACT_NUM ,CONTRACT_LINE_NUM FROM PS_CA_DETAIL_PROJ
WHERE PROJECT_ID IN ('000000000000845',
'010000000000801',
'010000000010700',
'000000000000194',
'000000000000239',
'000000000000242'))


=================================
To find the summary project Length

SELECT N.DESCR254, LENGTH(N.DESCR254) FROM PS_PROJECT_DESCR N , PS_PROJECT B
WHERE B.SUMMARY_PRJ = 'Y'
AND N.BUSINESS_UNIT=B.BUSINESS_UNIT 
AND N.PROJECT_ID=B.PROJECT_ID
==============================


To update Chartfield values in the accounting Rule table


Update PS_PSA_RULES_LN LN set LN.chartfield2 = '0000006'  where LN.business_unit = 'PC001'  AND LN.dst_use = 'EX' and exists (select 'X' from 
PS_PSA_RULES_HDR RH , PS_PSA_RULES_LVL LVL where  RH.BUSINESS_UNIT = LVL.BUSINESS_UNIT 
   AND RH.CRIT_SEQ = LVL.CRIT_SEQ 
   AND LVL.BUSINESS_UNIT = LN.BUSINESS_UNIT 
   AND LVL.CRIT_SEQ = LN.CRIT_SEQ 
   AND LVL.INTER_ORG_LEVEL = LN.INTER_ORG_LEVEL 
  AND RH.project_id ='010000000001379'
  AND RH.PROJECT_TYPE = 'INTER' )



===============================================================================================================
Update of Project manger---


SELECT * FROM PS_PROJ_TEAM_SCHED WHERE PROJECT_ID='000000000000617' and PROJ_MGR_FLAG='Y'
AND TEAM_MEMBER='000693722'

UPDATE PS_PROJ_TEAM_SCHED SET proj_mgr_flag='Y' WHERE PROJECT_ID='000000000000589'
AND TEAM_MEMBER='001114846'

update ps_project_mgr set project_manager='001114846' where PROJECT_ID='000000000000589'


=======================================================================================================================
Select *  FROM PS_PROJ_RESOURCE WHERE ANALYSIS_TYPE ='BLD' AND PROJECT_ID BETWEEN '000000000000912' AND '000000000002343' and resource_type ='LABOR';
==========================
SELECT PROJECT_ID, JOURNAL_DATE, SUM(RESOURCE_AMOUNT), COUNT(*)
FROM PS_PROJ_RESOURCE
WHERE ANALYSIS_TYPE = 'BLD'
AND JOURNAL_DATE IN ('28-SEP-16', '29-SEP-16','27-SEP-16')
AND PROJECT_ID BETWEEN '000000000000912' AND '000000000002343' 
and resource_type <> 'FIXED' 
GROUP BY PROJECT_ID, JOURNAL_DATE 
ORDER BY PROJECT_ID ;

========================================================
SELECT BUSINESS_UNIT, contract_num, PROJECT_ID,emplid,ACTIVITY_ID,ANALYSIS_TYPE,RESOURCE_QUANTITY,RESOURCE_AMOUNT,res_user4, priced_rate,TRANS_DT,BI_DISTRIB_STATUS  FROM PS_PROJ_RESOURCE WHERE PROJECT_ID = '010000000006125';
====================
Combo table 

select COUNT(*) from PS_COMBO_DATA_TBL where VALID_CODE <> 'V';
===========================
Project Vs Contract Type
select * from ps_opt_ca_prj_type

==========================================================================
Tranaaction tables
SELECT * FROM PS_INTFC_PROJ_RES
SELECT * FROM ps_PROJ_RES_TMP

===========================
SELECT DESCR254, COUNT(*) FROM PS_PROJECT_DESCR
GROUP BY DESCR254
HAVING COUNT(*) > 1

====================================================================================
Combo error table to identify the dept and combo error

select distinct message_parm , message_parm2 , message_parm3 from ps_TSE_PC_LINE_FLD where tse_proc_instance = '402156';
=======================================================================================================================
Project Costing Error Table - 
select * from ps_opt_dc_pcld_err

====================================================================================================================

------invalid chartfield combination error
select * from PS_TSE_PC_LINE_FLD WHERE TSE_PROC_INSTANCE =''
----------------------------------------------------------------
Come up with a sql to join both the records and fetch the data dump from Jrnl_Ln.

Keys to join between Jrnl_Ln A and ps_ca_acctg_ln_pc B

A.business_unit = B.business_unit_gl
A.jounal_id = B.journal_id
A.journal_line = B.journal_line
And B.process_instance = ‘’



------------------------------------------------------
Report to Sarah

select * from ps_ca_acctg_ln_pc where contract_num='CON000000001839'
and project_id='000000000000702' 
and resource_id in ('10000000001185','10000000001126')
and process_instance='333725'
-------------------------------------------------
select emailid from PSOPRDEFN where emplid =(select A.project_manager from PS_PROJECT_MGR A where A.BUSINESS_UNIT= 'PC001' AND A.project_id= '000000000000814' and  A.effdt=(select MAX(effdt) from PS_PROJECT_MGR B where B.BUSINESS_UNIT=A.BUSINESS_UNIT   and B.project_id=A.project_id));

select emailid from PSOPRDEFN where emplid =(select A.project_manager from PS_PROJECT_MGR A where A.BUSINESS_UNIT= 'PC001' AND A.project_id= '000000000000814'  and  A.effdt=(select MAX(effdt) from PS_PROJECT_MGR B where B.BUSINESS_UNIT=A.BUSINESS_UNIT   and B.project_id=A.project_id))

select * from ps_opt_bi_wrk_eml where emailid = 'sarah.a.griffith@optum.com;'

select * from ps_run_bi_prntivc where run_cntl_id = 'BI_HEOR';

----------------------------------------
select * from ps_proj_resource where business_unit = 'PC001' and project_id in ('000000000000702') and activity_id = 'FIXEDFEE' ;

select * from ps_ca_acctg_ln_pc where business_unit = 'PC001' and project_id = '000000000000702' and activity_id = 'FIXEDFEE';

select * from ps_proj_resource where business_unit = 'PC001' and project_id = '000000000000814' and foreign_amount = 25000;

select * from ps_bi_hdr where contract_num = 'CON000000001839';

------------------------------------------
select project_id , activity_id , resource_amount, gl_distrib_status, bi_distrib_status , process_instance , accounting_dt , resource_id from ps_proj_resource where business_unit = 'PC001' and project_id in ('010000000000264','000000000000316','000000000000702','000000000000814') and analysis_type = 'WTO';


--Vinod send this file to Sarah

select distinct project_id , contract_num , contract_line_num  from ps_ca_acctg_ln_pc where process_instance in ('333555','333558','333561','333564','333567')

select * from ps_ca_acctg_ln_pc where process_instance in ('333555','333558','333561','333564','333567') order by contract_num;

------------
select * from ps_project_descr where descr254='EligibilityExchange'
---
To find the Project notes of the Project
select max(project_id) from ps_project_descr where LENGTH(DESCRLONG) <> 0

---- update OU for one of the Oraganization Project
No of rows selected
select * from ps_psa_orgprj_defn where prj_level3_cf_val = '06344'

----Insert this rows with the new effective date 01-AUG-2016'
select business_unit, project_id, '01-AUG-2016', prj_level1_cf_val,prj_level2_cf_val,'06150',prj_level4_cf_val,
prj_level5_cf_val from ps_psa_orgprj_defn
where prj_level3_cf_val = '06344'


---
select * from ps_proj_resource A , 
ps_project B   where A.BUSINESS_UNIT = B.BUSINESS_UNIT  
AND A.PROJECT_ID = B.PROJECT_ID  and A.business_unit = 'PC001' and upper(B.PC_SCH_FIELD7)  
in  (upper('HCD-AI-CIC'),upper('PG-AI-PCM'),upper('PG-AI-TS'),upper('HCD-AI-NTW')) and A.analysis_type = 'TLX';



--No Rows Priced based on Process Instance
select A.analysis_type,A.BI_DISTRIB_STATUS,COUNT(*) from ps_proj_resource A10,11
where a.process_instance='396712'
and  A.analysis_type IN( 'TLX','ACT','FTC')
GROUP BY A.analysis_type, A.BI_DISTRIB_STATUS ORDER BY 1

--No Rows Priced based on Process Instance
SELECT COUNT(*) FROM PS_PROJ_RESOURCE where PROCESS_INSTANCE='396712'


--PC Accounting Role
SELECT A.PROJECT_ID,B.PRODUCT,A.RESOURCE_TYPE FROM PS_PSA_RULES_HDR A,PS_PSA_RULES_LN B  WHERE A.CRIT_SEQ =B.CRIT_SEQ
and A.PROJECT_ID BETWEEN '000000000000843' AND '000000000001842'
--and A.RESOURCE_TYPE='FIXED'
and B.DST_USE='REV'

---- No of rows priced
select A.analysis_type, COUNT(*) from ps_proj_resource A , 
ps_project B   where A.BUSINESS_UNIT = B.BUSINESS_UNIT  
AND A.PROJECT_ID = B.PROJECT_ID  and A.business_unit = 'PC001' and upper(B.PC_SCH_FIELD7)  
in  (upper('HCD-AI-CIC'),upper('PG-AI-PCM'),upper('PG-AI-TS'),upper('HCD-AI-NTW')) 
and A.analysis_type IN( 'TLX','ACT','FTC')
AND BI_DISTRIB_STATUS = 'P'
GROUP BY A.analysis_type ORDER BY 1

--NO OF ROWS PRICED AND NOT PRICED
select  A.analysis_type,A.BI_DISTRIB_STATUS,COUNT(*) from ps_proj_resource A , 
ps_project B   where A.BUSINESS_UNIT = B.BUSINESS_UNIT  
AND A.PROJECT_ID = B.PROJECT_ID  and A.business_unit = 'PC001' and upper(B.PC_SCH_FIELD7)  
in  (upper('HCD-AI-CIC'),upper('PG-AI-PCM'),upper('PG-AI-TS'),upper('HCD-AI-NTW')) 
and A.analysis_type IN( 'TLX','ACT','FTC')
--AND BI_DISTRIB_STATUS = 'P'
GROUP BY A.analysis_type, A.BI_DISTRIB_STATUS ORDER BY 1


---- No of rows priced
select COUNT(*) from ps_proj_resource A , 
ps_project B   where A.BUSINESS_UNIT = B.BUSINESS_UNIT  
AND A.PROJECT_ID = B.PROJECT_ID  and A.business_unit = 'PC001' and upper(B.PC_SCH_FIELD7)  
in  (upper('HCD-AI-CIC'),upper('PG-AI-PCM'),upper('PG-AI-TS'),upper('HCD-AI-NTW')) and A.analysis_type = 'EXP'
AND BI_DISTRIB_STATUS = 'P'

--Number rows loaded ACT, FTC, TLX
select COUNT(*) from ps_proj_resource A , 
ps_project B   where A.BUSINESS_UNIT = B.BUSINESS_UNIT  
AND A.PROJECT_ID = B.PROJECT_ID  and A.business_unit = 'PC001' and upper(B.PC_SCH_FIELD7)  
in  (upper('HCD-AI-CIC'),upper('PG-AI-PCM'),upper('PG-AI-TS'),upper('HCD-AI-NTW')) and A.analysis_type = 'TLX'



SELECT A.BUSINESS_UNIT,A.PROJECT_ID,A.ACTIVITY_ID,A.ANALYSIS_TYPE,A.RESOURCE_CATEGORY,
A.RESOURCE_SUB_CAT,A.RES_USER4,A.FOREIGN_AMOUNT, A.BI_DISTRIB_STATUS from ps_proj_resource A , 
ps_project B   where A.BUSINESS_UNIT = B.BUSINESS_UNIT  
AND A.PROJECT_ID = B.PROJECT_ID  and A.business_unit = 'PC001' and upper(B.PC_SCH_FIELD7)  
in  (upper('HCD-AI-CIC'),upper('PG-AI-PCM'),upper('PG-AI-TS'),upper('HCD-AI-NTW'))
AND BI_DISTRIB_STATUS = 'P'


SELECT COUNT(*)  from ps_proj_resource A , 
ps_project B   where A.BUSINESS_UNIT = B.BUSINESS_UNIT  
AND A.PROJECT_ID = B.PROJECT_ID  and A.business_unit = 'PC001' and upper(B.PC_SCH_FIELD7)  
in  (upper('HCD-AI-CIC'),upper('PG-AI-PCM'),upper('PG-AI-TS'),upper('HCD-AI-NTW'))
AND BI_DISTRIB_STATUS = 'N'

--SQL to retreive timesheet and expense loaded - timesheet/expense/priced transactions for the new projects loaded as part of conversion
select A.business_unit as "Business Unit" , A.project_id as "PeopleSoft Project Id" ,C.opt_source_sys_id as "Source System Id", C.OPT_PRJ_CRS_REFID as "Project Cross 
Ref ID",B.DESCR as "Project DESCR",L.DESCR as "Descr",C.ACTIVITY_ID as "Peoplesoft Activity Id",C.OPT_ACT_CRS_REFID as "Activity Cross Reference ID" , 
A.resource_id as "Trans ID" , A.ANALYSIS_TYPE , A.RESOURCE_TYPE , A.RESOURCE_CATEGORY,A.RESOURCE_SUB_CAT ,A.EMPLID as "PeopleSoft Employee Id", M.Name as "Employee 
Name",A.RES_USER4 as "Billing Rule Id",
A.RESOURCE_QUANTITY ,A.RESOURCE_amount ,A.FOREIGN_CURRENCY as "Currency CD" , A.FOREIGN_AMOUNT as "Foreign Amount",A.TIME_SHEET_ID , A.SHEET_ID ,TO_CHAR
(A.dttm_stamp,'MM/DD/YYYY HH24:MI') as "dttm_stamp" , B.PC_SCH_FIELD7 as "Node", 
to_char(A.TRANS_DT, 'mm/dd/yyyy') as "Transaction Date",to_char(A.ACCOUNTING_DT, 'mm/dd/yyyy') as "Accounting Date",A.BI_DISTRIB_STATUS , A.GL_DISTRIB_STATUS from 
ps_proj_resource A , 
ps_project B , PS_OPT_ACT_CRS_REF C,ps_project_status K , ps_proj_status_tbl L,ps_personal_data M   where A.BUSINESS_UNIT = B.BUSINESS_UNIT  
AND A.PROJECT_ID = B.PROJECT_ID AND A.BUSINESS_UNIT = C.BUSINESS_UNIT AND A.PROJECT_ID = C.PROJECT_ID AND A.ACTIVITY_ID = C.ACTIVITY_ID 
AND A.BUSINESS_UNIT = K.BUSINESS_UNIT AND A.PROJECT_ID = K.PROJECT_ID AND A.EMPLID = M.EMPLID and  A.business_unit = 'PC001' and upper(B.PC_SCH_FIELD7)  
in  (upper('HCD-AI-CIC'),upper('PG-AI-PCM'),upper('PG-AI-TS'),upper('HCD-AI-NTW'))
AND ( K.EFFDT = 
        (SELECT MAX(A_ED.EFFDT) FROM PS_PROJECT_STATUS A_ED 
        WHERE K.BUSINESS_UNIT = A_ED.BUSINESS_UNIT 
          AND K.PROJECT_ID = A_ED.PROJECT_ID 
          AND A_ED.EFFDT <= SYSDATE) 
    AND K.EFFSEQ = 
        (SELECT MAX(A_ES.EFFSEQ) FROM PS_PROJECT_STATUS A_ES 
        WHERE K.BUSINESS_UNIT = A_ES.BUSINESS_UNIT 
          AND K.PROJECT_ID = A_ES.PROJECT_ID 
          AND K.EFFDT = A_ES.EFFDT) 
      AND L.SETID = 'OPTUM'
     AND L.PROJECT_STATUS = K.PROJECT_STATUS 
     AND L.EFFDT = 
        (SELECT MAX(B_ED.EFFDT) FROM PS_PROJ_STATUS_TBL B_ED 
        WHERE L.SETID = B_ED.SETID 
          AND L.PROJECT_STATUS = B_ED.PROJECT_STATUS 
          AND B_ED.EFFDT <= SYSDATE) )
         Order by A.business_unit , A.project_id

--Decimal point round off issue
----Proj resource table with 3 decimal points
SELECT PROJECT_ID,ACTIVITY_ID,CONTRACT_NUM,RESOURCE_AMOUNT,RESOURCE_ID,ANALYSIS_TYPE,GL_DISTRIB_STATUS
FROM PS_PROJ_RESOURCE WHERE  FLOOR(RESOURCE_AMOUNT*100)!=RESOURCE_AMOUNT*100
and project_id='000000000000481' and GL_DISTRIB_STATUS = 'D'

--Alan Query (OPTFO_JE_CA_ACCTG_LN_PC_3D)		
SELECT A.FISCAL_YEAR, A.ACCOUNTING_PERIOD, A.BUSINESS_UNIT, A.JOURNAL_ID, TO_CHAR(A.JOURNAL_DATE,'YYYY-MM-DD'),
     TO_CHAR(A.ACCOUNTING_DT,'YYYY-MM-DD'), A.GL_DISTRIB_STATUS, A.PROCESS_INSTANCE, A.ACCOUNT, A.CLASS_FLD, 
     A.OPERATING_UNIT, A.DEPTID, A.PROJECT_ID, A.CURRENCY_CD, A.AMOUNT, A.CONTRACT_NUM, B.BILL_TO_CUST_ID,
      TO_CHAR(CAST((A.DTTM_STAMP) AS TIMESTAMP),'YYYY-MM-DD-HH24.MI.SS.FF') 
  FROM (PS_CA_ACCTG_LN_PC A LEFT OUTER JOIN  PS_CA_CONTR_HDR B ON  A.CONTRACT_NUM = B.CONTRACT_NUM ) 
  WHERE ( A.GL_DISTRIB_STATUS = 'N' ) 
  and project_id='000000000000481'
  ORDER BY 18 DESC, 10, 11, 9 

select * from PS_CA_ACCTG_LN_PC where FLOOR(AMOUNT*100)!=AMOUNT*100
 and project_id='000000000000481'

select project_id , activity_id , resource_id ,analysis_type,emplid , resource_quantity,resource_amount,dttm_stamp , process_instance,gl_distrib_status from ps_proj_resource where business_unit = 'PC001' and  FLOOR(resource_amount*100)!=resource_amount*100 order by dttm_stamp desc;

select project_id,activity_id,resource_id,analysis_type,emplid,resource_quantity,resource_amount,dttm_stamp,process_instance from 
ps_proj_resource where business_unit='PC001' and project_id=''

select * from ps_project where project_id='000000000000481'

select * from ps_proj_resource where project_id='000000000000481'

SELECT * FROM PS_PROJ_RESOURCE WHERE PROJECT_ID='000000000000481'


SELECT PROJECT_ID,ACTIVITY_ID,CONTRACT_NUM,RESOURCE_AMOUNT,RESOURCE_ID,ANALYSIS_TYPE,GL_DISTRIB_STATUS
FROM PS_PROJ_RESOURCE WHERE  FLOOR(RESOURCE_AMOUNT*100)!=RESOURCE_AMOUNT*100
and project_id='000000000000481' and GL_DISTRIB_STATUS = 'D'


SELECT PROJECT_ID,ACTIVITY_ID,CONTRACT_NUM,RESOURCE_AMOUNT,RESOURCE_ID,ANALYSIS_TYPE,GL_DISTRIB_STATUS
FROM PS_PROJ_RESOURCE WHERE  FLOOR(RESOURCE_AMOUNT*100)!=RESOURCE_AMOUNT*100
and analysis_type <> 'FTC' and GL_distrib_status='D'


----Project costing 3 decimal rounding

	SELECT A.FISCAL_YEAR, A.ACCOUNTING_PERIOD, A.BUSINESS_UNIT, A.JOURNAL_ID, TO_CHAR(A.JOURNAL_DATE,'YYYY-MM-DD'), TO_CHAR(A.ACCOUNTING_DT,'YYYY-MM-DD'), A.GL_DISTRIB_STATUS, A.PROCESS_INSTANCE, A.ACCOUNT, A.CLASS_FLD, A.OPERATING_UNIT, A.DEPTID, A.PROJECT_ID, A.CURRENCY_CD, A.AMOUNT, A.CONTRACT_NUM, B.BILL_TO_CUST_ID, TO_CHAR(CAST((A.DTTM_STAMP) AS TIMESTAMP),'YYYY-MM-DD-HH24.MI.SS.FF') 
  FROM (PS_CA_ACCTG_LN_PC A LEFT OUTER JOIN  PS_CA_CONTR_HDR B ON  A.CONTRACT_NUM = B.CONTRACT_NUM ) 
  WHERE ( A.GL_DISTRIB_STATUS = 'N' ) 
  ORDER BY 18 DESC, 10, 11, 9 


-----Proj Resource

select project_id,actiity_id,resource_id,analysis_type,emplid,resource_quantity,resource_amount,dttm_stamo,process_instance from ps_proj_resource where business_unit='PC001'
AND PROJECT_ID='' AND ACTIVITY_ID='' and resource_id =''



