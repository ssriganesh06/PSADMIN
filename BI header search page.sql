select process_instance from ps_bi_hdr

SELECT business_unit 
 , invoice 
 , invoice_type 
 , bill_type_id 
 , bill_status 
 , bill_source_id 
 , bill_to_cust_id 
 , contract_num 
 , business_unit 
 , template_ivc_flg 
  FROM ps_bi_hdr 
 WHERE consol_hdr <> 'Y' 
   --AND process_instance = 0 
   AND (bill_status = 'PND' 
    OR bill_status = 'CAN' 
    OR bill_status = 'HLD' 
    OR bill_status = 'NEW' 
    OR bill_status = 'RDY' 
    OR bill_status = 'TMP' 
    OR bill_status = 'TMR' )
    
    update ps_bi_hdr set process_instance = 111
      where invoice like '00000000%'