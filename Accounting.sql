SELECT * FROM ps_pending_dst WHERE operating_unit = '99999' 

--pRODUCT tYPES
select count(*),opt_pr_crm_id from ps_opt_prod_crsref
group by opt_pr_crm_id

select count(*), pricing_structure,rev_recog_method from ps_prod_item
group by pricing_structure,rev_recog_method

select * from ps_prod_item
where rev_recog_method='2'

select * from ps_CA_detail where product_id='000000000000000895'

select * from ps_CA_ACCTG_LINE where contract_num='CON000000005945'

select DST_USE,CLASS_FLD,OPERATING_UNIT,CHARTFIELD1,ACCOUNT,DEPTID,PRODUCT,CHARTFIELD2,PROJECT_ID from ps_CA_ACCTG_LINE where contract_num='CON000000005945'


select DISTINCT  DST_USE from ps_CA_ACCTG_LINE WHERE DST_USE

select * from ps_jrnl_ln where journal_id='OCA0012577'
select * from ps_JRNL_HEADER where journal_id='OCA0012577'

select * from ps_bi_hdr where contract_num='CON000000005945'