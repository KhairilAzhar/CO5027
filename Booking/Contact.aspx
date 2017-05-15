<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/Booking.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Booking.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="mail_content">
  			<div id="contact">
				<h3>The Empire Hotel and Country Club</h3>
                <p>Jerudong BG3122,<br/>
                    Negara Brunei Darussalam<br/>
                    Tel: + 673 241 8888<br/>
                    Fax: + 673 241 8999<br/>
                    Email: <a href="mailto:info@theempirehotel.com">info@theempirehotel.com</a>
                    </p>
                <h3>The Empire Golf &amp; Country Club</h3>
                <p>Tel: + 673 241 8222<br/>
                    Fax: +673 241 7815<br/>
                    Email: <a href="mailto:countryclub.reception@theempirehotel.com">countryclub.reception@theempirehotel.com
                    </a>
                    </p>
                <h3>ROOM RESERVATIONS</h3>
                <p>Tel: + 673 241 7788<br/>
                    Fax: + 673 241 7799<br/>
                    Email: <a href="mailto:res@theempirehotel.com">res@theempirehotel.com</a>
                    </p>
			</div>
            <div id="mail">
                   <fieldset>
                    <legend>Please insert message here:</legend>
                    <div class="log_box">
                    <asp:Label runat="server" ID="lblName" AssociatedControlID="txtName">Your name:</asp:Label>
                        <div>
                        <asp:TextBox runat="server" placeholder="Your name..." ID="txtName"></asp:TextBox>
                        </div>
                        <asp:RequiredFieldValidator ID="rfvname" runat="server" ErrorMessage="*Please insert your name" ControlToValidate="txtName" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    <div class="log_box">                  
                    <asp:Label runat="server" ID="lblSubject" AssociatedControlID="txtSubject">Subject:</asp:Label>
                        <div>
                        <asp:TextBox runat="server" placeholder="Subject..." ID="txtSubject"></asp:TextBox>
                       </div>
                       <asp:RequiredFieldValidator ID="rfvsubject" runat="server" ErrorMessage="*Please insert your subject" ControlToValidate="txtSubject" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class="log_box">
                    <asp:label runat="server" ID="lblEmail" AssociatedControlID="txtEmail">Email address:</asp:label>
                        <div>
                        <asp:TextBox runat="server" placeholder="Your email address..." ID="txtEmail"></asp:TextBox>
                        </div>
                        <asp:RequiredFieldValidator ID="rfvemail" runat="server" ControlToValidate="txtEmail" ErrorMessage="*Please enter your email" ForeColor="Red"></asp:RequiredFieldValidator>                       
                        <asp:RegularExpressionValidator ID="revEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtEmail" ErrorMessage="*Please enter a valid email" ForeColor="Red"></asp:RegularExpressionValidator>
                    </div>  
                    <div class="log_box">                     
                    <asp:label runat="server" ID="lblMessage" AssociatedControlID="txtMessage">Your message:</asp:label>
                        <div>
                        <asp:TextBox runat="server" placeholder="Your message..." ID="txtMessage" TextMode="MultiLine" Height="75px" Width="338px"></asp:TextBox>
                        </div>
                        <asp:RequiredFieldValidator ID="rfvmessage" runat="server" ErrorMessage="*Please insert your message" ControlToValidate="txtMessage" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class="log_box">
                    <asp:Button ID="btnSendMail" runat="server" Text="Send" OnClick="btnSendMail_Click" />
                    </div>
                    <asp:Literal ID="litResult" runat="server"></asp:Literal>
                  </fieldset>
		  </div>
		</div>
                			
		<div id="map"><img runat="server" src="~/Image/hpcmap.jpg" alt="map"/></div>
        <script src="JS/maps.js"></script>
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCbTyJPsUluUCqXDUWLK1GFIXAbbA4E26o&callback=myMap">
    	</script>
</asp:Content>
