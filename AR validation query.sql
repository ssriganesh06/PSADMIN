SELECT A.ACCOUNTING_DT, COUNT(*) FROM PS_BI_HDR A
WHERE A.INVOICE_DT > '01-DEC-13'
AND A.BILL_STATUS = 'INV'
AND A.INVOICE_AMOUNT <> 0
GROUP BY A.ACCOUNTING_DT ;

SELECT COUNT(*) FROM PS_PENDING_ITEM A
WHERE A.ACCOUNTING_DT > '15-NOV-13'
AND ENTRY_TYPE = 'IN' ;
 
SELECT COUNT(*) FROM PS_ITEM A
WHERE A.ACCOUNTING_DT > '29-DEC-13'
AND ENTRY_TYPE = 'IN' ;
 ;

