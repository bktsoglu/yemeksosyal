<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="adminonerilenler.aspx.cs" Inherits="adminonerilenler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <br /><table id="usttablo">
        <tr>
            <td>Admin Paneli 
                <asp:HyperLink ID="HyperLink7" runat="server" ForeColor="White" NavigateUrl="~/admin.aspx">Anasayfa</asp:HyperLink>
                /<asp:HyperLink ID="HyperLink1" runat="server" ForeColor="White" NavigateUrl="~/adminonerilenler.aspx">Önerilenleri Düzenle</asp:HyperLink></td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Kimlik" DataSourceID="AccessDataSource1" ForeColor="Black" GridLines="Horizontal">
        <Columns>
            <asp:BoundField DataField="Kimlik" HeaderText="Kimlik" InsertVisible="False" ReadOnly="True" SortExpression="Kimlik" />
            <asp:BoundField DataField="kullanici" HeaderText="kullanici" SortExpression="kullanici" />
            <asp:BoundField DataField="restaurant" HeaderText="restaurant" SortExpression="restaurant" />
            <asp:BoundField DataField="cinsi" HeaderText="cinsi" SortExpression="cinsi" />
            <asp:BoundField DataField="sehir" HeaderText="sehir" SortExpression="sehir" />
            <asp:BoundField DataField="yorum" HeaderText="yorum" SortExpression="yorum" />
            <asp:BoundField DataField="yemek" HeaderText="yemek" SortExpression="yemek" />
            <asp:BoundField DataField="adres" HeaderText="adres" SortExpression="adres" />
            <asp:BoundField DataField="resimyol" HeaderText="resimyol" SortExpression="resimyol" />
            <asp:BoundField DataField="puan" HeaderText="puan" SortExpression="puan" />
            <asp:BoundField DataField="ip" HeaderText="ip" SortExpression="ip" />
            <asp:BoundField DataField="onay" HeaderText="onay" SortExpression="onay" />
            <asp:BoundField DataField="oneri" HeaderText="oneri" SortExpression="oneri" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
    </asp:GridView>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/veritabanim.mdb" SelectCommand="SELECT * FROM [restaurantlar]"></asp:AccessDataSource>
    <br />Kimlik gir:&nbsp; <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp; Önerilenlere
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>Ekle</asp:ListItem>
            <asp:ListItem>Çıkar</asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Sonuçlandır" />
&nbsp;<asp:Label ID="Label2" runat="server"></asp:Label>
</asp:Content>

