SELECT A.RES_USER4, A.* FROM PS_PROJ_RESOURCE A
WHERE A.RESOURCE_ID IN ('20000000686407','20000000686411');

SELECT TA1.PROCESS_INSTANCE,          TA1.BUSINESS_UNIT_PC,          TA1.PROJECT_ID,          TA1.ACTIVITY_ID,          TA1.RESOURCE_ID, count(*)
             FROM PS_CA_BI_PC_TA24 TA1, PS_PROJECT PRJ, PS_PSA_ORGPRJ_DEFN ORGPRJ
    WHERE     ORGPRJ.PROJECT_ID = PRJ.PROJECT_ID
          AND ORGPRJ.BUSINESS_UNIT = PRJ.BUSINESS_UNIT
          AND TA1.PROJECT_ID = PRJ.PROJECT_ID
          AND TA1.BUSINESS_UNIT_PC = PRJ.BUSINESS_UNIT
          AND TA1.PROCESS_INSTANCE = 230105
          AND ORGPRJ.EFFDT =
                 (SELECT MAX (EFFDT)
                    FROM PS_PSA_ORGPRJ_DEFN ORGPRJ1
                   WHERE     ORGPRJ1.BUSINESS_UNIT = ORGPRJ.BUSINESS_UNIT
                         AND ORGPRJ1.PROJECT_ID = ORGPRJ.PROJECT_ID
                         AND ORGPRJ1.EFFDT <= TA1.ACCOUNTING_DT)
          AND NOT EXISTS
                     (SELECT 'X'
                        FROM PS_PSA_ACCTG_TA24 TA2
                       WHERE     TA2.PROCESS_INSTANCE = 230105
                             AND TA2.RESOURCE_ID = TA1.RESOURCE_ID)
 group by TA1.PROCESS_INSTANCE,          TA1.BUSINESS_UNIT_PC,          TA1.PROJECT_ID,          TA1.ACTIVITY_ID,          TA1.RESOURCE_ID 
 having count(*) > 1 ;
 
 SELECT TA1.PROCESS_INSTANCE,          TA1.BUSINESS_UNIT_PC,          TA1.PROJECT_ID,          TA1.ACTIVITY_ID,          TA1.RESOURCE_ID
             FROM PS_CA_BI_PC_TA24 TA1, PS_PROJECT PRJ, PS_PSA_ORGPRJ_DEFN ORGPRJ
    WHERE     ORGPRJ.PROJECT_ID = PRJ.PROJECT_ID
          AND ORGPRJ.BUSINESS_UNIT = PRJ.BUSINESS_UNIT
          AND TA1.PROJECT_ID = PRJ.PROJECT_ID
          AND TA1.BUSINESS_UNIT_PC = PRJ.BUSINESS_UNIT
          AND TA1.PROCESS_INSTANCE = 230105
          AND ORGPRJ.EFFDT =
                 (SELECT MAX (EFFDT)
                    FROM PS_PSA_ORGPRJ_DEFN ORGPRJ1
                   WHERE     ORGPRJ1.BUSINESS_UNIT = ORGPRJ.BUSINESS_UNIT
                         AND ORGPRJ1.PROJECT_ID = ORGPRJ.PROJECT_ID
                         AND ORGPRJ1.EFFDT <= TA1.ACCOUNTING_DT)
          AND NOT EXISTS
                     (SELECT 'X'
                        FROM PS_PSA_ACCTG_TA24 TA2
                       WHERE     TA2.PROCESS_INSTANCE = 230105
                             AND TA2.RESOURCE_ID = TA1.RESOURCE_ID)
 


