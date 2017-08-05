SELECT A.INVOICE, A.ORIGINAL_INVOICE, A.INVOICE_AMOUNT FROM PS_BI_HDR A
WHERE A.INVOICE IN ('0001001856','0001001857','0001001858','0001001859');

SELECT * FROM PS_PENDING_ITEM 
WHERE CUST_ID = '0000000375';

SELECT A.ITEM, A.DOCUMENT, A.* FROM PS_ITEM A 
WHERE A.DOCUMENT <> ' '
AND A.ITEM_STATUS = 'O'
AND A.ITEM NOT LIKE 'OA%' ;

SELECT A.PROCESS_INSTANCE, A.ITEM, A.DOCUMENT, A.ENTRY_TYPE, A.* FROM PS_ITEM A 
WHERE A.ITEM IN ('0001001856','0001001857','0001001858','0001001859');

SELECT A.* FROM PS_ITEM_DST A 
WHERE A.ITEM IN ('0001001858','0001001859');

SELECT A.ITEM, A.DOCUMENT, A.ENTRY_TYPE, A.* FROM PS_ITEM A 
WHERE A.DOCUMENT <> ' ' 
AND A.ITEM_STATUS = 'O' ;

0001001808
0001001829

923.54
590.24




SELECT CUST_ID, ITEM, BAL_AMT, ENTRY_TYPE, DOCUMENT, ITEM_STATUS FROM PS_ITEM
WHERE CUST_ID = '0000000263';

UPDATE PS_ITEM SET DOCUMENT = '0001001268'
WHERE ITEM = '0001001847';

UPDATE PS_ITEM SET DUE_DT = '11-FEB-14'
WHERE ITEM = '0001001809';

SELECT CUST_ID, COUNT(*) FROM PS_ITEM
WHERE ITEM_STATUS = 'O'
GROUP BY CUST_ID
HAVING COUNT(*) = 1;

SELECT CUST_ID, COUNT(*) FROM PS_ITEM
WHERE ITEM_STATUS = 'O'
GROUP BY CUST_ID

UPDATE PS_BI_HDR SET PROCESS_INSTANCE = 0
WHERE INVOICE IN ('0000000106','0000000107');

