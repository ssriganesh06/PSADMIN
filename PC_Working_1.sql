SELECT * FROM ( SELECT  PRCSINSTANCE,PRCSTYPE, PRCSNAME,BEGINDTTM,ENDDTTM, TO_CHAR(TRUNC(SYSDATE)+(ENDDTTM-BEGINDTTM),'HH24:MI:SS') EXEC_TIME
FROM   PSPRCSRQST 
WHERE TO_CHAR(TRUNC(SYSDATE)+(ENDDTTM-BEGINDTTM),'HH24:MI:SS') IS NOT NULL
AND PRCSNAME='OPT_BI_CA_AE'
ORDER BY EXEC_TIME DESC)
=================================================================================================

Billing - 
select * from ps_INTFC_BI_HDR where process_instance='399435'

 intfc_id='9942'
 
select * from ps_bi_hdr where intfc_id='9942'

select invoice,bill_to_cust_id,invoice_dt,due_dt from PS_BI_HDR where invoice in (select invoice from PS_INTFC_BI_AD_CMP
where intfc_id in ('9942', '9941','9945', '9946'))
and bill_status='RDY';


select * from PS_INTFC_BI_AD_CMP


select * from PS_BI_line where invoice in (select invoice from PS_INTFC_BI_AD_CMP
where intfc_id in ('9942', '9941','9945'))


select * from ps_bi_hdr where contract_num='CON000000005731' 
invoice ='TMP-0000003880'


select * from ps_bi_hdr where invoice = 'TMP-0000003879'

select process_instance, invoice from ps_bi_hdr where contract_num='CON000000005729'


SELECT * FROM PS_PROJ_RESOURCE WHERE PROJECT_ID = '010000000006126'

SELECT BUSINESS_UNIT, contract_num, PROJECT_ID,emplid,ACTIVITY_ID,ANALYSIS_TYPE,RESOURCE_QUANTITY,RESOURCE_AMOUNT,res_user4, priced_rate,TRANS_DT,BI_DISTRIB_STATUS  
FROM PS_PROJ_RESOURCE WHERE PROJECT_ID = '010000000006126';

SELECT * FROM PS_BI_HDR WHERE CONTRACT_NUM='CON000000005731'
 WHERE INVOICE='TMP-0000003880'


Select * from ps_opt_bi_rl_map2 where checked='N' 

SELECT * FROM PS_BI_IVC_NUM WHERE IVC_NUM_ID = 'STDINV'

SELECT * from PS_BI_IVC_NUM_PRE where BUSINESS_UNIT = 'BI002' AND INVOICE = 'TMP-0000003879'

=========================================================================================================


SELECT * FROM PS_OPT_PC_RULE_HDR

SELECT PROJECT_ID,OPT_PC_RULE_ID,OPT_PC_RULE_TYPE, COUNT(*) 
FROM PS_OPT_PC_RULE_HDR
GROUP BY PROJECT_ID,OPT_PC_RULE_ID,OPT_PC_RULE_TYPE
ORDER BY PROJECT_ID


SELECT  OPT_PC_RULE_ID, COUNT(*) 
FROM PS_OPT_PC_RULE_HDR
GROUP BY OPT_PC_RULE_ID






