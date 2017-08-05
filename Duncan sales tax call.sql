SELECT BILL_TO_MEDIA, COUNT(*) FROM PS_BI_HDR
WHERE INVOICE BETWEEN '0090000001' AND '0090000500'
AND BILL_STATUS = 'RDY'
GROUP BY BILL_TO_MEDIA;

UPDATE PS_BI_HDR SET BI_APPROVAL_STATUS = 3
WHERE INVOICE BETWEEN '0090000001' AND '0090000500'
AND BILL_STATUS = 'RDY';

SELECT COUNT(*)  FROM PS_AMM_SYNCLIST
WHERE IB_OPERATIONNAME = 'DO_TAXCALC_REQ';
AND TO_DATE(LASTUPDDTTM, MMDDYYYY) = 08202013