<%@ Page Title="" Language="C#" ValidateRequest="true" MasterPageFile="~/Master3.Master" AutoEventWireup="true" CodeBehind="ProfileManager.aspx.cs" Inherits="MyWebsite.ProfileManager" %>
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
<a class="stylish-button" href="ApprovePrice.aspx">Set Prices</a>

<a class="stylish-button" href="ApproveRooms.aspx">Approve Rooms</a><br />
   

</asp:Content>
