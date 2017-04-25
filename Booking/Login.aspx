<%@ Page Title="Login page" Language="C#" MasterPageFile="~/Booking.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Booking.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
	 <div id="sign_content">
  		<div id="login_content">
		    <fieldset>
  		    <h4>Sign In:</h4>
            <asp:Label runat="server" ID="lblUser" Font-Bold="True">Username:</asp:Label><br/>
            <asp:TextBox runat="server" placeholder="Your username..." ID="txtUser"></asp:TextBox><br/><br/>
            <asp:Label runat="server" ID="lblPassword" Font-Bold="True">Password:</asp:Label><br/>
            <asp:TextBox runat="server" placeholder="Your password..." ID="txtPassword"></asp:TextBox><br/><br/>
            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" /><br/><br/>
            <asp:Literal ID="litLogin" runat="server"></asp:Literal>
            </fieldset>
		</div>
            
        <div id="mail">
            <img class="mySlides" alt="empire_view" width="400" height="400" runat="server" src="~/Image/EMPIRE_001_DK_690x459.jpg" />        
            <img class="mySlides" alt="empire_sideview" width="400" height="400" runat="server" src="~/Image/images.jpg" />
            <img class="mySlides" alt="empire_poolview" width="400" height="400" runat="server" src="~/Image/_MG_9790.jpg" />
            <img class="mySlides" alt="empire_exteriorview" width="400" height="400" runat="server" src="~/Image/004531-15-exterior.jpg" />
	    </div>

    <script type="text/javascript" src="JS/slideshow.js"></script>
	</div>
</asp:Content>
