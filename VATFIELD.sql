select * from pspnlfield where lbltext like '%VAT%'


select PNLNAME,LABEL_ID,LBLTEXT,RECNAME,FIELDNAME from pspnlfield where lbltext like '%VAT%'

SELECT * FROM PS_EOEC_NAV_VW where MENUNAME='MAINTAIN_SECURITY' AND PNLNAME='ROLEDEFN'

SELECT * FROM PSPRSMDEFN where PORTAl_URI_SEG1='MAINTAIN_SECURITY' AND PORTAL_NAME='EMPLOYEE'
AND PORTAL_URI_SEG2='ROLEMAINT'

select * from PSPNLDEFN;
 WHERE PNLGRPNAME='ROLEMAINT'

select 
distinct
A. PNLNAME,LABEL_ID,
A.LBLTEXT,RECNAME,
A.FIELDNAME,
B.objectownerid,
C.XLATLONGNAME,
c.xlatshortname

from 
pspnlfield A,
PSPNLDEFN b,
psxlatitem c

where 
A.lbltext like '%VAT%'
AND A.PNLNAME=B.PNLNAME
and B.objectownerid=c.fieldvalue
 

SELECT * FROM PSPNLDEFN WHERE PNLNAME='ASSET_UNIT_02'

select * from psxlatitem where fieldname='OBJECTOWNERID'

select * from psrecdefn where recname like 'PSXLAT%'

select * from PSXLATITEM where fieldname='OBJECTOWNERID'
and fieldvalue='DBI'