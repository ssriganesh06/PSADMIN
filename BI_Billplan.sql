----run a SQL Update to set Invoice Form ID to Blank for all the OIC Contract billplans where Invoice form IDs are not in SUMM01 through SUMM08

Update ps_ca_bill_plan set invoice_form_id = ' ' where contract_num between 'CON900000003179' AND 'CON900000005331';

=======================================

Script:

UPDATE PS_CA_BILL_PLAN 
SET INVOICE_FORM_ID = ' '
WHERE BP_STATUS NOT IN ('DON','CAN') 
and INVOICE_FORM_ID <> ' '
;

Back up Select SQL:

SELECT * FROM PS_CA_BILL_PLAN
WHERE BP_STATUS NOT IN ('DON','CAN') 
and INVOICE_FORM_ID <> ' '
---------------------------------------------------------

I created a contract in Stage and verified that the Invoice Form is not getting automatically populated. I am thinking it is being populated by the billers only. But I would let Laura provide a final confirmation on that. 
 
We have 3691 “As Incurred” bill plans that have Invoice Form populated on them. Below is the query we used to find the bill plans. We checked only for Bill Plan that are not completed or cancelled.
 
select count(*) from PS_CA_BILL_PLAN where  BP_STATUS not in ('DON','CAN') and INVOICE_FORM_ID<>' ' 
and BILL_PLAN_TYPE='01' and BUSINESS_UNIT_BI in  ('BI001','BI002') and PRE_APPROVAL_FLG in ('N',' ');
 
