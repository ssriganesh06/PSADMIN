select * from ps_pending_item

select * from ps_bi_acct_entry
where invoice like '%5649' ;

--where gl_distrib_status = 'D'
where accounting_dt = '01-OCT-13'
and doc_seq_date = '12-AUG-13';
and journal_id = ' ' ;
select * from ps_opt_bi_acc_entr;


SELECT * FROM PS_JRNL_LN