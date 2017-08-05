select * from PS_OPT_BI_WRK_EML where invoice between 'TMP-0000001573' and 'TMP-0000001580'

select * from PS_BI_WKS_HDR_VW where invoice between 'TMP-0000001573' and 'TMP-0000001580'

--Who approved billing worksheet
SELECT * FROM PS_OPT_PC_BUT_AUD
where invoice between 'TMP-0000001573' and 'TMP-0000001580' ;