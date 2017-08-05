update psurldefn set url = 'TEST.TEST@Optum.com' where url_id in ('BI_EMAIL_FROM','OPT_AR_EMAIL_BCC','OPT_AR_EMAIL_FRM');
update ps_wl_template_gen set emailid = 'TEST.TEST@Optum.com' where wl_template_id like 'Credit Invoice%';
commit;