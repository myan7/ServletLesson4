create table servletLogin(id number,username VARCHAR(20),password VARCHAR(20));
insert into servletlogin values(1,'ming','123');
insert into servletlogin values(2,'alex','123');
insert into servletlogin values(3,'yan','123');
insert into servletlogin values(4,'test4','123');
insert into servletlogin values(5,'test5','123');
insert into servletlogin values(6,'test6','123');
insert into servletlogin values(7,'test7','123');
insert into servletlogin values(8,'test8','123');
insert into servletlogin values(9,'test9','123');
insert into servletlogin values(10,'test10','123');
insert into servletlogin values(11,'test11','123');
insert into servletlogin values(12,'test12','123');
insert into servletlogin values(13,'test13','123');
insert into servletlogin values(14,'test14','123');
insert into servletlogin values(15,'test15','123');
insert into servletlogin values(16,'test16','123');
insert into servletlogin values(17,'test17','123');

select * from
(select * from servletlogin where username = 'ming' and password = '123' or 1='1')
where rownum =1;

select * 
from servletlogin 
where username = 'ming' and password = '123' or 1='1'
FETCH NEXT 1 ROWS ONLY;

select *
from servletlogin
where username = 'ming' and password = '123';

select password
from servletlogin 
where username = 'ming';


select *
from servletlogin
where username = 'ming';


select count(*) from servletlogin;

select * from servletlogin
where rownum <=3;

select * from servletlogin where id not in (select id from servletlogin where rownum <= 6) and
rownum <=3;


commit;


create sequence id_seq
START WITH     17
 INCREMENT BY   1
 NOCACHE
 NOCYCLE;
 
 
-- insert all into servletlogin values (id_seq.nextval, (select username, password from servletlogin))SELECT * FROM dual;
