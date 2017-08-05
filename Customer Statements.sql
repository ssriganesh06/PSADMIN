SELECT A.CUST_ID, COUNT(*) FROM PS_ITEM a
WHERE a.ITEM_STATUS = 'O'
AND A.CUST_ID ='0000000105'
GROUP BY a.CUST_ID;

SELECT CUST_ID, COUNT(*)
FROM PS_ITEM
WHERE ITEM_STATUS = 'O'
GROUP BY CUST_ID 
HAVING COUNT(*) > 15 ;

--UPDATE PS_CUST_CONTACT SET COMM_METHOD = 'P'
WHERE CUST_ID = '0000050053';

SELECT * FROM PS_STMT_EXTRCT_HDR WHERE CRSPD_CUST_ID = '0000050060';

SELECT A.* FROM PS_CUST_CONTACT A
WHERE A.CUST_ID ='0000000471'  
AND A.EFFDT = (SELECT MAX(A1.EFFDT) FROM PS_CUST_CONTACT A1 WHERE A1.CUST_ID = A.CUST_ID AND A1.EFF_STATUS = 'A')
AND A.CNTCT_SEQ_NUM = (SELECT MAX(A2.CNTCT_SEQ_NUM) FROM PS_CUST_CONTACT A2 WHERE A2.CUST_ID = A.CUST_ID AND A2.EFFDT = A.EFFDT AND  A2.EFF_STATUS = 'A');

SELECT A.COMM_METHOD, COUNT(*) FROM PS_CUST_CONTACT A
WHERE A.CUST_ID IN ( SELECT DISTINCT B.CUST_ID FROM PS_ITEM B WHERE B.ITEM_STATUS = 'O')  
AND A.EFFDT = (SELECT MAX(A1.EFFDT) FROM PS_CUST_CONTACT A1 WHERE A1.CUST_ID = A.CUST_ID AND A1.EFF_STATUS = 'A')
AND A.CNTCT_SEQ_NUM = (SELECT MAX(A2.CNTCT_SEQ_NUM) FROM PS_CUST_CONTACT A2 WHERE A2.CUST_ID = A.CUST_ID AND A2.EFFDT = A.EFFDT AND  A2.EFF_STATUS = 'A')
GROUP BY A.COMM_METHOD ;

SELECT A.COMM_METHOD, COUNT(*) FROM PS_CUST_CONTACT A
WHERE A.CUST_ID IN ( SELECT DISTINCT B.CUST_ID FROM PS_ITEM B WHERE B.ITEM_STATUS = 'O')
AND A.EMAILID <> ' '  
AND A.EFFDT = (SELECT MAX(A1.EFFDT) FROM PS_CUST_CONTACT A1 WHERE A1.CUST_ID = A.CUST_ID AND A1.EFF_STATUS = 'A')
AND A.CNTCT_SEQ_NUM = (SELECT MAX(A2.CNTCT_SEQ_NUM) FROM PS_CUST_CONTACT A2 WHERE A2.CUST_ID = A.CUST_ID AND A2.EFFDT = A.EFFDT AND  A2.EFF_STATUS = 'A')
GROUP BY A.COMM_METHOD ;

SELECT * FROM PS_AR_STATEMNT_VW
WHERE ST_DT > '05-FEB-14';

SELECT A.COMM_METHOD, COUNT(*) FROM PS_CUST_CNTCT_DOC A
WHERE A.CUST_ID IN ( SELECT DISTINCT B.CUST_ID FROM PS_ITEM B WHERE B.ITEM_STATUS = 'O')
GROUP BY A.COMM_METHOD ;