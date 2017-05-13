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
            <fieldset>
            <h4>Register:</h4>
            <asp:Label ID="lblEmail" runat="server" Font-Bold="True">Email:</asp:Label><br/>
            <asp:TextBox ID="txtEmail" runat="server" placeholder="Your email..."></asp:TextBox><br/><br/>
            <asp:Label ID="lblPswd" runat="server" Font-Bold="True">Password:</asp:Label><br/>
            <asp:TextBox ID="txtPswd" runat="server" placeholder="Your password..."></asp:TextBox><br/><br/>
            <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Register" /><br/><br/>
            <asp:Literal ID="litRegister" runat="server"></asp:Literal>
            </fieldset>
	    </div>

	</div>
</asp:Content>
