SELECT COUNT(*)  FROM PS_OPT_AR_GP_EXTI  ;
SELECT COUNT(*) FROM  PS_OPT_AR_GP_MAST  ;
SELECT COUNT(*) FROM PS_OPT_AR_GP_TRAN  ;
SELECT COUNT(*) FROM PS_OPT_AR_GP_UID ; 

SELECT * FROM PS_CUST_DATA  where deposit_bu = 'AR003' and deposit_id in ('1','2');

SELECT * FROM PS_CUST_DATA WHERE deposit_bu = 'AR001'  and deposit_id in ('1905','1906','1907');

SELECT * FROM PS_CUST_DATA WHERE BUSINESS_UNIT = 'AR001' AND CUST_ID IN ('0000000836','0000000313');

SELECT count(*) FROM PS_CUST_DATA  WHERE BUSINESS_UNIT = 'AR003' AND ITEM BETWEEN '100693' AND '145712' or ITEM BETWEEN '75944' AND '99184';

update PS_OPT_EMAIL_LIST
set email_to='sarah.a.griffith@optum.com;kelly.lyman@optum.com;'
where prcsname='OPT_DC_BILNG'
and seq_num in (1,2)

select * from PS_OPT_EMAIL_LIST

update PS_OPT_EMAIL_LIST
set email_to='kelly.lyman@optum.com'
where prcsname='OPT_DC_BILNG'



update PS_OPT_EMAIL_LIST
set email_to='kelly.lyman@optum.com'

