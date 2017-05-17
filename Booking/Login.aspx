<%@ Page Title="Login page" Language="C#" MasterPageFile="~/Booking.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Booking.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">   
	 <div id="sign_content">
  		<div id="login_content">
		    <fieldset>
  		    <h4>Sign In:</h4>
                <asp:PlaceHolder runat="server" ID="LoginForm" Visible="false">
                <div class="log_box">
                <asp:Label runat="server" ID="lblLogAdmin" >You must log in first before you can access admin page!</asp:Label>
                </div>
                <div class="log_box">
                <asp:Label runat="server" ID="lblUser" AssociatedControlID="txtUser">Email:</asp:Label>
                    <div>
                    <asp:TextBox runat="server" ID="txtUser"></asp:TextBox>
                    </div>
                    <asp:RequiredFieldValidator ID="rfvLog" runat="server" ControlToValidate="txtUser" ValidationGroup="GroupLog" ErrorMessage="*Please insert your email" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                <div class="log_box">
                <asp:Label runat="server" ID="lblPassword" AssociatedControlID="txtPassword">Password:</asp:Label>
                    <div>
                    <asp:TextBox runat="server" ID="txtPassword" TextMode="Password"></asp:TextBox>
                    </div>
                    <asp:RequiredFieldValidator ID="rfvLogPass" runat="server" ControlToValidate="txtPassword" ValidationGroup="GroupLog" ErrorMessage="*Please insert your password" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                <div class="log_box">
                    <div>
                    <asp:Button ID="btnLogin" runat="server" Text="Login" ValidationGroup="GroupLog" OnClick="btnLogin_Click" />
                    </div>
                </div>
                    </asp:PlaceHolder>
                <asp:PlaceHolder runat="server" ID="Logout" Visible="false">
            <div>
               <div>
                  <asp:Button runat="server" OnClick="btnLogout_Click" Text="Log out" />
               </div>
            </div>
         </asp:PlaceHolder>
         <asp:PlaceHolder runat="server" ID="LoginStatus" Visible="false">
            <p>
               <asp:Literal runat="server" ID="litStatus" />
            </p>
         </asp:PlaceHolder>
            </fieldset>
		</div>
            
        <div id="mail">
            <fieldset>
            <h4>Register:</h4>
            <div class="log_box">
                <asp:Label ID="lblEmail" runat="server" AssociatedControlID="txtEmail">Email:</asp:Label>
                <div>
                <asp:TextBox ID="txtEmail" runat="server" ></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ValidationGroup="GroupReg" ErrorMessage="*Please enter your email" ForeColor="Red"></asp:RequiredFieldValidator>
                <div>
                <asp:RegularExpressionValidator ID="revEmailValid" runat="server" ValidationGroup="GroupReg" ValidationExpression ="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtEmail" ErrorMessage="*Please enter a valid email" ForeColor="Red"></asp:RegularExpressionValidator>
                </div>
            </div>
            <div class="log_box">         
		        <asp:Label ID="lblPswd" runat="server" AssociatedControlID="txtPswd">Password:</asp:Label>
                <div>           
                <asp:TextBox ID="txtPswd" runat="server" TextMode="Password"></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="rfvPswd" runat="server" ValidationGroup="GroupReg" ControlToValidate="txtPswd" ErrorMessage="*Please enter your password" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="log_box">
                <asp:Label runat="server" AssociatedControlID="txtConfirm">Confirm password</asp:Label>
                <div>
                <asp:TextBox runat="server" ID="txtConfirm" TextMode="Password" />
                </div>
                
        </div>
            <div class="log_box">          
                <div>
                <asp:Button ID="btnSubmit" runat="server" ValidationGroup="GroupReg" OnClick="btnSubmit_Click" Text="Register" />
                </div>
            </div>         
            <asp:Literal ID="litRegister" runat="server"></asp:Literal>
            </fieldset>
	</div>
        </div>
</asp:Content>
