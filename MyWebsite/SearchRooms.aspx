<%@ Page Title="" Language="C#" ValidateRequest="true" MasterPageFile="~/Master3.Master" AutoEventWireup="true" CodeBehind="SearchRooms.aspx.cs" Inherits="MyWebsite.SearchRooms" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">
		<div class="col-md-12">

			<div class="page-header">
				<h1>
					<small>Search Rooms by Location </small>
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

                         <asp:Button ID="search" OnClick="search_Click"  placeholder="loc_search" runat="server" Text="Search" CssClass="form-control"/>
                        
                    
                        
                 
                        
                 
                      
                         

						
                   

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
