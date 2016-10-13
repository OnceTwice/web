-- CRUD sql

-- insert
insert into guestbook values(guestbook_seq.nextval, '둘리', '호이~', '1234', sysdate);
insert into guestbook values(guestbook_seq.nextval, '마이콜', '라멘~', '1234', sysdate);

commit;

-- delete
delete from guestbook where no=2 and password='1234';

-- select
select no, name, content, password, to_char(reg_date, 'yyyy-mm-dd hh:mm:ss')
from guestbook
order by no desc;