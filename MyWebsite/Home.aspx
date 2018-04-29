<%@ Page Title="" Language="C#"   ValidateRequest="true" MasterPageFile="~/Master1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="MyWebsite.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<div class="row">
                <br />
				<div class="col-md-8">
					<div class="carousel slide" id="carousel-995525">
						<ol class="carousel-indicators">
							<li class="active" data-slide-to="0" data-target="#carousel-995525">
							</li>
							<li data-slide-to="1" data-target="#carousel-995525">
							</li>
							<li data-slide-to="2" data-target="#carousel-995525">
							</li>
						</ol>
						<div class="carousel-inner">
							<div class="item active">
								<img src="https://res.cloudinary.com/db6jmijeu/image/upload/v1525019188/room1.jpg"  class="mySize"/>
								<div class="carousel-caption">
									<h4>
										Luxurious Rooms
									</h4>
									
								</div>
							</div>
							<div class="item">
								<img src="https://res.cloudinary.com/db6jmijeu/image/upload/v1525019189/room2.jpg" class="mySize" />
								<div class="carousel-caption">
									<h4>
									We put your comfort first
									</h4>
									
								</div>
							</div>
							<div class="item">
								<img src="https://res.cloudinary.com/db6jmijeu/image/upload/v1525019202/room3.jpg" class="mySize" />
								<div class="carousel-caption">
									<h4>
                                        Quality better than all others
										</h4>
								</div>
							</div>
						</div> <a class="left carousel-control" href="#carousel-995525" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> <a class="right carousel-control" href="#carousel-995525" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
					</div>
				</div>
				<div class="col-md-4">
					<form role="form">
						<div class="form-group">
							 <h4 class="class1"> Sign In</h4>
							<label for="UserName">
								UserName
							</label>
							<asp:TextBox ID="username"  runat="server" required CssClass="form-control"></asp:TextBox>
						</div>
						<div class="form-group">
							 
							<label for="Password1">
								Password
							</label>
							<asp:TextBox ID="password" type="password" runat="server" CssClass="form-control"></asp:TextBox>
						</div>
						
						<asp:Button ID="mySignIN_btn" OnClick="mySignIN_btn_Click"  placeholder="mySignIN" runat="server" Text="Login" CssClass="form-control" />
                        <form action="submit">
 
</form>

					</form>
				</div>
           
			</div>
		</div>
	</div>
</div>
    </asp:Content>
