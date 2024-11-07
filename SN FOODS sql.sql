create database foods;
use foods;
create table foods(id int ,VEG varchar(23),FRUITS varchar(23),phone_no int,PLACE varchar(25));
insert into foods values(1,'onion','apple',897654,'goa'),(2,'tomato','kiwi',435563,'kasmir'),(3,'carrot','orange',64563456,
'punjab');
select * from foods;
select fruits, veg id from foods where id=2;
select veg from foods where id =2;
delete from foods where id=3;

create database eatiko;
use eatiko;
create table eatiko(id int primary key auto_increment, items varchar(23),salad varchar(23),juice varchar(23),PLACE varchar(23));
create table eatiko2(id int primary key auto_increment, id2 int,foreign key(id2) references eatiko(id));
insert into eatiko(items,salad,juice,PLACE) values('CB','FRUITS +VEG','ANAAR JUICE','goa');
insert into eatiko (items,salad,juice,PLACE) values('BB','KIWI SALAD','APPLE JUICE','kasmir');
insert into eatiko(items,salad,juice,PLACE) values('MB','ORANGE SALAD','CARROT JUICE','punjab');
select * from eatiko;
insert into eatiko2(id2) values(1);
insert into eatiko2(id2) values(2);
insert into eatiko2(id2) values(3);
select * from eatiko2;
delete from eatiko where id =3;


create database eatiko1; 
use eatiko1;
create table eatiko1(id int primary key auto_increment, items varchar(23),salad varchar(23),juice varchar(23),PLACE varchar(23));
create table eatiko3(id int primary key auto_increment, id2 int,foreign key(id2) references eatiko1(id) on delete cascade);
insert into eatiko1(items,salad,juice,PLACE) values('CB','FRUITS +VEG','ANAAR JUICE','goa');
insert into eatiko1(items,salad,juice,PLACE) values('BB','KIWI SALAD','APPLE JUICE','kasmir');
insert into eatiko3(id2) values(1);
select* from eatiko1;
select* from eatiko3;
delete from eatiko1 where id=1;



