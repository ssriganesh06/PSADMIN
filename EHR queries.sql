SELECT * FROM PS_BI_HDR
WHERE BUSINESS_UNIT = 'BI003'
AND INVOICE IN ('0001002818','0001002819','0001002820') ;

SELECT * FROM PS_BI_LINE
WHERE BUSINESS_UNIT = 'BI003'
AND INVOICE IN ('0001002818','0001002819','0001002820') ;

SELECT * FROM PS_BI_LINE_DST_AR
WHERE BUSINESS_UNIT = 'BI003'
AND INVOICE IN ('0001002818','0001002819','0001002820') ;

SELECT * FROM PS_BI_LINE_DST
WHERE BUSINESS_UNIT = 'BI003'
AND INVOICE IN ('0001002818','0001002819','0001002820') ;

SELECT * FROM PS_BI_LINE_DST_AR
WHERE BUSINESS_UNIT = 'BI003'
AND INVOICE IN ('0001002818','0001002819','0001002820') ;

SELECT * FROM PS_BI_ACCT_ENTRY
WHERE BUSINESS_UNIT = 'BI003'
AND INVOICE IN ('0001002818','0001002819','0001002820') ;

SELECT * FROM PS_ITEM
WHERE BUSINESS_UNIT = 'AR003'
AND ITEM IN ('0001002818','0001002819','0001002820') ;

SELECT * FROM PS_PENDING_ITEM
WHERE BUSINESS_UNIT = 'AR003'
AND ITEM IN ('0001002818','0001002819','0001002820') ;

SELECT * FROM PS_PENDING_DST
WHERE BUSINESS_UNIT = 'AR003'
AND ITEM IN ('0001002818','0001002819','0001002820') ;

SELECT * FROM PS_ITEM_DST
WHERE BUSINESS_UNIT = 'AR003'
AND ITEM IN ('0001002818','0001002819','0001002820') ;


SELECT * FROM PS_AR_IDCUST_EC ;

SELECT * FROM PS_AR_DEPOSIT_EC ;
SELECT * FROM PS_AR_IDCUST_EC ;
SELECT * FROM PS_AR_IDITEM_EC ;
SELECT * FROM PS_AR_LOCKBOX_EC ;
SELECT * FROM PS_AR_PAYMENT_EC ;

SELECT A.ITEM, A.* FROM PS_PENDING_DST A
WHERE A.ITEM = '0001008556' 

--DELETE FROM PS_AR_IDCUST_EC ;
--DELETE FROM PS_AR_DEPOSIT_EC ;
--DELETE FROM PS_AR_IDCUST_EC ;
--DELETE FROM PS_AR_IDITEM_EC ;
--DELETE FROM PS_AR_LOCKBOX_EC ;
--DELETE FROM PS_AR_PAYMENT_EC ;

SELECT DISTINCT d.deposit_bu FROM ps_opt_ar_acbu_map d ,ps_ar_payment_ec b, ps_opt_ar_pyec_tbl a
WHERE a.lb_bank_trans_id=b.lb_bank_trans_id 
AND a.lockbox_id= b.lockbox_id 
AND a.lockbox_batch_id=b.lockbox_batch_id 
AND a.payment_seq_num=b.payment_seq_num 
AND d .bank_account_num= b.bank_account_num 
AND b.bank_account_num<>' ';
