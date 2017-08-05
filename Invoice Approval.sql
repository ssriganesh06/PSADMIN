select c.invoice, c.eoawrequestor_id,b.eoawstep_status,b.oprid,b.eoawdttm_modified
from ps_eoaw_stepinst a, ps_eoaw_userinst b, ps_bi_aw_xref c
where a.eoawstep_instance=b.eoawstep_instance
and a.eoawthread_id=c.eoawthread_id
and b.eoawstep_status='A'  
and c.invoice='0001007350';

select c.invoice,a.effdt, b.oprid "Approver ID",d.xlatlongname "Status",c.eoawrequestor_id "Requestor ID",b.eoawdttm_modified
from ps_eoaw_stepinst a, ps_eoaw_userinst b, ps_bi_aw_xref c, psxlatitem d
where a.eoawstep_instance=b.eoawstep_instance
and a.eoawthread_id=c.eoawthread_id
and d.fieldname='EOAWSTEP_STATUS'
and d.fieldvalue=b.eoawstep_status
--and c.invoice='0001003008'
--and b.eoawstep_status<>'A'   --Uncomment for unapproved invoices
order by invoice desc;




SELECT * FROM PS_BI_HDR
WHERE BILL_STATUS  IN ('RDY', 'NEW') 
AND USER1 = 'CT - 0360'
--AND BI_APPROVAL_STATUS <> 3
AND INVOICE_AMOUNT BETWEEN 0 AND 9999.990 ;

SELECT * FROM PSOPRDEFN
WHERE OPRID IN ('VAYALLU','KPENRO3', 'JHILL20');

SELECT * FROM PS_BI_HDR
WHERE INVOICE = '0000000878'
AND BI_APPROVAL_STATUS <> 3 
AND BILL_STATUS = 'RDY'
AND INVOICE_AMOUNT < 250000 ;

SELECT * FROM PSROLEUSER
--WHERE ROLEUSER LIKE 'MSC%' ;
WHERE ROLENAME = 'OPT_BI_Invoice_Approver7' ;


SELECT * FROM PS_BI_HDR
WHERE BI_APPROVAL_STATUS <> 3 
AND BILL_STATUS  IN ('RDY', 'NEW')
AND INVOICE_AMOUNT > 250000 ;

UPDATE PS_BI_HDR SET BI_APPROVAL_STATUS = 3
WHERE INVOICE = '0000000880'
AND BI_APPROVAL_STATUS <> 3
AND BILL_STATUS = 'RDY' 
AND INVOICE_AMOUNT < 250000 ;

-- Invoice submission Invoicetest, 
-- Invoice approval VAYALLY, VCHANTEST 
SELECT * FROM PSOPRDEFN
WHERE OPRID in ( 'KRISTIN_S_STEPHENS');

UPDATE PSOPRDEFN SET EMAILID = 'vasant_ayallu@uhc.com'
WHERE OPRID in ('OPT_BI_InvAppr1');

UPDATE PS_EOAW_STEP SET EOAWSELF_APPROVAL='N' 
WHERE EOAWPRCS_ID='Credit Invoice' ;

SELECT * FROM PSOPRDEFN

SELECT A.ROLEUSER, B.OPRDEFNDESC FROM PSROLEUSER A, PSOPRDEFN B
WHERE A.ROLENAME = 'OPT_BI_INV_APPROVER_9'
AND A.ROLEUSER = B.OPRID; 

 SELECT A.BUSINESS_UNIT, A.INVOICE, A.BI_APPROVAL_STATUS, B.XLATLONGNAME,B.FIELDNAME 
  FROM PS_BI_HDR A, PSXLATITEM B 
  WHERE ( A.BUSINESS_UNIT = 'BI001' 
     AND A.INVOICE = '0000000305' 
     AND B.EFFDT = 
        (SELECT MAX(B_ED.EFFDT) FROM PSXLATITEM B_ED 
        WHERE B.FIELDNAME = B_ED.FIELDNAME 
          AND B.FIELDVALUE = B_ED.FIELDVALUE 
          AND B_ED.EFFDT <= SYSDATE) 
     AND B.FIELDNAME = 'BI_APPROVAL_STATUS' 
     AND A.BI_APPROVAL_STATUS = B.FIELDVALUE ) ;