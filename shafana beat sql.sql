show databases;
create database beat;
create table students(id int,name_1 varchar(23),course varchar(23),phone_no int,branch varchar(25));
select* from students;
insert into students values(1,'shafna','full stack',897654,'perinthalmanna'),(2,'fayas','full stack',435563,'manjeri'),(3,'muzammil','full stack',64563456,
'pereintalmanna'),(4,'frasana','data analytics',6466674,'manjeri'),(5,'sooraj','data analytics',6565566,'nilambur');
select course from students;
select course ,name_1 from students;
select phone_no,name_1 from students;
select id,branch from students;
select distinct branch from students;
update students set branch=  'pereintalmanna'where id=1;
select branch,id from students where id=3;
select course,id from students where id=4;
select name_1,course from students where id=1;









