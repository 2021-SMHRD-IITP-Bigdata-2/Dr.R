SELECT * FROM USERS;
delete from users where u_id='test2';
insert into users values('test','1234','test@test','����',1,0,1,0,1,0);
select u_email from users where u_email='test@test';

select * from commentss;

select cmt_content, cmt_time, cmt_id from commentss where cmt_recipe=1;

select * from food where food_good like '%������%' and food_month=8;