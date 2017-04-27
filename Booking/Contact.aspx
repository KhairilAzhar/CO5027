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
                    <legend>Please insert message here:</legend><br/>
                    <asp:Label runat="server" ID="lblName" Font-Bold="True">Your name:</asp:Label><br/>
                    <asp:TextBox runat="server" placeholder="Your name..." ID="txtName"></asp:TextBox>
                       <br/>
                       <asp:RequiredFieldValidator ID="rfvname" runat="server" ErrorMessage="*Please insert your name" ControlToValidate="txtName" ForeColor="Red"></asp:RequiredFieldValidator>
                       <br/><br/>                        
                    <asp:Label runat="server" ID="lblSubject" Font-Bold="True">Subject:</asp:Label><br/>
                    <asp:TextBox runat="server" placeholder="Subject..." ID="txtSubject"></asp:TextBox>
                       <br/>
                       <asp:RequiredFieldValidator ID="rfvsubject" runat="server" ErrorMessage="*Please insert your subject" ControlToValidate="txtSubject" ForeColor="Red"></asp:RequiredFieldValidator>
                       <br/><br/>
                    <asp:label runat="server" ID="lblEmail" Font-Bold="True">Email address:</asp:label><br/>
                    <asp:TextBox runat="server" placeholder="Your email address..." ID="txtEmail"></asp:TextBox>
                       <br/>
                       <asp:RequiredFieldValidator ID="rfvemail" runat="server" ControlToValidate="txtEmail" ErrorMessage="*Please enter your email" ForeColor="Red"></asp:RequiredFieldValidator>
                       <br/> 
                       <asp:RegularExpressionValidator ID="revEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtEmail" ErrorMessage="*Please enter a valid email" ForeColor="Red"></asp:RegularExpressionValidator>
                       <br/><br/>                       
                    <asp:label runat="server" ID="lblMessage" Font-Bold="True">Your message:</asp:label><br/>
                    <asp:TextBox runat="server" placeholder="Your message..." ID="txtMessage" TextMode="MultiLine" Height="75px" Width="338px"></asp:TextBox><br/>
                       <asp:RequiredFieldValidator ID="rfvmessage" runat="server" ErrorMessage="*Please insert your message" ControlToValidate="txtMessage" ForeColor="Red"></asp:RequiredFieldValidator>
                       <br/><br/>
                    <asp:Button ID="btnSendMail" runat="server" Text="Send" OnClick="btnSendMail_Click" /><br/><br/>
                    <asp:Literal ID="litResult" runat="server"></asp:Literal>
                  </fieldset>
		  </div>
		</div>
                			
		<div id="map"><img runat="server" src="~/Image/hpcmap.jpg" alt="map"/></div>
        <script src="JS/maps.js"></script>
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCbTyJPsUluUCqXDUWLK1GFIXAbbA4E26o&callback=myMap">
    	</script>
</asp:Content>
