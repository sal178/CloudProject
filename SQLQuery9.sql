update myusers set username='ron1', fname='Ron1', lname='Weasley1', emailId='ron@gmail.com', pword='123123',phoneNo='123654',type='Admin' where username='ron';

CREATE PROCEDURE UpdateMemberss
@username [varchar](30) ,
@fname [varchar](20) ,
@lname [varchar](20) ,
@pword [varchar](30) ,
@email [varchar](40) ,
@phoneNo [varchar](18) ,
@flag int OUTPUT
AS
Begin
	if(EXISTS(select * from myusers where myusers.username = 'ron'))
	begin
	set @flag=1
	UPDATE myusers
	SET fname=@fname, lname=@lname , pword = @pword, emailId = @email, phoneNo = @phoneNo
	WHERE username=@username;
	end		
	else
	
	set @flag=0	
End
Go
