<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

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
                /</td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <table cellspacing="0" class="ayri">
        
            <tr>
                <td>
                    <asp:HyperLink ID="HyperLink2" runat="server" CssClass="adminpaylasim" Height="158px" Width="300px" NavigateUrl="~/adminpaylasim.aspx"></asp:HyperLink>
                </td>
                <td><asp:HyperLink ID="HyperLink1" runat="server" CssClass="adminkullanicilar" Height="158px" Width="300px" NavigateUrl="~/adminkullanicilar.aspx"></asp:HyperLink></td>
                <td><asp:HyperLink ID="HyperLink3" runat="server" CssClass="adminmesajlar" Height="158px" Width="300px" NavigateUrl="~/adminmesajlar.aspx"></asp:HyperLink></td>
            </tr>
            <tr>
                <td><asp:HyperLink ID="HyperLink4" runat="server" CssClass="adminonerilen" Height="158px" Width="300px" NavigateUrl="~/adminyorumlar.aspx"></asp:HyperLink></td>
                <td><asp:HyperLink ID="HyperLink5" runat="server" CssClass="adminziyaret" Height="158px" Width="300px" NavigateUrl="~/adminziyaretciler.aspx"></asp:HyperLink></td>
                <td><asp:HyperLink ID="HyperLink6" runat="server" CssClass="adminsifre" Height="158px" Width="300px" NavigateUrl="~/adminpanelsifre.aspx"></asp:HyperLink></td>
            </tr>
        
    </table></center><br />
</asp:Content>

