SELECT * FROM PS_ITEM
WHERE CUST_ID = '0000001399'
AND ITEM_STATUS = 'O' ;

SELECT * FROM PS_ITEM
WHERE ITEM_STATUS = 'O' 
AND BUSINESS_UNIT = 'AR002' ;

SELECT * FROM PS_STMT_CUST
WHERE ST_ID_NUM IN (402,403);

SELECT * FROM PS_STMT_CUST_DTL
WHERE ST_ID_NUM IN (402,403);

SELECT * FROM PS_STMT_BU_VW
WHERE ST_ID_NUM IN (402,403);

SELECT * FROM PS_AR_STATEMNT_VW
WHERE ST_ID_NUM IN (402,403);
