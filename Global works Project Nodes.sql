--Run the below SQLs to insert these node/organization projects into interface table
INSERT INTO PS_INTFC_PROJ_GEN VALUES (900000, 1, 'PC001', 'GW-INITIATIVES', ' ', 'BPC', ' ', 'NEW', 'NEW', 0, 0, 'PC001', 'GW-Initiatives'   , 'COMM', ' ', ' ', ' ', ' ', ' ', ' ', 0, ' ', ' ', ' ', 'N', 'N', 'N', ' ', ' ', ' ',  NULL, ' ', 0, 'ClaimsManager'        ,' ', TO_DATE('01/01/1901 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 0, ' ', 0, ' ', ' ', ' ', ' ', ' ', ' ', TO_DATE('01/01/1901 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), ' ', ' ', NULL, NULL, TO_DATE('01/01/1901 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'A', NULL, NULL, TO_DATE('01/01/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), TO_DATE('12/31/2031 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 0, 0, 0, NULL, ' ', ' ', ' ', NULL, NULL, ' ', 'A', ' ', NULL, NULL, ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', NULL, NULL, ' ', 0, 0, 0, 'BUD', 'PSCST', 'PC001', ' ', 0, 15, ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 0, 'Y', 'N', 'N', 'A', ' ', ' ', 'U', NULL, '01', NULL, NULL, ' ', 'M', 'Y', 'D', 'D', ' ', ' ', 0, 0, 'N', 'RBUD', 'PSREV', 'EAC', 'W', 'FREV', 'PSCST', 'PSREV', 'EAC', 'FREV', 'Y', ' ', ' ', 0, ' ', ' ', ' ');
INSERT INTO PS_INTFC_PROJ_GEN VALUES (900000, 2, 'PC001', 'GW-BUSINTGENCE', ' ', 'BPC', ' ', 'NEW', 'NEW', 0, 0, 'PC001', 'GW-Business Intelligence'   , 'COMM', ' ', ' ', ' ', ' ', ' ', ' ', 0, ' ', ' ', ' ', 'N', 'N', 'N', ' ', ' ', ' ',  NULL, ' ', 0, 'ClaimsEditSystem'        ,' ', TO_DATE('01/01/1901 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 0, ' ', 0, ' ', ' ', ' ', ' ', ' ', ' ', TO_DATE('01/01/1901 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), ' ', ' ', NULL, NULL, TO_DATE('01/01/1901 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'A', NULL, NULL, TO_DATE('01/01/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), TO_DATE('12/31/2031 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 0, 0, 0, NULL, ' ', ' ', ' ', NULL, NULL, ' ', 'A', ' ', NULL, NULL, ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', NULL, NULL, ' ', 0, 0, 0, 'BUD', 'PSCST', 'PC001', ' ', 0, 15, ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 0, 'Y', 'N', 'N', 'A', ' ', ' ', 'U', NULL, '01', NULL, NULL, ' ', 'M', 'Y', 'D', 'D', ' ', ' ', 0, 0, 'N', 'RBUD', 'PSREV', 'EAC', 'W', 'FREV', 'PSCST', 'PSREV', 'EAC', 'FREV', 'Y', ' ', ' ', 0, ' ', ' ', ' ');
INSERT INTO PS_INTFC_PROJ_GEN VALUES (900000, 3, 'PC001', 'GW-IT', ' ', 'BPC', ' ', 'NEW', 'NEW', 0, 0, 'PC001', 'GW-IT'   , 'COMM', ' ', ' ', ' ', ' ', ' ', ' ', 0, ' ', ' ', ' ', 'N', 'N', 'N', ' ', ' ', ' ',  NULL, ' ', 0, 'PrePaymentSystem'        ,' ', TO_DATE('01/01/1901 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 0, ' ', 0, ' ', ' ', ' ', ' ', ' ', ' ', TO_DATE('01/01/1901 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), ' ', ' ', NULL, NULL, TO_DATE('01/01/1901 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'A', NULL, NULL, TO_DATE('01/01/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), TO_DATE('12/31/2031 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 0, 0, 0, NULL, ' ', ' ', ' ', NULL, NULL, ' ', 'A', ' ', NULL, NULL, ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', NULL, NULL, ' ', 0, 0, 0, 'BUD', 'PSCST', 'PC001', ' ', 0, 15, ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 0, 'Y', 'N', 'N', 'A', ' ', ' ', 'U', NULL, '01', NULL, NULL, ' ', 'M', 'Y', 'D', 'D', ' ', ' ', 0, 0, 'N', 'RBUD', 'PSREV', 'EAC', 'W', 'FREV', 'PSCST', 'PSREV', 'EAC', 'FREV', 'Y', ' ', ' ', 0, ' ', ' ', ' ');

----Run the below sqls to load the organization hierarchy info

INSERT INTO SYSADM.PS_PSA_ORGPRJ_DEFN
   (BUSINESS_UNIT, PROJECT_ID, EFFDT, PRJ_LEVEL1_CF_VAL, PRJ_LEVEL2_CF_VAL, 
    PRJ_LEVEL3_CF_VAL, PRJ_LEVEL4_CF_VAL, PRJ_LEVEL5_CF_VAL)
VALUES
   ('PC001', 'GW-SOFTWARE', TO_DATE('01/01/1901 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'GL001', '41322','06340', '834005', '511000');

INSERT INTO SYSADM.PS_PSA_ORGPRJ_DEFN
   (BUSINESS_UNIT, PROJECT_ID, EFFDT, PRJ_LEVEL1_CF_VAL, PRJ_LEVEL2_CF_VAL, 
    PRJ_LEVEL3_CF_VAL, PRJ_LEVEL4_CF_VAL, PRJ_LEVEL5_CF_VAL)
VALUES
   ('PC001', 'GW-INITIATIVES', TO_DATE('01/01/1901 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'GL001', '41322','06340', '834005', '511000');
   

INSERT INTO SYSADM.PS_PSA_ORGPRJ_DEFN
   (BUSINESS_UNIT, PROJECT_ID, EFFDT, PRJ_LEVEL1_CF_VAL, PRJ_LEVEL2_CF_VAL, 
    PRJ_LEVEL3_CF_VAL, PRJ_LEVEL4_CF_VAL, PRJ_LEVEL5_CF_VAL)
VALUES
   ('PC001', 'GW-BUSINTGENCE', TO_DATE('01/01/1901 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'GL001', '41322','06340', '834005', '511000');
   
   
INSERT INTO SYSADM.PS_PSA_ORGPRJ_DEFN
   (BUSINESS_UNIT, PROJECT_ID, EFFDT, PRJ_LEVEL1_CF_VAL, PRJ_LEVEL2_CF_VAL, 
    PRJ_LEVEL3_CF_VAL, PRJ_LEVEL4_CF_VAL, PRJ_LEVEL5_CF_VAL)
VALUES
   ('PC001', 'GW-IT', TO_DATE('01/01/1901 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'GL001', '41322','06340', '834005', '511000');