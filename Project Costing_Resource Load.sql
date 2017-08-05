



select * from PS_PERSONAL_DATA where emplid in (
select emplid from ps_opt_pc_emp_tmp where process_instance='43376')

select * from PS_OPT_EMP_ADDINFO where emplid in (
select emplid from ps_opt_pc_emp_tmp where process_instance='43376')

select * from PS_OPT_EMP_ADDINFO where emplid in (
select emplid from ps_opt_pc_emp_tmp where process_instance='43376')

select * from PS_INTFC_PROJ_GEN

select * from ps_intfc_res_gen