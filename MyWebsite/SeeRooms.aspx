<%@ Page Title="" Language="C#"  ValidateRequest="true" MasterPageFile="~/Master3.Master" AutoEventWireup="true" CodeBehind="SeeRooms.aspx.cs" Inherits="MyWebsite.SeeRooms" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    
     <div class="row">
		<div class="col-md-12">

			<div class="page-header">
				<h1>
					<small>The table below shows all available rooms</small>
				</h1>
			</div>
			
		</div>
	</div>
    <br />
    <asp:PlaceHolder ID = "PlaceHolder1" runat="server" />

</asp:Content>
