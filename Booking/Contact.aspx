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
                <form id="mailform" action="mailto:info@theempirehotel.com" method="get">
                   <fieldset>
                    <legend>Please insert message here:</legend><br/>
                    <label>Your name:</label><br/>
                    <input type="text" name="username" placeholder="Your name..."/><br/><br/>
                    <label>Email address:</label><br/>
                    <input type="text" name="emailaddress" placeholder="Your email address..."/><br/><br/>
                    <label>Your message:</label><br/>
                    <textarea id="message" name="message" placeholder="Your message..."></textarea><br/><br/>
                    <input id="sendmail" type="submit" value="Send"/>
                  </fieldset>
                </form>
		  </div>                
		</div>
                			
		<div id="map"><img runat="server" src="~/Image/hpcmap.jpg" alt="map"/></div>
        <script src="JS/maps.js"></script>
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCbTyJPsUluUCqXDUWLK1GFIXAbbA4E26o&callback=myMap">
    	</script>
</asp:Content>
