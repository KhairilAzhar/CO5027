<%@ Page Title="Gallery" Language="C#" MasterPageFile="~/Booking.Master" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="Booking.Gallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         
    <div class="slideshow-container">

    <div class="mySlides fade">
      <div class="numbertext">1 / 12</div>
      <img runat="server" src="~/Image/_MG_0011.jpg" alt="interior" width="900" height="440"/>
      <div class="text">Inside Empire</div>
    </div>

    <div class="mySlides fade">
      <div class="numbertext">2 / 12</div>
      <img runat="server" src="Image/_MG_8909.jpg" alt="meeting_room" width="900" height="440"/>
      <div class="text">Meeting Room</div>
    </div>

    <div class="mySlides fade">
      <div class="numbertext">3 / 12</div>
      <img runat="server" src="~/Image/_MG_0820.jpg" alt="interior_room" width="900" height="440"/>
      <div class="text">Interior Room</div>
    </div>

    <div class="mySlides fade">
      <div class="numbertext">4 / 12</div>
      <img runat="server" src="~/Image/countryclub5.jpg" alt="diving" width="900" height="440"/>
      <div class="text">Diving</div>
    </div>

    <div class="mySlides fade">
      <div class="numbertext">5 / 12</div>
      <img runat="server" src="~/Image/countryclub4.jpg" alt="bowling" width="900" height="440"/>
      <div class="text">Bowling</div>
    </div>

    <div class="mySlides fade">
      <div class="numbertext">6 / 12</div>
      <img runat="server" src="~/Image/countryclub1.jpg" alt="kayak" width="900" height="440"/>
      <div class="text">Kayak</div>
    </div>

    <div class="mySlides fade">
      <div class="numbertext">7 / 12</div>
      <img runat="server" src="~/Image/golf3.jpg" alt="golf3" width="900" height="440"/>
      <div class="text">Golf</div>
    </div>

    <div class="mySlides fade">
      <div class="numbertext">8 / 12</div>
      <img runat="server" src="~/Image/golf4.jpg" alt="golf4" width="900" height="440"/>
      <div class="text">Golf</div>
    </div>

    <div class="mySlides fade">
      <div class="numbertext">9 / 12</div>
      <img runat="server" src="~/Image/golf2.jpg" alt="golf2" width="900" height="440"/>
      <div class="text">Golf</div>
    </div>

    <div class="mySlides fade">
      <div class="numbertext">10 / 12</div>
      <img runat="server" src="~/Image/spa6.jpg" alt="spa6" width="900" height="440"/>
      <div class="text">Spa</div>
    </div>

    <div class="mySlides fade">
      <div class="numbertext">11 / 12</div>
      <img runat="server" src="~/Image/spa4.jpg" alt="spa4" width="900" height="440"/>
      <div class="text">Spa</div>
    </div>

    <div class="mySlides fade">
      <div class="numbertext">12 / 12</div>
      <img runat="server" src="~/Image/spa1.jpg" alt="spa1" width="900" height="440"/>
      <div class="text">Spa</div>
    </div>

    </div>
    <br/>

    <div style="text-align:center">
      <span class="dot"></span> 
      <span class="dot"></span> 
      <span class="dot"></span>
      <span class="dot"></span>
      <span class="dot"></span> 
      <span class="dot"></span>
      <span class="dot"></span>
      <span class="dot"></span> 
      <span class="dot"></span> 
      <span class="dot"></span>
      <span class="dot"></span> 
      <span class="dot"></span>
    </div>

    <script type="text/javascript" src="JS/slides.js"></script>

</asp:Content>
