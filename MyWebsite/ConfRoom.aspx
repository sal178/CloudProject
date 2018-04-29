<%@ Page Title="" Language="C#" ValidateRequest="true" MasterPageFile="~/MasterA.Master" AutoEventWireup="true" CodeBehind="ConfRoom.aspx.cs" Inherits="MyWebsite.ConfRoom" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <div class="container">
    <asp:PlaceHolder ID = "PlaceHolder1" runat="server" />

     <div class="row">
		<div class="col-md-12">
            
            
            
			<div class="page-header">
				<h1>
					<small>Enter the room number of which you want to change details and then fill the rest of the form</small>
				</h1>
			</div>
			
		</div>
	</div>
    <div class="row">
		<div class="col-md-12">
			<div class="row">
				<div class="col-md-8">
				<div  class="myCenterAlign" > 
					<form role="form">
                        <br />
                        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                         
                        <div class="form-group"> 
							 
							<label for="room_no">
								Room_No: &nbsp;
							</label>
                           <%-- ValidationExpression= "^([0-9\(\)\/\+ \-]*)$"--%>

                            <asp:TextBox ID="room_no" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                            runat="server" ErrorMessage="Enter integers" 
                            ControlToValidate="room_no" 
                            ValidationExpression= "^([0-9\(\)\/\+ \-]*)$"></asp:RegularExpressionValidator>
						                            </div>




							<div class="form-group">
							 
							<label for="Type">
								Type: &nbsp
							</label>
                           <asp:DropDownList ID="type" runat="server" CssClass="form-control">
                    <asp:ListItem Text="Select" Value="0"></asp:ListItem>
                    <asp:ListItem Text="Single" Value="single"></asp:ListItem>
                    <asp:ListItem Text="Double" Value="double"></asp:ListItem>
                    <asp:ListItem Text="Suite" Value="suite"></asp:ListItem>
                    </asp:DropDownList>

							
						</div>

						<div class="form-group"> 
							 
							<label for="price">
								Price: &nbsp;
							</label>
                           <%-- ValidationExpression= "^([0-9\(\)\/\+ \-]*)$"--%>

                            <asp:TextBox ID="price" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" 
                            runat="server" ErrorMessage="Enter integers" 
                            ControlToValidate="price" 
                            ValidationExpression= "^([0-9\(\)\/\+ \-]*)$"></asp:RegularExpressionValidator>
						                            </div>


									

						<div class="form-group">
							 
							<label for="Location">
								Location: &nbsp
							</label>
                           <asp:DropDownList ID="location" runat="server" CssClass="form-control">
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
                           <asp:DropDownList ID="TV" runat="server" CssClass="form-control">
                    <asp:ListItem Text="Select" Value="0"></asp:ListItem>
                    <asp:ListItem Text="Yes" Value="yes"></asp:ListItem>
                    <asp:ListItem Text="No" Value="no"></asp:ListItem>
                    
                    </asp:DropDownList>

							
						</div>

                        
                       <div class="form-group">
							 
							<label for="Type">
								Fridge: &nbsp
							</label>
                           <asp:DropDownList ID="fridge" runat="server" CssClass="form-control">
                    <asp:ListItem Text="Select" Value="0"></asp:ListItem>
                    <asp:ListItem Text="Yes" Value="yes"></asp:ListItem>
                    <asp:ListItem Text="No" Value="no"></asp:ListItem>
                    
                    </asp:DropDownList>

							
						</div>

                             <div class="form-group">
							 
							<label for="Type">
								WiFi: &nbsp
							</label>
                           <asp:DropDownList ID="wifi" runat="server" CssClass="form-control">
                    <asp:ListItem Text="Select" Value="0"></asp:ListItem>
                    <asp:ListItem Text="Yes" Value="yes"></asp:ListItem>
                    <asp:ListItem Text="No" Value="no"></asp:ListItem>
                    
                    </asp:DropDownList>

							
						</div>

                 
                      
                           <div class="form-group">
							 
							<label for="Availability">
								Availability: &nbsp
							</label>
                           <asp:DropDownList ID="availability" runat="server" CssClass="form-control">
                    <asp:ListItem Text="Select" Value="0"></asp:ListItem>
                    <asp:ListItem Text="Yes" Value="yes"></asp:ListItem>
                    <asp:ListItem Text="No" Value="no"></asp:ListItem>
                    
                    </asp:DropDownList>

							
						</div>

						
              <br />
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:GridView ID="ItemGrid" runat="server">
                    </asp:GridView>
                    <asp:Button ID="SignUp_btn" runat="server" CssClass="form-control" OnClick="SignUp_btn_Click" placeholder="SignUp" Text="Update" />
                </ContentTemplate>
            </asp:UpdatePanel>
                               
					</form>
					</div>
				</div>

				<div class="col-md-6">
				</div>
			</div>
		</div>
	</div>
    </div>
</asp:Content>
