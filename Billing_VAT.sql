SELECT business_unit 
 , invoice 
 , tax_cd_vat 
 , SUM(net_extended_amt) 
 , SUM(vat_amt) 
 , SUM(vat_basis_amt) 
 , bi_currency_cd 
  FROM ps_bi_line 
 WHERE bi_tax_timing = ' ' 
   AND tax_cd_vat IN ( 
 SELECT tax_cd 
  FROM ps_tax_header_tbl 
 WHERE tax_cd_type = 'V') 
   AND adj_line_type <> 'ACR' 
  GROUP BY business_unit, invoice, tax_cd_vat, bi_currency_Cd;