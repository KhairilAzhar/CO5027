<%@ Page Title="Accommodation" Language="C#" MasterPageFile="~/Booking.Master" AutoEventWireup="true" CodeBehind="Accommodation.aspx.cs" Inherits="Booking.Accommodation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="third_content">
        <h3>Rooms by category:</h3>
			<div class="book_available">         
              <a runat="server" href="~/Image/_MG_0975.jpg">
                <img alt="accommodation_ambassador" width="200" height="120" runat="server" src="~/Image/_MG_0975.jpg" />
              </a>
              <h5>Ambassador &amp; Embassy</h5>
            </div>
            <div class="book_available">
              <a runat="server" href="~/Image/slide-Ocean-Superior2.jpg">
                <img alt="accommodation_superior" width="200" height="120" runat="server" src="~/Image/slide-Ocean-Superior2.jpg" />
              </a>
              <h5>Ocean &amp; Superior</h5>
            </div>
            <div class="book_available">
              <a runat="server" href="~/Image/deluxe_room.jpg">
              <img alt="accommodation_deluxe" width="200" height="120" runat="server" src="~/Image/deluxe_room.jpg" />
              </a>
            <h5>Deluxe Rooms</h5>
            </div>
            <div class="book_available">
              <a runat="server" href="~/ProductImages/8.jpg">
              <img alt="villas" width="200" height="120" runat="server" src="~/ProductImages/8.jpg" />
              </a>
              <h5>Garden Villas</h5>
            </div>
            <div class="book_available">
              <a runat="server" href="~/Image/_MG_0975.jpg">
              <img alt="accommodation_ambassador" width="200" height="120" runat="server" src="~/Image/_MG_0975.jpg" />
              </a>
              <h5>Ambassador &amp; Embassy</h5>
            </div>                
    </div>

</asp:Content>
