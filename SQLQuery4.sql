create table myusers (

username [varchar] (30) Primary key not null,
fname  [varchar] (20) not null,
lname  [varchar] (20) not null,
emailId [varchar] (40) null,
pword [varchar] (30) not null,
phoneNo [varchar] (18) null,
type [varchar] (10)
)

create procedure EnterUsers
   ( 
   @username varchar(30),
   @fname varchar(20),
   @lname varchar(20),
   @email varchar(40),
   @pword varchar(30),
   @phoneNo varchar(18),
   @type varchar(10)
   
	)
   as 
   insert into myusers values(@username, @fname, @lname, @email , @pword,@phoneNo,@type);

 create PROCEDURE [dbo].[SignIN]
@Username [varchar](30) ,
@UserPassword [varchar](30) ,
@flag int OUTPUT
AS
Begin
	if(EXISTS(select * from myusers where myusers.username = @Username AND myusers.pword = @UserPassword))
	begin
	set @flag=1
	end
	else
	set @flag=2	
End

create PROCEDURE [dbo].[UserTypessss]
@Username [varchar](30) ,
@UserType [varchar](30) OUTPUT
AS
Begin
	if(EXISTS(select * from myusers where myusers.username = @Username AND myusers.type = 'Member'))
	begin
	set @UserType='Member'
	end
	else if(EXISTS(select * from myusers where myusers.username = @Username AND myusers.type = 'Admin'))
	set @UserType='Admin'
	else if(EXISTS(select * from myusers where myusers.username = @Username AND myusers.type = 'Manager'))
	set @UserType='Manager'
End

  insert into myusers values('sam','Sam','Smith','samsmith@gmail.com','1212','03244485963','Member');
  insert into myusers values('harry7','Harry','Potter','hp7@gmail.com','321','03246542856','Admin');
  insert into myusers values('ron','Ronald','Weasley','r.w@gmail.com','321','03246555426','Admin');
  insert into myusers values('voldi','Tom','Riddle','iamlordvoldemort@gmail.com','321','03004264897','Manager');
  update myusers set username='ron1', fname='Ron1', lname='Weasley1', emailId='ron@gmail.com', pword='123123',phoneNo='123654',type='Admin' where username='ron';

  CREATE TABLE images
(

userID [varchar] (50) PRIMARY KEY NOT NULL,
myPhoto [image] NOT NULL,
photo_name [varchar](50) NOT NULL

)

  CREATE PROCEDURE New_Pic111
@Username [varchar](30) ,
@PicName [varchar] (50),
@Photo [image],
@flag int OUTPUT

AS
Begin

	Insert into images VALUES (@Username, @Photo, @PicName);
	set @flag=0;
	


	
End
Go