/* Formatted on 11/3/2015 3:04:51 PM (QP5 v5.256.13226.35538) */
INSERT INTO PS_PSA_ACCTG_TA24 (PROCESS_INSTANCE,
                               BUSINESS_UNIT_PC,
                               PROJECT_ID,
                               ACTIVITY_ID,
                               RESOURCE_ID,
                               CONTRACT_NUM,
                               CONTRACT_LINE_NUM,
                               CONTRACT_PPD_SEQ,
                               ACCT_PLAN_ID,
                               EVENT_NUM,
                               ACCOUNT,
                               ALTACCT,
                               ACCOUNTING_DT,
                               DELETE_ME,
                               BUSINESS_UNIT,
                               BUSINESS_UNIT_BI,
                               BUSINESS_UNIT_GL,
                               BUSINESS_UNIT_TO,
                               CA_RQST_SRC,
                               GL_DISTRIB_STATUS,
                               CUR_EFFDT,
                               CURRENCY_CD,
                               BASE_CURRENCY,
                               FOREIGN_CURRENCY,
                               FOREIGN_AMOUNT,
                               RESOURCE_AMOUNT,
                               PROJECT_TYPE,
                               AMOUNT_BSE,
                               AMOUNT,
                               DST_ID,
                               ANALYSIS_TYPE,
                               RESOURCE_TYPE,
                               RESOURCE_CATEGORY,
                               RESOURCE_SUB_CAT,
                               RESOURCE_ID_FROM,
                               LEDGER,
                               LEDGER_GROUP,
                               APPL_JRNL_ID,
                               STATISTICS_CODE,
                               STATISTICS_ACCOUNT,
                               PROJ_TRANS_TYPE,
                               PROJ_TRANS_CODE,
                               RT_TYPE,
                               MOVEMENT_FLAG,
                               RATE_MULT,
                               RATE_DIV,
                               BUSINESS_UNIT_GL2,
                               RESOURCE_QUANTITY,
                               DEPTID,
                               DST_ACCT_TYPE,
                               DST_SEQ_NUM,
                               SEQ_NBR,
                               POST_SEQ_NUM,
                               SYSTEM_SOURCE,
                               DESCR,
                               LINE_DESCR,
                               UNIT_OF_MEASURE,
                               TRANS_DT,
                               ACTIVE_STATUS,
                               OPERATING_UNIT,
                               PRODUCT,
                               FUND_CODE,
                               CLASS_FLD,
                               PROGRAM_CODE,
                               BUDGET_REF,
                               AFFILIATE,
                               AFFILIATE_INTRA1,
                               AFFILIATE_INTRA2,
                               CHARTFIELD1,
                               CHARTFIELD2,
                               CHARTFIELD3,
                               IU_SYS_TRAN_CD,
                               IU_TRAN_CD,
                               CRIT_SEQ,
                               INVOICE,
                               BUSINESS_UNIT_WO,
                               WO_ID,
                               WO_TASK_ID,
                               RSRC_TYPE,
                               RES_LN_NBR,
                               BUSINESS_UNIT_AR,
                               CUST_ID,
                               ITEM,
                               ITEM_LINE,
                               ITEM_SEQ_NUM,
                               OPRID,
                               ORDER_NO,
                               RESOURCE_STATUS,
                               EMPLID,
                               RES_USER1,
                               RES_USER2,
                               RES_USER3,
                               RES_USER4,
                               RES_USER5,
                               LEVEL1_CF,
                               LEVEL2_CF,
                               LEVEL3_CF,
                               LEVEL4_CF,
                               LEVEL5_CF,
                               PRJ_LEVEL1_CF_VAL,
                               PRJ_LEVEL2_CF_VAL,
                               PRJ_LEVEL3_CF_VAL,
                               PRJ_LEVEL4_CF_VAL,
                               PRJ_LEVEL5_CF_VAL)
   SELECT TA1.PROCESS_INSTANCE,
          TA1.BUSINESS_UNIT_PC,
          TA1.PROJECT_ID,
          TA1.ACTIVITY_ID,
          TA1.RESOURCE_ID,
          TA1.CONTRACT_NUM,
          TA1.CONTRACT_LINE_NUM,
          0,
          ' ',
          0,
          TA1.ACCOUNT,
          TA1.ALTACCT,
          TA1.ACCOUNTING_DT,
          TA1.DELETE_ME,
          BUSINESS_UNIT_PC,
          ' ',
          TA1.BUSINESS_UNIT_GL,
          TA1.BUSINESS_UNIT_TO,
          TA1.CA_RQST_SRC,
          TA1.GL_DISTRIB_STATUS,
          NULL,
          TA1.CURRENCY_CD,
          ' ',
          TA1.FOREIGN_CURRENCY,
          TA1.FOREIGN_AMOUNT,
          TA1.RESOURCE_AMOUNT,
          PRJ.PROJECT_TYPE,
          0,
          0,
          ' ',
          TA1.ANALYSIS_TYPE,
          TA1.RESOURCE_TYPE,
          TA1.RESOURCE_CATEGORY,
          TA1.RESOURCE_SUB_CAT,
          TA1.RESOURCE_ID_FROM,
          ' ',
          ' ',
          ' ',
          ' ',
          ' ',
          ' ',
          ' ',
          TA1.RT_TYPE,
          'N',
          TA1.RATE_MULT,
          TA1.RATE_DIV,
          ' ',
          TA1.RESOURCE_QUANTITY,
          TA1.DEPTID,
          ' ',
          0,
          0,
          0,
          PRJ.SYSTEM_SOURCE,
          TA1.DESCR,
          ' ',
          TA1.UNIT_OF_MEASURE,
          TA1.TRANS_DT,
          ' ',
          TA1.OPERATING_UNIT,
          TA1.PRODUCT,
          TA1.FUND_CODE,
          TA1.CLASS_FLD,
          TA1.PROGRAM_CODE,
          TA1.BUDGET_REF,
          TA1.AFFILIATE,
          TA1.AFFILIATE_INTRA1,
          TA1.AFFILIATE_INTRA2,
          TA1.CHARTFIELD1,
          TA1.CHARTFIELD2,
          TA1.CHARTFIELD3,
          ' ',
          ' ',
          0,
          ' ',
          ' ',
          ' ',
          0,
          ' ',
          0,
          ' ',
          ' ',
          ' ',
          0,
          0,
          ' ',
          ' ',
          ' ',
          TA1.EMPLID,
          ' ',
          ' ',
          ' ',
          ' ',
          ' ',
          ' ',
          ' ',
          ' ',
          ' ',
          ' ',
          ORGPRJ.PRJ_LEVEL1_CF_VAL,
          ORGPRJ.PRJ_LEVEL2_CF_VAL,
          ORGPRJ.PRJ_LEVEL3_CF_VAL,
          ORGPRJ.PRJ_LEVEL4_CF_VAL,
          ORGPRJ.PRJ_LEVEL5_CF_VAL
     FROM PS_CA_BI_PC_TA24 TA1, PS_PROJECT PRJ, PS_PSA_ORGPRJ_DEFN ORGPRJ
    WHERE     ORGPRJ.PROJECT_ID = PRJ.PROJECT_ID
          AND ORGPRJ.BUSINESS_UNIT = PRJ.BUSINESS_UNIT
          AND TA1.PROJECT_ID = PRJ.PROJECT_ID
          AND TA1.BUSINESS_UNIT_PC = PRJ.BUSINESS_UNIT
          AND TA1.PROCESS_INSTANCE = 230105
          AND ORGPRJ.EFFDT =
                 (SELECT MAX (EFFDT)
                    FROM PS_PSA_ORGPRJ_DEFN ORGPRJ1
                   WHERE     ORGPRJ1.BUSINESS_UNIT = ORGPRJ.BUSINESS_UNIT
                         AND ORGPRJ1.PROJECT_ID = ORGPRJ.PROJECT_ID
                         AND ORGPRJ1.EFFDT <= TA1.ACCOUNTING_DT)
          AND NOT EXISTS
                     (SELECT 'X'
                        FROM PS_PSA_ACCTG_TA24 TA2
                       WHERE     TA2.PROCESS_INSTANCE = 230105
                             AND TA2.RESOURCE_ID = TA1.RESOURCE_ID);