select * from employees;
-- 회원가입
create table tblMem(
	num number primary key,
	name varchar2(20) not null,
	phone varchar2(20) not null,
	addr varchar2(50),
	lat number(16,12),
	lng number(16,12)
)
select * from TBLMEM;
create sequence seq_num;
insert into TBLMEM values(
	seq_num.nextval,'김형우','010-8370-2230','광주광역시 동구 지산동 515-2',35.1257699845615,126.852047602507
);
commit