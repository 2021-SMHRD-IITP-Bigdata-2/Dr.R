SELECT * FROM USERS;
delete from users;
insert into users values('test','1234','test@test','����',1,0,1,0,1,0);
select u_email from users where u_email='test@test';