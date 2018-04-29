insert into myusers values('atum','Channing','Tatum','ct@gmail.com','12345','1234567890','Manager');

CREATE PROCEDURE UserTypessss
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
Go

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

CREATE TABLE images
(

userID [varchar] (50) PRIMARY KEY NOT NULL,
myPhoto [image] NOT NULL,
photo_name [varchar](50) NOT NULL

)


CREATE PROCEDURE New_Pic /* REUTURNS FLAG IF PROFILE ALREADY EXISTS ELSE CREATES USER PROFILE AND SETS FLAG */
@Username [varchar](30) ,
@PicName [varchar] (50),
@Photo [image],
@Patflag int OUTPUT

AS
Begin
	if(EXISTS(select * from images where images.userID = @Username ))
	set @Patflag=0		
	else
	begin
	set @Patflag=1
		Insert into image_User VALUES (@Username, @Photo, @PicName);

	end
	
End
Go