Overall steps:

1) (DONE) ONLINE - UPDATE DUPLICATE CONTACTS TO USE 11915 AND 11916 ONLY; 
		-- INACTIVATE OTHER CONTACTS ('11934','11875','11935','11876','11939','11940')
2) SQL - DELETE DUPLICATE INACTIVE CONTACTS FROM OPT_CONT_CRSREF  
3) SQL - UPDATE CA_CONTR_HDR WHERE CNTCT_SEQ_BILL = 0
4) SQL - UPDATE CA_CONTR_HDR WHERE CNTCT_SEQ_SOLD = 0 
        A. UPDATE WHERE 11916 EXISTS (SELECT FROM 11916 ON CONTACT CUST)
        B. UPDATE WHERE 11916 DOES NOT EXIST (SELECT FROM 11915 ON CONTACT CUST)
5) SQL - UPDATE CA_BILL_PLAN WHERE CNTCT_SEQ_BILL = 0
6) SQL - UPDATE CA_CONTR_HDR SOLD TO ADDRESS SEQUENCE


--*************************************************************************************************
--** Delete 'Bad' (duplicate) Contacts from Custom Contract Cross-Reference
--**    (6 rows)
--*************************************************************************************************
DELETE
FROM PS_OPT_CONT_CRSREF
WHERE CONTACT_ID IN ('11934','11875','11935','11876','11939','11940');


--*************************************************************************************************
--** Update Contract Header where Billing Contact = 0
--**    (105 rows) 
--*************************************************************************************************
UPDATE PS_CA_CONTR_HDR A,
  PS_CONTACT_CUST B
SET A.CNTCT_SEQ_BILL  = B.CNTCT_SEQ_NUM ,
  A.ADDR_SEQ_NUM_BILL = B.ADDRESS_SEQ_NUM
WHERE A.BUSINESS_UNIT LIKE 'CA1%'
AND TRUNC(A.LASTUPDDTTM) >= '13-jul-2016'
AND A.CONTRACT_NUM LIKE 'CON90%'
AND A.CNTCT_SEQ_BILL  = 0
AND B.CONTACT_ID      = '11915'
AND A.BILL_TO_CUST_ID = B.CUST_ID;


--*************************************************************************************************
--** Update Contract Header where Sold To Contact = 0 and Contact 11916 Exists
--**    (89 rows)
--*************************************************************************************************
UPDATE PS_CA_CONTR_HDR A,
  PS_CONTACT_CUST B
SET A.CNTCT_SEQ_SOLD = B.CNTCT_SEQ_NUM
WHERE A.BUSINESS_UNIT LIKE 'CA1%'
AND TRUNC(A.LASTUPDDTTM) >= '13-jul-2016'
AND A.CONTRACT_NUM LIKE 'CON90%'
AND A.CNTCT_SEQ_SOLD  = 0
AND B.CONTACT_ID      = '11916'
AND A.SOLD_TO_CUST_ID = B.CUST_ID
AND EXISTS
  (SELECT 'X'
  FROM PS_CONTACT_CUST C
  WHERE B.CUST_ID  = C.CUST_ID
  AND C.CONTACT_ID = '11916'
  );


--*************************************************************************************************
--** Update Contract Header where Sold To Contact = 0 and Contact 11916 Does Not Exist
--**    (7 rows)
--*************************************************************************************************
UPDATE PS_CA_CONTR_HDR A,
  PS_CONTACT_CUST B
SET A.CNTCT_SEQ_SOLD = B.CNTCT_SEQ_NUM
WHERE A.BUSINESS_UNIT LIKE 'CA1%'
AND TRUNC(A.LASTUPDDTTM) >= '13-jul-2016'
AND A.CONTRACT_NUM LIKE 'CON90%'
AND A.CNTCT_SEQ_SOLD  = 0
AND B.CONTACT_ID      = '11915'
AND A.SOLD_TO_CUST_ID = B.CUST_ID
AND NOT EXISTS
  (SELECT 'X'
  FROM PS_CONTACT_CUST C
  WHERE B.CUST_ID  = C.CUST_ID
  AND C.CONTACT_ID = '11916'
  );
  
  
--*************************************************************************************************
--** Update Bill Plan where Billing Contact = 0
--**    (112 rows)
--*************************************************************************************************
UPDATE PS_CA_BILL_PLAN A,
  PS_CONTACT_CUST B
SET A.CNTCT_SEQ_BILL  = B.CNTCT_SEQ_NUM ,
  A.ADDR_SEQ_NUM_BILL = B.ADDRESS_SEQ_NUM
WHERE A.BUSINESS_UNIT_BI LIKE 'UK%'
AND A.CONTRACT_NUM LIKE 'CON9%'
AND A.CNTCT_SEQ_BILL  = 0
AND B.CONTACT_ID      = '11915'
AND A.BILL_TO_CUST_ID = B.CUST_ID;


--**  STOP before running this SQL so that we can check that the row counts will be correct
--**			- since this is based on updates above

--*************************************************************************************************
--** Update Sold Address Sequence On All INTL Contracts
--**    (1063 rows)
--*************************************************************************************************
UPDATE PS_CA_CONTR_HDR A,
  PS_CONTACT_CUST B
SET A.ADDR_SEQ_NUM_SOLD = B.ADDRESS_SEQ_NUM
WHERE A.BUSINESS_UNIT LIKE 'CA1%'
AND TRUNC(A.LASTUPDDTTM) >= '13-jul-2016'
AND A.CONTRACT_NUM LIKE 'CON90%'
AND A.SOLD_TO_CUST_ID = B.CUST_ID
AND A.CNTCT_SEQ_SOLD  = B.CNTCT_SEQ_NUM;

