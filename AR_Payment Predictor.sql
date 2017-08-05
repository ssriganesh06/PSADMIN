--first tabular column
select
a.deposit_bu,
A.DEPOSIT_ID,
A.payment_id,
a.payment_seq_num,
a.payment_method,
a.algorithm_group,
a.algorithm,
B.DEPOSIT_type

from
ps_payment a,
ps_deposit_control b

where
a.deposit_id=b.deposit_id
AND a.deposit_bu=B.DEPOSIT_BU
and B.deposit_type  = 'M'
and A.algorithm_group = ' '
AND B.DEPOSIT_BU='AR003'

--second tabular column

select
a.deposit_bu,
A.DEPOSIT_ID,
A.payment_id,
a.payment_seq_num,
a.payment_method,
a.algorithm_group,
a.algorithm,
B.DEPOSIT_type

from
ps_payment a,
ps_deposit_control b

where
a.deposit_id=b.deposit_id
AND a.deposit_bu=B.DEPOSIT_BU
and B.deposit_type  = 'L'
and A.algorithm_group = ' '
AND B.DEPOSIT_BU='AR003'

--third tabular column

select count(*), deposit_bu,algorithm_group,algorithm from ps_payment
group by deposit_bu,algorithm_group,algorithm

--Payment Predictor Metrics in Prod

select COUNT(*), DATA_SOURCE from ps_payment GROUP BY DATA_SOURCE ;

select COUNT(*), ALGORITHM_GROUP from ps_payment WHERE DATA_SOURCE = 'LBX'AND DEPOSIT_BU LIKE 'AR%'GROUP BY ALGORITHM_GROUP ;


SELECT DEPOSIT_BU, ALGORITHM_GROUP, COUNT(*), 
SUM(COUNT(*)) OVER() TOTAL_COUNT, ROUND(100*RATIO_TO_REPORT(count(*)) over (), 2) PERCENTAGE FROM PS_PAYMENT 
WHERE DATA_SOURCE = 'LBX'
AND DEPOSIT_BU LIKE 'AR%'
GROUP BY DEPOSIT_BU, ALGORITHM_GROUP
ORDER BY 1 ;