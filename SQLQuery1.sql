CREATE TABLE users
(user_id INT PRIMARY KEY NOT NULL IDENTITY(1, 1),
 user_ner NVARCHAR(40),
 user_email NVARCHAR(40),
 user_register NVARCHAR(10),
 user_phone INT,
 user_gerinHayag NVARCHAR(100))

 SELECT * FROM users;

 insert into users values
 (N'Gerel',N'gerel@gmail',N'GE99887766',99887766,N'Баянзүрх'),
 (N'Bat',N'bat@gmail',N'BA2039847',77665544,N'Баянгол'),
 (N'Dorj',N'dorj@gmail',N'DO123476',88776875,N'Хануул дүүрэг'),
 (N'Tsetseg',N'tsetseg@gmail',N'TD8768957',99889765,N'Чингэлтэй'),
 (N'Hulan',N'hulan@gmail',N'ХА9768565',87896577,N'Сүхбаатар')

 CREATE TABLE students
 (student_id int primary key not null identity(1, 1),
  student_code nvarchar(10),
  student_elssen_year int,
  student_mergejil_id int,
  student_surgaltiin_tuluvluguu_id int,
  student_surgaltiin_tulbur int,
  student_surgaltiin_hutulbur_id int,
  user_id int)

  select * from students
  
  insert into students values
  (N'C02343',2021,1,1,5000,1,1),
  (N'C02100',2018,2,2,5000,3,2),
  (N'C01002',2021,3,3,5000,1,3),
  (N'C02002',2019,4,4,5000,2,4),
  (N'C02020',2020,5,5,5000,1,4)


  

  create table student_mergejil
  (student_mergejil_id int primary key not null identity(1, 1),
   student_mergejil_name nvarchar(40))

   select * from student_mergejil

   insert into student_mergejil values
   (N'Бизнесийн удирдлага'),
   (N'Програм хангамж'),
   (N'Мэдээллийн систем'),
   (N'Нягтлан бүртгэл'),
   (N'Банк санхүү')


   create table student_surgaltiin_tuluvluguu
   (student_surgaltiin_tuluvluguu_id int primary key not null identity(1,1),
    student_surgaltiin_tuluvluguu_name nvarchar(40))

	select * from student_surgaltiin_tuluvluguu

	insert into student_surgaltiin_tuluvluguu values
	(N'v2020IO'),
	(N'v2021IO'),
	(N'v2019IO'),
	(N'v2018IO'),
	(N'v2022IO')

	

	create table student_surgaltiin_hutulbur
   (student_surgaltiin_hutulbur_id int primary key not null identity(1,1),
    student_surgaltiin_hutulbur_name nvarchar(40))

	select * from student_surgaltiin_hutulbur

	INSERT INTO student_surgaltiin_hutulbur VALUES
	(N'Бакалаврын сургалт'),
	(N'Магистрын сургалт'),
	(N'Докторын сургалт')
	

	select users.user_ner, 
	       users.user_register,
	       students.student_code,
		   student_mergejil.student_mergejil_name,
		   student_surgaltiin_hutulbur.student_surgaltiin_hutulbur_name,
		   student_surgaltiin_tuluvluguu.student_surgaltiin_tuluvluguu_name
    from  students
    inner join users on users.user_id = students.user_id
	inner join student_mergejil 
	on students.student_mergejil_id = student_mergejil.student_mergejil_id
	inner join student_surgaltiin_hutulbur 
	on students.student_surgaltiin_hutulbur_id = student_surgaltiin_hutulbur.student_surgaltiin_hutulbur_id
	inner join student_surgaltiin_tuluvluguu 
	on students.student_surgaltiin_tuluvluguu_id = student_surgaltiin_tuluvluguu.student_surgaltiin_tuluvluguu_id
