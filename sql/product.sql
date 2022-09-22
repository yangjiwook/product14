drop table product;
create table product(
    pid     number(10),
    pname   varchar(30),
    count   number(10),
    price   number(10)
);
--기본키
alter table product add constraint product_pid_pk primary key(pid);

--시퀀스생성
drop sequence product_pid_seq;
create sequence product_pid_seq;


--생성--
insert into product(pid,pname,count,price)
     values(product_pid_seq.nextval, '컴퓨터', 5, 1000000);

insert into product(pid,pname,count,price)
     values(product_pid_seq.nextval, '모니터', 5, 500000);

insert into product(pid,pname,count,price)
     values(product_pid_seq.nextval, '프린터', 1, 300000);

--조회--
select pid, pname, count, price
  from product
 where pid = 2;

--전체조회-
select pid,pname,count,price from product;

commit;