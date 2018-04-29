create table myusers (

username [varchar] (30) Primary key not null,
fname  [varchar] (20) not null,
lname  [varchar] (20) not null,
emailId [varchar] (40) null,
pword [varchar] (30) not null,
phoneNo [varchar] (18) null,
type [varchar] (10)
)

  insert into myusers values('sam','Samantha','Smith','samsmith@gmail.com','1212','03244485963','Member');
  insert into myusers values('bob','Bob','Ross','br@gmail.com','321','03244485963','Admin');

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

CREATE PROCEDURE SignIN
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
Go


CREATE PROCEDURE UserType1
@Username [varchar](30) ,
@UserType [varchar](30) ,
@flag [varchar](10) OUTPUT
AS
Begin
	if(EXISTS(select * from myusers where myusers.username = @Username AND myusers.type = 'Member'))
	begin
	set @flag='Member'
	end
	else if(EXISTS(select * from myusers where myusers.username = @Username AND myusers.type = 'Admin'))
	set @flag='Admin'
End
Go



   
