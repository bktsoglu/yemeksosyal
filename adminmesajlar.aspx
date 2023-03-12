<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="adminmesajlar.aspx.cs" Inherits="adminmesajlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        table.ayri {
            border-collapse:separate;border-spacing:3px 5px;
        }
        td {
            border:1px solid black;padding:3px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <br /><table id="usttablo">
        <tr>
            <td>Admin Paneli 
                <asp:HyperLink ID="HyperLink7" runat="server" ForeColor="White" NavigateUrl="~/admin.aspx">Anasayfa</asp:HyperLink>
                /<asp:HyperLink ID="HyperLink1" runat="server" ForeColor="White" NavigateUrl="~/adminpaylasim.aspx">Mesajlar</asp:HyperLink></td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Kimlik" DataSourceID="AccessDataSource1" ForeColor="Black" GridLines="Horizontal">
        <Columns>
            <asp:BoundField DataField="Kimlik" HeaderText="Kimlik" InsertVisible="False" ReadOnly="True" SortExpression="Kimlik" />
            <asp:BoundField DataField="adsoyad" HeaderText="adsoyad" SortExpression="adsoyad" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="mesaj" HeaderText="mesaj" SortExpression="mesaj" />
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
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/veritabanim.mdb" SelectCommand="SELECT * FROM [iletisim]"></asp:AccessDataSource>
    <br /><asp:Label ID="Label2" runat="server" Text="Kimlik Gir: "></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Mesajı Sil" />
&nbsp;<asp:Label ID="Label3" runat="server"></asp:Label>
    <br />
    <br />
    <br />
</asp:Content>

