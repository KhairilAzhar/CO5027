<%@ Page Title="Add Product" Language="C#" MasterPageFile="~/Booking.Master" AutoEventWireup="true" CodeBehind="AddPage.aspx.cs" Inherits="Booking.Admin.AddPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="sign_content">
        <asp:Label ID="lblEdit" runat="server" Text="Edit products here:" />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin/EditPage.aspx">Edit Product</asp:HyperLink>
        <h3>You can add new products here</h3>
        <asp:FormView ID="fvAdd" runat="server" DataKeyNames="Id" DataSourceID="AddPageDataSource" DefaultMode="Insert">
            <EditItemTemplate>
                Id:
                <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                <div class="log_box">
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
                <div class="log_box">
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </div>
            </EditItemTemplate>
            <InsertItemTemplate>
                <div class="log_box">
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
                <div class="log_box">
                <asp:Button ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:Button ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </div>
            </InsertItemTemplate>
            <ItemTemplate>
                Id:
                <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                <div class="log_box">
                Name:
                <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
                </div>
                <div class="log_box">
                Price:
                <asp:Label ID="PriceLabel" runat="server" Text='<%# Bind("Price") %>' />
                </div>
                <div class="log_box">
                Amenities:
                <asp:Label ID="AmenitiesLabel" runat="server" Text='<%# Bind("Amenities") %>' />
                </div>
                <div class="log_box">
                Description:
                <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Bind("Description") %>' />
                </div>
                <div class="log_box">
                <asp:Button ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                <asp:Button ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                <asp:Button ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </div>
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="AddPageDataSource" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:db_1525606_bookingConnectionString %>" DeleteCommand="DELETE FROM [tblRoom] WHERE [Id] = @original_Id AND [Name] = @original_Name AND [Price] = @original_Price AND [Amenities] = @original_Amenities AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL))" InsertCommand="INSERT INTO [tblRoom] ([Name], [Price], [Amenities], [Description]) VALUES (@Name, @Price, @Amenities, @Description)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Id], [Name], [Price], [Amenities], [Description] FROM [tblRoom]" UpdateCommand="UPDATE [tblRoom] SET [Name] = @Name, [Price] = @Price, [Amenities] = @Amenities, [Description] = @Description WHERE [Id] = @original_Id AND [Name] = @original_Name AND [Price] = @original_Price AND [Amenities] = @original_Amenities AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL))">
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
