<%@ Page Title="" Language="C#" ValidateRequest="true" MasterPageFile="~/MasterA.Master" AutoEventWireup="true" CodeBehind="ProfileAdmin.aspx.cs" Inherits="MyWebsite.ProfileAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style type="text/css">
.stylish-button {
    -webkit-box-shadow:rgba(0,0,0,0.2) 0 1px 0 0;
    -moz-box-shadow:rgba(0,0,0,0.2) 0 1px 0 0;
    box-shadow:rgba(0,0,0,0.2) 0 1px 0 0;
    color:white;
    background-color:rgb(56, 0, 255);
    border-radius:5px;
    -moz-border-radius:5px;
    -webkit-border-radius:5px;
    border:none;
    font-size:16px;
    font-weight:700;
    padding:4px 16px;
    margin-left:40%;margin-right:40%;display:block;margin-top:2%;margin-bottom:2%;
    text-align:center;
    text-shadow:white;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <br />

    <h2>
					<asp:Label ID="Label1" runat="server" Text="Hello"></asp:Label>
				</h2>
    <br />
<a class="stylish-button" href="AddRoom.aspx">Add Rooms</a><br />
    <a class="stylish-button" href="RoomDisp.aspx">Show Rooms</a><br />

<a class="stylish-button" href="ConfRoom.aspx">Configure Rooms</a><br />

<a class="stylish-button" b href="SetPrice.aspx">Set Prices</a><br />
  

</asp:Content>
