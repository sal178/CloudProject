<%@ Page Title="" Language="C#" ValidateRequest="true" MasterPageFile="~/Master2.Master" AutoEventWireup="true" CodeBehind="SignUpMember.aspx.cs" Inherits="MyWebsite.SignUpMember" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">




     <div class="row">
		<div class="col-md-12">

			<div class="page-header">
				<h1>
					<small>Register Yourself As A Member </small>
				</h1>
			</div>
			
		</div>
	</div>

<br /> <br />

	<div class="row">
		<div class="col-md-12">
			<div class="row">
				<div class="col-md-8">
				<div  class="myCenterAlign" > 
					<form role="form">


                          <div class="form-group"> 
							 
							<label for="username">
								 Username : &nbsp;
							</label>
                            <asp:TextBox ID="username" runat="server" required CssClass="form-control"></asp:TextBox>
						</div>



							<div class="form-group">
							 
							<label for="FName">
								First Name &nbsp
							</label>
							<asp:TextBox ID="fname" runat="server" required CssClass="form-control"></asp:TextBox>
						</div>

						<div class="form-group">
							 
							<label for="LName">
								Last Name &nbsp
							</label>
							<asp:TextBox ID="lname" runat="server" required CssClass="form-control"></asp:TextBox>
						</div>

									

						<div class="form-group">
							 
							<label for="exampleInputEmail1">
								Email address &nbsp;
							</label>
                         	<asp:TextBox ID="email" type="email" runat="server" required CssClass="form-control"></asp:TextBox>

						</div>

                        
                        <div class="form-group"> 
							 
							<label for="exampleInputPassword1">
								Password &nbsp;
							</label>
                            <asp:TextBox ID="password" TextMode="password" runat="server" required CssClass="form-control"></asp:TextBox>
						</div>


                 
                        <div class="form-group"> 
							 
							<label for="contact">
								Phone No: &nbsp;
							</label>
                           <%-- ValidationExpression= "^([0-9\(\)\/\+ \-]*)$"--%>

                            <asp:TextBox ID="TxtNo" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" 
                            runat="server" ErrorMessage="Enter valid Phone number" 
                            ControlToValidate="TxtNo" 
                            ValidationExpression= "^([0-9\(\)\/\+ \-]*)$"></asp:RegularExpressionValidator>
						                            </div>



                
							

                         
						
                    <asp:Button ID="SignUp_btn" OnClick="SignUp_btn_Click"  placeholder="SignUp" runat="server" Text="Register" CssClass="form-control"/>

              <br />
                               
					</form>
					</div>
				</div>

				<div class="col-md-6">
				</div>
			</div>
		</div>
	</div>








</asp:Content>
