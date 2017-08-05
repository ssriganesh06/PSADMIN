select * from ps_ 

000000000000526


select *  from PS_PSA_RULES_HDR where business_unit = 'PC001' and project_id in ('000000000000286','000000000000526')

select *  from PS_PSA_RULES_HDR where business_unit = 'PC001' and project_id='000000000000526'
SELECT * FROM PS_PSA_RULES_LVL WHERE  crit_seq in ('1029','1293','1488')
SELECT * FROM PS_PSA_RULES_LN WHERE  crit_seq in ('1029','1293','1488')


DELETE  from PS_PSA_RULES_HDR where business_unit = 'PC001' and project_id='000000000000526';
DELETE FROM PS_PSA_RULES_LVL WHERE  crit_seq in ('1029','1293','1488');
DELETE FROM PS_PSA_RULES_LN WHERE  crit_seq in ('1029','1293','1488');


select *  from PS_PSA_RULES_HDR where business_unit = 'PC001' and project_id='000000000000286'
SELECT * FROM PS_PSA_RULES_LVL WHERE  crit_seq in ('263','264','266','267')
SELECT * FROM PS_PSA_RULES_LN WHERE  crit_seq in ('263','264','266','267')

and project_type in ('COMMP')  and analysis_type = 'BIL';

select * from PS_BUS_UNIT_TBL_PC 

UPDATE PS_BUS_UNIT_TBL_PC SET CRIT_SEQ ='1625'


select max(CRIT_SEQ) FROM PS_PSA_RULES_HDR
