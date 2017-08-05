
SELECT A.OPRID,A.EMAILID, B.EMAILID FROM PSUSEREMAIL A, PSOPRDEFN B
WHERE A.OPRID = B.OPRID
AND A.OPRID in ('MDOOLA1', 'TMILL88', 'MWILKI4', 'SGRIFFIT');

SELECT * FROM PSROLEUSER
WHERE ROLENAME LIKE 'OPT_BI_Invoice_Approver1'

UPDATE PSUSEREMAIL SET EMAILID = 'vasant_ayallu@uhc.com'
WHERE OPRID = 'BI_Approver1';

SELECT * FROM PSUSEREMAIL 
WHERE OPRID LIKE 'V%' ;



UPDATE PSOPRDEFN SET EMAILID = 'vasant_ayallu@uhc.com'
WHERE OPRID ='BI_Approver1';

SELECT A.OPRID,A.EMAILID, B.EMAILID FROM PSUSEREMAIL A, PSOPRDEFN B
WHERE A.OPRID = B.OPRID
AND A.OPRID = 'RGOGINEN';

-- Email IDs:
nina.wilson@optum.com
roger.little@optum.com
judith.hill@optum.com
lori.shinnick@optum.com
connie.hoffmann@optum.com
kelly.lyman@optum.com

-- User IDs:
BI_Approver1
BI_Approver2
BI_User1
BI_User2
BI_User3
BI_User4
PC_User1


select distinct emailid from ps_cust_contact;
select distinct emailid from ps_contact;

select * from ps_intfc_bi_CMP