<%@ Page Title="Product Details" Language="C#" MasterPageFile="~/Booking.Master" AutoEventWireup="true" CodeBehind="ViewProduct.aspx.cs" Inherits="Booking.ViewProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="third_content">
                
        <asp:FormView ID="fvDetails" runat="server" DataSourceID="RoomDataSource" DataKeyNames="Id">
            <EditItemTemplate>
                <div>
                Id:
                <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />                
                </div>
                <div>
                 Name:
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                </div>
                <div>
                Price:
                <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                </div>
                <div class="log_box">
                Amenities:
                <asp:TextBox ID="AmenitiesTextBox" runat="server" Text='<%# Bind("Amenities") %>' />
                </div>
                <div class="log_box">
                Description:
                <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                </div>
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                <div>
                Name:
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                </div>
                <div class="log_box">
                Price:
                <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                </div>
                <div class="log_box">
                Amenities:
                <asp:TextBox ID="AmenitiesTextBox" runat="server" Text='<%# Bind("Amenities") %>' />
                </div>
                <div class="log_box">
                Description:
                <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                </div>
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                <img src="~/ProductImages/1.jpg" width="120" height="100" runat="server"/>
                <div>
                Id:
                <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />                
                </div>
                <div>
                Product Name:
                <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
                </div>
                <div class="log_box">
                Room Rates (BND$):
                <asp:Label ID="PriceLabel" runat="server" Text='<%# Bind("Price") %>' />
                </div>
                <div class="log_box">
                Room Amenities:
                <asp:Label ID="AmenitiesLabel" runat="server" Text='<%# Bind("Amenities") %>' />
                </div>
                <div class="log_box">
                Description:
                <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Bind("Description") %>' />
                </div>
            </ItemTemplate>
        </asp:FormView>
           <!--<input type="submit" name="ctl00$pagecontent$fvDetails$addtocartBtn" value="Add to cart" id="pagecontent_fvDetails_addtocartBtn" />-->        <div class="log_box">
        <asp:Label ID="lblQuantity" runat="server" Text="Total Cost according to no. of nights:" AssociatedControlID="ddlRoomRate"></asp:Label>
        
        <asp:DropDownList ID="ddlRoomRate" runat="server">
        <asp:ListItem>1</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>
        <asp:ListItem>3</asp:ListItem>
        <asp:ListItem>4</asp:ListItem>
        <asp:ListItem>5</asp:ListItem>
        </asp:DropDownList>        </div>        <div>        <asp:Button ID="btnAddCart" runat="server" Text="Add to Cart" OnClick="btnAddCart_Click" />        </div>
        <asp:SqlDataSource ID="RoomDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:db_1525606_bookingConnectionString %>" SelectCommand="SELECT [Description], [Amenities], [Price], [Name], [Id] FROM [tblRoom] WHERE ([Id] = @Id)">
            <SelectParameters>
                <asp:QueryStringParameter Name="Id" QueryStringField="Id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
           
    </div>
</asp:Content>
