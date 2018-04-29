<%@ Page Title="" Language="C#"  ValidateRequest="true" MasterPageFile="~/Master3.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="MyWebsite.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="row">
		<div class="col-md-12">

			<div class="page-header">
				<h1>
					<small>Your feedback is valuable! </small>
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
							 
							<label for="name">
								 Name : &nbsp;
							</label>
                            <asp:TextBox ID="name" runat="server" required CssClass="form-control"></asp:TextBox>
						</div>


									

						<div class="form-group">
							 
							<label for="exampleInputEmail1">
								Email address &nbsp;
							</label>
                         	<asp:TextBox ID="email" type="email" runat="server" required CssClass="form-control"></asp:TextBox>

						</div>

                          <div class="form-group"> 
							 
							<label for="subject">
								 Subject : &nbsp;
							</label>
                            <asp:TextBox ID="subject" runat="server" required CssClass="form-control"></asp:TextBox>
						</div>

                       <div class="form-group">
                           <label for="comment">
                               Comment:
                           </label>
                           <asp:TextBox ID="comment" runat="server"  TextMode="MultiLine" required CssClass="form-control"></asp:TextBox>
                       </div>
                 
                       
                         
						
                    <asp:Button ID="comment_btn" OnClick="comment_Click"  placeholder="Comment" runat="server" Text="Sumbit" CssClass="form-control"/>

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
