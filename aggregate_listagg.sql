select t.*, t.rowid from EMPLOYEES t


-- Create table
create table EMPLOYEES
(
  last_name     VARCHAR2(200),
  department_id VARCHAR2(200),
  hire_date     DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

insert into employees values('Raphaely','30',to_date('20200101','yyyyMMdd'));

insert into employees values('Khoo','30',to_date('20200102','yyyyMMdd'));

insert into employees values('Tobias','30',to_date('20200103','yyyyMMdd'));

insert into employees values('Baida','30',to_date('20200104','yyyyMMdd'));

insert into employees values('Himuro','30',to_date('20200105','yyyyMMdd'));

insert into employees values('Colmenares','30',to_date('20200106','yyyyMMdd'));

insert into employees values('Rise Zeng','30',to_date('20200107','yyyyMMdd'));

insert into employees values('Harry Potter','30',to_date('20200108','yyyyMMdd'));

insert into employees values('Harry Potter','31',to_date('20200108','yyyyMMdd'));


--������Ժ����ԣ���hire_date, last_name�����last_name�ϲ����������;�ָ�
SELECT LISTAGG(last_name, '; ')
         WITHIN GROUP (ORDER BY hire_date, last_name) "Emp_list",
       MIN(hire_date) "Earliest"
  FROM employees
  WHERE department_id = 30;
