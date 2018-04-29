<%@ Page Title="" Language="C#" ValidateRequest="true" MasterPageFile="~/Master3.Master" AutoEventWireup="true" CodeBehind="ProfileMember.aspx.cs" Inherits="MyWebsite.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div class="container-fluid">
	<div class="row">
		<div class="col-md-6">
            <br />
			<div class="jumbotron">
				<h2>
					<asp:Label ID="Label1" runat="server" Text="Hello"></asp:Label>
				</h2>
				<p>
					Welcome to your own customizes page where you can chose between variety of available rooms and select these rooms at your own available dates.

                    Click on the button below to get a list of the available rooms
				</p>
				<p>
					<a class="btn btn-primary btn-large" href="SeeRooms.aspx">Available Rooms</a>
                   
				</p>
			</div>
            <a class="btn btn-primary btn-large" href="UpdateMember.aspx">Update Profile</a>
             <a class="btn btn-primary btn-large" href="SearchRooms.aspx">Search Rooms</a>
		</div>
		<div class="col-md-6">
            <br />
			<form role="form">
				<div class="form-group">
                  
    
                  
  <h4 class="myFont">
			Book a room
			</h4>
					 
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
                   
                     <asp:Button ID="book" OnClick="book_Click"  placeholder="mybookIN" runat="server" Text="Book Room" CssClass="form-control" />

                
			</form>
		</div>
	</div>
	<div class="row">
		<div class="col-md-12">
		</div>
	</div>
</div>
</asp:Content>
