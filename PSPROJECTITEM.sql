SELECT projectname, 
 objecttype, 
 DECODE(objecttype, '0', 'Record', 
'1', 'Index', 
'2', 'Field', 
'3', 'Field Format', 
'4', 'Translate Value', 
'5', 'Page', 
'6', 'Menu', 
'7', 'Component', 
'8', 'Record PeopleCode', 
'9', 'Menu PeopleCode', 
'10', 'Query', 
'11', 'Tree Structure', 
'12', 'Tree', 
'13', 'Access Group', 
'14', 'Color', 
'15', 'Style', 
'16', 'Business Process Map', 
'17', 'Business Process', 
'18', 'Activity', 
'19', 'Role', 
'20', 'Process Definition', 
'21', 'Process Server Definition', 
'22', 'Process Type Definition', 
'23', 'Process Job Definition', 
'24', 'Process Recurrence Definition', 
'25', 'Message Catalog', 
'26', 'Dimension', 
'27', 'Cube Definition', 
'28', 'Cube Instance Definition', 
'29', 'Business Interlink', 
'30', 'SQL Object', 
'31', 'File Layout', 
'32', 'Component Interface', 
'33', 'Application Engine Program', 
'34', 'Application Engine Section', 
'35', 'Message Node', 
'36', 'Message Channel', 
'37', 'Message', 
'38', 'Approval rule set', 
'39', 'Message PeopleCode', 
'40', 'Subscription PeopleCode', 
'41', 'N/A', 
'42', 'Component Interface PeopleCode', 
'43', 'Application Engine PeopleCode', 
'44', 'Page PeopleCode', 
'45', 'Page Field PeopleCode', 
'46', 'Component PeopleCode', 
'47', 'Component Record PeopleCode', 
'48', 'Component Record Field PeopleCode', 
'49', 'Image', 
'50', 'Style sheet', 
'51', 'HTML', 
'52', 'Not used', 
'53', 'Permission List', 
'54', 'Portal Registry Definitions', 
'55', 'Portal Registry Structure', 
'56', 'URL Definitions', 
'57', 'Application Packages', 
'58', 'Application Package PeopleCode', 
'59', 'Portal Registry User Homepage', 
'60', 'Problem Type', 
'61', 'Archive Templates', 
'62', 'XSLT', 
'63', 'Portal Registry User Favorite', 
'64', 'Mobile Page', 
'65', 'Relationships', 
'66', 'Component Interface Property PeopleCode', 
'67', 'Optimization Models', 
'68', 'File References', 
'69', 'File Type Codes', 
'70', 'Archive Object Definitions', 
'71', 'Archive Templates (Type 2)', 
'72', 'Diagnostic Plug In', 
'73', 'Analytic Model', 
'79', 'Service', 
'80', 'Service Operation', 
'81', 'Service Operation Handler', 
'82', 'Service Operation Version', 
'83', 'Service Operation Routing', 
'84', 'Info Broker Queues', 
'85', 'XML Template Definition', 
'86', 'xml Report Definition', 
'87', 'xml File Definition', 
'88', 'xML Data Source Definition') object_type, 
 ( objectvalue1 || '.' || objectvalue2 || '.' || objectvalue3 ) 
objectname , 
Decode (SOURCESTATUS, 
 0, 'Unknown', 
1, 'Absent', 
2, 'Changed', 
3, 'Unchanged', 
4, '*Changed', 
5, '*Unchanged', 
6, 'Same') SOURCESTATUS, 
Decode (TARGETSTATUS, 
 0, 'Unknown', 
1, 'Absent', 
2, 'Changed', 
3, 'Unchanged', 
4, '*Changed', 
5, '*Unchanged', 
6, 'Same') TARGETSTATUS, 
Decode (UPGRADEACTION, 
0, 'Copy', 
1, 'Delete', 
2, 'None', 
3, 'CopyProp') UPGRADEACTION 
FROM psprojectitem 
WHERE projectname ='OPT_INTEGRATION'
ORDER BY OBJECT_TYPE ASC
