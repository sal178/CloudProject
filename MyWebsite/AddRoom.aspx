<%@ Page Title="" Language="C#" ValidateRequest="true" MasterPageFile="~/MasterA.Master" AutoEventWireup="true" CodeBehind="AddRoom.aspx.cs" Inherits="MyWebsite.AddRoom" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="row">
		<div class="col-md-12">

			<div class="page-header">
				<h1>
					<small>Fill in all the details to add a room</small>
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
							 
							<label for="room_no">
								Room_No: &nbsp;
							</label>
                           <%-- ValidationExpression= "^([0-9\(\)\/\+ \-]*)$"--%>

                            <asp:TextBox ID="room_no" runat="server" required CssClass="form-control"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" 
                            runat="server" ErrorMessage="Enter integers" 
                            ControlToValidate="room_no" 
                            ValidationExpression= "^([0-9\(\)\/\+ \-]*)$"></asp:RegularExpressionValidator>
						                            </div>

                      

                       



							<div class="form-group">
							 
							<label for="Type">
								Type: &nbsp
							</label>
                           <asp:DropDownList ID="type" runat="server" required CssClass="form-control">
                    <asp:ListItem Text="Select" Value="0"></asp:ListItem>
                    <asp:ListItem Text="Single" Value="Single"></asp:ListItem>
                    <asp:ListItem Text="Double" Value="Double"></asp:ListItem>
                    <asp:ListItem Text="Suite" Value="Suite"></asp:ListItem>
                    </asp:DropDownList>

							
						</div>
                             <div class="form-group"> 
							 
							<label for="Price">
								Price: &nbsp;
							</label>
                           <%-- ValidationExpression= "^([0-9\(\)\/\+ \-]*)$"--%>

                            <asp:TextBox ID="price" runat="server" required CssClass="form-control"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                            runat="server" ErrorMessage="Enter correct amount" 
                            ControlToValidate="price" 
                            ValidationExpression= "^([0-9\(\)\/\+ \-]*)$"></asp:RegularExpressionValidator>
						                            </div>



						<div class="form-group">
							 
							<label for="Location">
								Location: &nbsp
							</label>
                           <asp:DropDownList ID="location" runat="server" required CssClass="form-control">
                    <asp:ListItem Text="Select" Value="0"></asp:ListItem>
                    <asp:ListItem Text="Lahore" Value="Lahore"></asp:ListItem>
                    <asp:ListItem Text="Karachi" Value="Karachi"></asp:ListItem>
                    <asp:ListItem Text="Islamabad" Value="Islamabad"></asp:ListItem>
                    </asp:DropDownList>

							
						</div>

									

						<div class="form-group">
							 
							<label for="Type">
								TV: &nbsp
							</label>
                           <asp:DropDownList ID="TV" runat="server" required  CssClass="form-control">
                    <asp:ListItem Text="Select" Value="0"></asp:ListItem>
                    <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
                    <asp:ListItem Text="No" Value="No"></asp:ListItem>
                    
                    </asp:DropDownList>

							
						</div>

                        
                       <div class="form-group">
							 
							<label for="Type">
								Fridge: &nbsp
							</label>
                           <asp:DropDownList ID="fridge" runat="server" required CssClass="form-control">
                    <asp:ListItem Text="Select" Value="0"></asp:ListItem>
                    <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
                    <asp:ListItem Text="No" Value="No"></asp:ListItem>
                    
                    </asp:DropDownList>

							
						</div>

                             <div class="form-group">
							 
							<label for="Type">
								WiFi: &nbsp
							</label>
                           <asp:DropDownList ID="wifi" runat="server" required CssClass="form-control">
                    <asp:ListItem Text="Select" Value="0"></asp:ListItem>
                    <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
                    <asp:ListItem Text="No" Value="No"></asp:ListItem>
                    
                    </asp:DropDownList>

							
						</div>

                 
                      
                           <div class="form-group">
							 
							<label for="Availability">
								Availability: &nbsp
							</label>
                           <asp:DropDownList ID="availability" runat="server" required CssClass="form-control">
                    <asp:ListItem Text="Select" Value="0"></asp:ListItem>
                    <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
                    <asp:ListItem Text="No" Value="No"></asp:ListItem>
                    
                    </asp:DropDownList>

							
						</div>


                         <div class="form-group"> 

							

                      <br /> 
                      <br />   

                      <br />   

                      <br />   

                      <br />   

                      <br />   
                      <br />   
                      <br />   
                               
						
                    <asp:Button ID="SignUp_btn" OnClick="SignUp_btn_Click"  placeholder="SignUp" runat="server" Text="Add" CssClass="form-control"/>

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
