SELECT * FROM PS_BI_HDR
WHERE INVOICE_AMOUNT > 250000;

UPDATE PS_BI_HDR SET BI_APPROVAL_STATUS = '3'
WHERE INVOICE BETWEEN '0001001790 ' AND '0001001792';


UPDATE PS_EOAW_STEP SET EOAWSELF_APPROVAL='Y' 
WHERE EOAWPRCS_ID='Credit Invoice' ;

DELETE FROM PS_EOAWCRTA
WHERE EOAWCRTA_ID LIKE 'Path-Credit%';