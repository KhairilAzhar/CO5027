<%@ Page Title="Gallery" Language="C#" MasterPageFile="~/Booking.Master" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="Booking.Gallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="gallery_content">
      <img class="gallSlides" runat="server" src="~/Image/_MG_0011.jpg" alt="interior" width="900" height="440"/>
      <img class="gallSlides" runat="server" src="Image/_MG_8909.jpg" alt="meeting_room" width="900" height="440"/>
      <img class="gallSlides" runat="server" src="~/Image/_MG_0820.jpg" alt="interior_room" width="900" height="440"/>
      <img class="gallSlides" runat="server" src="~/Image/countryclub5.jpg" alt="diving" width="900" height="440"/>
      <img class="gallSlides" runat="server" src="~/Image/countryclub4.jpg" alt="bowling" width="900" height="440"/>
      <img class="gallSlides" runat="server" src="~/Image/countryclub1.jpg" alt="kayak" width="900" height="440"/>
      <img class="gallSlides" runat="server" src="~/Image/golf3.jpg" alt="golf3" width="900" height="440"/>
      <img class="gallSlides" runat="server" src="~/Image/golf4.jpg" alt="golf4" width="900" height="440"/>
      <img class="gallSlides" runat="server" src="~/Image/golf2.jpg" alt="golf2" width="900" height="440"/>
      <img class="gallSlides" runat="server" src="~/Image/spa6.jpg" alt="spa6" width="900" height="440"/>
      <img class="gallSlides" runat="server" src="~/Image/spa4.jpg" alt="spa4" width="900" height="440"/>
      <img class="gallSlides" runat="server" src="~/Image/spa1.jpg" alt="spa1" width="900" height="440"/>

  <div class="w3-row-padding w3-section">
    <div class="w3-col s4">
      <img class="demo w3-opacity w3-hover-opacity-off" runat="server" src="~/Image/_MG_0011.jpg" alt="interior" width="300" height="100" onclick="currentDiv(1)"/>
    </div>
    <div class="w3-col s4">
      <img class="demo w3-opacity w3-hover-opacity-off" runat="server" src="~/Image/_MG_8909.jpg" alt="meeting_room" width="300" height="100" onclick="currentDiv(2)"/>
    </div>
      <div class="w3-col s4">
      <img class="demo w3-opacity w3-hover-opacity-off" runat="server" src="~/Image/_MG_0820.jpg" alt="interior_room" width="300" height="100" onclick="currentDiv(3)"/>
    </div>
    <div class="w3-col s4">
      <img class="demo w3-opacity w3-hover-opacity-off" runat="server" src="~/Image/countryclub5.jpg" alt="country_club" width="300" height="100" onclick="currentDiv(4)"/>
    </div>
      <div class="w3-col s4">
      <img class="demo w3-opacity w3-hover-opacity-off" runat="server" src="~/Image/countryclub4.jpg" alt="bowling" width="300" height="100" onclick="currentDiv(5)"/>
    </div>
      <div class="w3-col s4">
      <img class="demo w3-opacity w3-hover-opacity-off" runat="server" src="~/Image/countryclub1.jpg" alt="kayak" width="300" height="100" onclick="currentDiv(6)"/>
    </div>
      <div class="w3-col s4">
      <img class="demo w3-opacity w3-hover-opacity-off" runat="server" src="~/Image/golf3.jpg" alt="golf3" width="300" height="100" onclick="currentDiv(7)"/>
    </div>
      <div class="w3-col s4">
      <img class="demo w3-opacity w3-hover-opacity-off" runat="server" src="~/Image/golf4.jpg" alt="golf4" width="300" height="100" onclick="currentDiv(8)"/>
    </div>
      <div class="w3-col s4">
      <img class="demo w3-opacity w3-hover-opacity-off" runat="server" src="~/Image/golf2.jpg" alt="golf2" width="300" height="100" onclick="currentDiv(9)"/>
    </div>
      <div class="w3-col s4">
      <img class="demo w3-opacity w3-hover-opacity-off" runat="server" src="~/Image/spa6.jpg" alt="spa6" width="300" height="100" onclick="currentDiv(10)"/>
    </div>
      <div class="w3-col s4">
      <img class="demo w3-opacity w3-hover-opacity-off" runat="server" src="~/Image/spa4.jpg" alt="spa4" width="300" height="100" onclick="currentDiv(11)"/>
    </div>
      <div class="w3-col s4">
      <img class="demo w3-opacity w3-hover-opacity-off" runat="server" src="~/Image/spa1.jpg" alt="spa1" width="300" height="100" onclick="currentDiv(12)"/>
    </div>
  </div>
</div>
    <script type="text/javascript" src="JS/gallery.js"></script>

</asp:Content>
