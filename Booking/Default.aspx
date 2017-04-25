<%@ Page Title="Booking &amp; Travel" Language="C#" MasterPageFile="~/Booking.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Booking.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="content">
  		  <img class="mySlides" alt="empire_view" width="900" height="459" runat="server" src="~/Image/EMPIRE_001_DK_690x459.jpg" />        
          <img class="mySlides" alt="empire_sideview" width="900" height="459" runat="server" src="~/Image/images.jpg" />
          <img class="mySlides" alt="empire_poolview" width="900" height="459" runat="server" src="~/Image/_MG_9790.jpg" />
          <img class="mySlides" alt="empire_exteriorview" width="900" height="459" runat="server" src="~/Image/004531-15-exterior.jpg" />
	</div>

    <script type="text/javascript" src="JS/slideshow.js"></script>
    		
	<div id="second_content">  
  		<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  		<script type="text/javascript" src="JS/datepicker.js"></script>  
          <div class="book_content">
          <div><label>Check In:</label>
          <br/>
          <input id="datepicker" name="check_in" type="text"/></div>
          </div>
          <div class="book_content">
          <div><label>Check Out:</label>
          <br/>
          <input id="datepicker2" name="check_out" type="text" /> </div>
          </div>
          <div class="book_content">
          <div><label>Adult:</label>
          <br/>
          <input type="number"/></div>
          </div>
          <div class="book_content">
          <div><label>Kids:</label>
          <br/>
          <input type="number"/></div>
          </div>
          <div class="book_content">
          <br/>
          <div><input type="submit" value="Submit"/></div>
          </div>        
	</div>        
    <div id="third_content">
        <h3>Available rooms left:</h3>
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
              <a runat="server" href="~/Image/deluxe_room.jpg">
              <img alt="accommodation_deluxe" width="200" height="120" runat="server" src="~/Image/deluxe_room.jpg" />
              </a>
              <h5>Deluxe Rooms</h5>
            </div>
            <div class="book_available">
              <a runat="server" href="~/Image/_MG_0975.jpg">
              <img alt="accommodation_ambassador" width="200" height="120" runat="server" src="~/Image/_MG_0975.jpg" />
              </a>
              <h5>Ambassador &amp; Embassy</h5>
            </div>                
    </div>
</asp:Content>
