<%@ Page Title="" Language="C#" MasterPageFile="~/Master/MasterPage.Master" AutoEventWireup="true" CodeBehind="Tacgia.aspx.cs" Inherits="test.Pages.Tacgia" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="TGIA_ID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
    <AlternatingRowStyle BackColor="PaleGoldenrod" />
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
        <asp:BoundField DataField="TGIA_ID" HeaderText="TGIA_ID" ReadOnly="True" SortExpression="TGIA_ID" />
        <asp:BoundField DataField="TENTG" HeaderText="TENTG" SortExpression="TENTG" />
        <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
    </Columns>
    <FooterStyle BackColor="Tan" />
    <HeaderStyle BackColor="Tan" Font-Bold="True" />
    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
    <SortedAscendingCellStyle BackColor="#FAFAE7" />
    <SortedAscendingHeaderStyle BackColor="#DAC09E" />
    <SortedDescendingCellStyle BackColor="#E1DB9C" />
    <SortedDescendingHeaderStyle BackColor="#C2A47B" />
</asp:GridView>
<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="TGIA_ID" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="125px" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
    <AlternatingRowStyle BackColor="PaleGoldenrod" />
    <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
    <Fields>
        <asp:BoundField DataField="TGIA_ID" HeaderText="TGIA_ID" ReadOnly="True" SortExpression="TGIA_ID" />
        <asp:BoundField DataField="TENTG" HeaderText="TENTG" SortExpression="TENTG" />
        <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
        <asp:CommandField ShowInsertButton="True" />
    </Fields>
    <FooterStyle BackColor="Tan" />
    <HeaderStyle BackColor="Tan" Font-Bold="True" />
    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
</asp:DetailsView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WEBTINTUCConnectionString1 %>" DeleteCommand="DELETE FROM [TACGIA] WHERE [TGIA_ID] = @TGIA_ID" InsertCommand="INSERT INTO [TACGIA] ([TGIA_ID], [TENTG], [EMAIL]) VALUES (@TGIA_ID, @TENTG, @EMAIL)" ProviderName="<%$ ConnectionStrings:WEBTINTUCConnectionString1.ProviderName %>" SelectCommand="SELECT [TGIA_ID], [TENTG], [EMAIL] FROM [TACGIA]" UpdateCommand="UPDATE [TACGIA] SET [TENTG] = @TENTG, [EMAIL] = @EMAIL WHERE [TGIA_ID] = @TGIA_ID">
    <DeleteParameters>
        <asp:Parameter Name="TGIA_ID" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="TGIA_ID" Type="String" />
        <asp:Parameter Name="TENTG" Type="String" />
        <asp:Parameter Name="EMAIL" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="TENTG" Type="String" />
        <asp:Parameter Name="EMAIL" Type="String" />
        <asp:Parameter Name="TGIA_ID" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
