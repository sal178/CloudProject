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
  insert into myusers values('voldi','Tom','Riddle','iamlordvoldemort@gmail.com','321','03004264897','Manager');
  --update myusers set username='ron1', fname='Ron1', lname='Weasley1', emailId='ron@gmail.com', pword='123123',phoneNo='123654',type='Admin' where username='ron';

--CREATE TABLE images_Members
--(

--username [varchar] (50) PRIMARY KEY NOT NULL,
--myPhoto [image] NOT NULL,
--photo_name [varchar](50) NOT NULL

--)

--CREATE PROCEDURE AddPic1
--@Username [varchar](30) ,
--@PicName [varchar] (50),
--@Photo [image],
--@Patflag int OUTPUT

--AS
--Begin
--	if(EXISTS(select * from images_Members where images_Members.username = @Username ))
--	set @Patflag=0		
--	else
--	begin
--	set @Patflag=1
--		Insert into image_Members VALUES (@Username, @Photo, @PicName);

--	end
	
--End
--Go

CREATE PROCEDURE UpdateMembers 
@Username [varchar](30) ,
@FName [varchar](20) ,
@LName [varchar](20) ,
@UserPassword [varchar](30) ,
@Email [varchar](40) ,
@Contact [varchar](18) ,
@flag int OUTPUT
AS
Begin
	if(EXISTS(select * from myusers where myusers.username = @Username))
	begin
	set @flag=1
	UPDATE myusers
	SET fname =@FName,lname = @LName , pword = @Email, emailId = @UserPassword, phoneNo = @Contact
	WHERE username = @Username;
	end		
	else
	
	set @flag=0	
End
Go

create table rooms
(
Room_No int primary key not null,
Type_ varchar (20),
Price int,
Location varchar (20),
TV varchar (10),
Fridge varchar (10),
WiFi varchar (10),
Availability_ varchar (10),
Status_ varchar(10)
)


create procedure EnterRooms
   ( 
   @room_no int,
   @type varchar(20),
   @price int,
   @location varchar(20),
   @TV varchar(10),
   @fridge varchar(10),
   @wifi varchar(10),
   @availability varchar(10)
   
	)
   as 
   insert into rooms(Room_No,Type_,Price,Location,TV,Fridge,WiFi,Availability_)  values(@room_no,@type,@price,@location,@TV,@fridge,@wifi,@availability);

   insert into rooms(Room_No,Type_,Price,Location,TV,Fridge,WiFi,Availability_) values(101,'Single',200,'Lahore','Yes','Yes','No','Yes');
   insert into rooms(Room_No,Type_,Price,Location,TV,Fridge,WiFi,Availability_) values(102,'Double',200,'Lahore','Yes','Yes','No','Yes');
   insert into rooms(Room_No,Type_,Price,Location,TV,Fridge,WiFi,Availability_) values(103,'Single',200,'Lahore','Yes','Yes','No','No');
   insert into rooms(Room_No,Type_,Price,Location,TV,Fridge,WiFi,Availability_) values(104,'Suite',250,'Karachi','Yes','Yes','No','Yes');


   CREATE PROCEDURE UpdateRoom 
    @room_no int,
    @type_ varchar (20),
    @price int,
	@location varchar (20),
    @TV varchar (10),
   @fridge varchar (10),
   @wifi varchar (10),
   @availability varchar (10),
   @flag  int OUTPUT

AS
Begin
	if(EXISTS(select * from rooms where rooms.Room_No = @room_no))
	begin
	set @flag=1
	UPDATE rooms
	SET Type_ =@type_,Price = @price ,Location = @location, TV = @TV, Fridge = @fridge, WiFi=@wifi, Availability_=@availability
	WHERE rooms.Room_No = @room_no
	end		
	else
	
	set @flag=0	
End
Go


 CREATE PROCEDURE SetPrice 
    @room_no int,
    @price int,
   @flag  int OUTPUT

AS
Begin
	if(EXISTS(select * from rooms where rooms.Room_No = @room_no))
	begin
	set @flag=1
	UPDATE rooms
	SET Price = @price
	WHERE rooms.Room_No = @room_no
	end		
	else
	
	set @flag=0	
End
Go




 CREATE PROCEDURE ApproveRooms 
    @room_no int,
   @flag  int OUTPUT

AS
Begin
	if(EXISTS(select * from rooms where rooms.Room_No = @room_no))
	begin
	set @flag=1
	UPDATE rooms
	SET Status_='Approved'
	WHERE rooms.Room_No = @room_no
	end		
	else
	
	set @flag=0	
End
Go

 CREATE PROCEDURE SearchRoom 
    @type_ varchar (20),
	@location varchar (20),
   @flag  int OUTPUT

AS
Begin
	if(EXISTS(select * from rooms where rooms.Type_=@type_ and rooms.Location=@location))
	begin
	set @flag=1
	
	end		
	else
	
	set @flag=0	
End
Go

