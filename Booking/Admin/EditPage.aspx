<%@ Page Title="Edit Product" Language="C#" MasterPageFile="~/Booking.Master" AutoEventWireup="true" CodeBehind="EditPage.aspx.cs" Inherits="Booking.Admin.EditPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="sign_content">
        <asp:Label ID="lblAdd" runat="server" Text="Add products here:" />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin/AddPage.aspx">Add Product</asp:HyperLink>
        <h3>You can edit or delete products here</h3>
        <div class="log_box">
        <asp:FormView ID="fv" runat="server" DataKeyNames="Id" DataSourceID="EditPageDataSource" DefaultMode="Edit" OnItemUpdated="fv_ItemUpdated" AllowPaging="True">
            <EditItemTemplate>
                <div class="log_box">
                Id:
                <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                </div>
                <div class="log_box">
                Product Name:
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                </div>
                <div class="log_box">
                Room Rates:
                <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                </div>
                <div class="log_box">
                Room Amenities:
                <asp:TextBox ID="AmenitiesTextBox" runat="server" Text='<%# Bind("Amenities") %>' />
                </div>
                <div class="log_box">
                Room Description:
                <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                </div>
                <div class="log_box">
                <asp:Button ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                <asp:Button ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </div>
            </EditItemTemplate>
            <InsertItemTemplate>
                Name:
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                Price:
                <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                Amenities:
                <asp:TextBox ID="AmenitiesTextBox" runat="server" Text='<%# Bind("Amenities") %>' />
                Description:
                <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                Id:
                <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                Name:
                <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
                Price:
                <asp:Label ID="PriceLabel" runat="server" Text='<%# Bind("Price") %>' />
                Amenities:
                <asp:Label ID="AmenitiesLabel" runat="server" Text='<%# Bind("Amenities") %>' />
                Description:
                <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Bind("Description") %>' />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                <asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        </div>
        <asp:SqlDataSource ID="EditPageDataSource" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:db_1525606_bookingConnectionString %>" DeleteCommand="DELETE FROM [tblRoom] WHERE [Id] = @original_Id AND [Name] = @original_Name AND [Price] = @original_Price AND [Amenities] = @original_Amenities AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL))" InsertCommand="INSERT INTO [tblRoom] ([Name], [Price], [Amenities], [Description]) VALUES (@Name, @Price, @Amenities, @Description)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Id], [Name], [Price], [Amenities], [Description] FROM [tblRoom]" UpdateCommand="UPDATE [tblRoom] SET [Name] = @Name, [Price] = @Price, [Amenities] = @Amenities, [Description] = @Description WHERE [Id] = @original_Id AND [Name] = @original_Name AND [Price] = @original_Price AND [Amenities] = @original_Amenities AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_Price" Type="Double" />
                <asp:Parameter Name="original_Amenities" Type="String" />
                <asp:Parameter Name="original_Description" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Price" Type="Double" />
                <asp:Parameter Name="Amenities" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Price" Type="Double" />
                <asp:Parameter Name="Amenities" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_Price" Type="Double" />
                <asp:Parameter Name="original_Amenities" Type="String" />
                <asp:Parameter Name="original_Description" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <div class="log_box">
        <asp:GridView ID="gvEdit" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="RoomDataSource" GridLines="None" CssClass="dDesc">
            <Columns>
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Name" HeaderText="Product Name" SortExpression="Name" />
                <asp:BoundField DataField="Price" HeaderText="Room Rates" SortExpression="Price" />
                <asp:BoundField DataField="Amenities" HeaderText="Room Amenities" SortExpression="Amenities" Visible="False" />
                <asp:BoundField DataField="Description" HeaderText="Room Description" SortExpression="Description" Visible="False" />
            </Columns>
        </asp:GridView>
        </div>
        <div class="log_box">
        <asp:GridView ID="gvRoomEdit" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="RoomDataGrid" GridLines="None" CssClass="dDesc">
            <Columns>
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Amenities" HeaderText="Room Amenities" SortExpression="Amenities"/>
                <asp:BoundField DataField="Description" HeaderText="Room Description" SortExpression="Description" />
            </Columns>
        </asp:GridView>
        </div>
        <asp:SqlDataSource ID="RoomDataGrid" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:db_1525606_bookingConnectionString %>" DeleteCommand="DELETE FROM [tblRoom] WHERE [Id] = @original_Id AND [Amenities] = @original_Amenities AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL))" InsertCommand="INSERT INTO [tblRoom] ([Amenities], [Description]) VALUES (@Amenities, @Description)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Id], [Amenities], [Description] FROM [tblRoom] ORDER BY [Id]" UpdateCommand="UPDATE [tblRoom] SET [Amenities] = @Amenities, [Description] = @Description WHERE [Id] = @original_Id AND [Amenities] = @original_Amenities AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_Amenities" Type="String" />
                <asp:Parameter Name="original_Description" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Amenities" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Amenities" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_Amenities" Type="String" />
                <asp:Parameter Name="original_Description" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="RoomDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:db_1525606_bookingConnectionString %>" SelectCommand="SELECT [Id], [Name], [Price], [Amenities], [Description] FROM [tblRoom] ORDER BY [Id]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [tblRoom] WHERE [Id] = @original_Id AND [Name] = @original_Name AND [Price] = @original_Price AND [Amenities] = @original_Amenities AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL))" InsertCommand="INSERT INTO [tblRoom] ([Name], [Price], [Amenities], [Description]) VALUES (@Name, @Price, @Amenities, @Description)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [tblRoom] SET [Name] = @Name, [Price] = @Price, [Amenities] = @Amenities, [Description] = @Description WHERE [Id] = @original_Id AND [Name] = @original_Name AND [Price] = @original_Price AND [Amenities] = @original_Amenities AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_Price" Type="Double" />
                <asp:Parameter Name="original_Amenities" Type="String" />
                <asp:Parameter Name="original_Description" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Price" Type="Double" />
                <asp:Parameter Name="Amenities" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Price" Type="Double" />
                <asp:Parameter Name="Amenities" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_Price" Type="Double" />
                <asp:Parameter Name="original_Amenities" Type="String" />
                <asp:Parameter Name="original_Description" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    
</asp:Content>
