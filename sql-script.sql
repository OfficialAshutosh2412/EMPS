--1.
create table signup(
	empid int identity(1,1) not null primary key,
	email nvarchar(50) not null,
	[password] nvarchar(15) not null,
	phone varchar(15) not null,
	[address] nvarchar(200) not null,
	pincode varchar(10) not null,
	photo varchar(200) not null,
	createdAt datetime default getdate()
);