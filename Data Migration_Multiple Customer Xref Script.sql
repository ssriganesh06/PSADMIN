--*************************************************************************************************
--** Step 1 - Insert Alternate Customer Cross-Reference Rows
--*************************************************************************************************
INSERT INTO PS_OPT_CUST_CRSREF
(SELECT
SETID
,CUST_ID
,'SFTX'  -- Enter Alternate OPT_SOURCE_SYSID
,REFERENCE_NUM
,OPT_SFDC_ID||'_SFTX'  -- Append Alternate OPT_SOURCE_SYSID
,OPT_ACUTE_BEDS
,OPT_CLIENT_TYPE
,OPT_COVERED_LIVES
,OPT_CRITCARE_BEDS
,OPT_DBA_C
,OPT_ENTITY_ID
,OPT_ENTITY_MARKET
,OPT_ENTITY_NAME
,OPT_NUMBER_BEDS
,OPT_PARTNER_TYPE
,OPT_TOLL_FREE
,OPT_ULTIMAT_PARENT
,OPT_PARENT_SFDC_ID
,OPT_COMM_METHOD
FROM PS_OPT_CUST_CRSREF
WHERE OPT_SFDC_ID IN (
-- Add list of SFDC IDs to be duplicated/appended

));


--*************************************************************************************************
--** Step 2 - Build Reference Number Updates (like below) in Excel - Data provided by FOSS DM Team
--*************************************************************************************************
UPDATE PS_OPT_CUST_CRSREF SET REFERENCE_NUM = '' WHERE OPT_SOURCE_SYSID = '' AND OPT_SFDC_ID LIKE '';


UPDATE PS_OPT_CUST_CRSREF SET REFERENCE_NUM = '2233' WHERE OPT_SOURCE_SYSID = 'SFTX' AND OPT_SFDC_ID LIKE 'A25205%';	
UPDATE PS_OPT_CUST_CRSREF SET REFERENCE_NUM = '2711' WHERE OPT_SOURCE_SYSID = 'SFTX' AND OPT_SFDC_ID LIKE 'A30586%';					
				


