<%@ Page Title="" Language="C#" ValidateRequest="true" MasterPageFile="~/MasterM.Master" AutoEventWireup="true" CodeBehind="ApproveRooms.aspx.cs" Inherits="MyWebsite.ApproveRooms" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <asp:PlaceHolder ID = "PlaceHolder1" runat="server" />
    <div class="row">
		<div class="col-md-12">

			<div class="page-header">
				<h1>
					<small>Enter a Room Number to Approve it</small>
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



									

						
                    <asp:Button ID="SignUp_btn" OnClick="SignUp_btn_Click"  placeholder="SignUp" runat="server" Text="Approve" CssClass="form-control"/>

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
