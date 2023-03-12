<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="adminpanelsifre.aspx.cs" Inherits="adminpanelsifre" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        table.ayri {
            border-collapse:separate;border-spacing:3px 5px;
        }
        td {
            border:1px solid black;padding:3px;
        }
        .auto-style2 {
            width: 261px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <br /><table id="usttablo">
        <tr>
            <td>Admin Paneli 
                <asp:HyperLink ID="HyperLink7" runat="server" ForeColor="White" NavigateUrl="~/admin.aspx">Anasayfa</asp:HyperLink>
                /<asp:HyperLink ID="HyperLink1" runat="server" ForeColor="White" NavigateUrl="~/adminpanelsifre.aspx">Panel Şifre</asp:HyperLink></td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table border="0">
        <tr>
            <td class="auto-style2">Mevcut Şifre:</td>
            <td><asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:Label ID="Label2" runat="server"></asp:Label>
&nbsp; </td>
        </tr>
        <tr>
            <td class="auto-style2">Yeni Şifre:</td>
            <td><asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td class="auto-style2">Yeni Şifre Tekrar:</td>
            <td><asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator><asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="Şifre uyuşmuyor"></asp:CompareValidator></td>
        </tr>
        <tr>
            <td class="auto-style2">
    <asp:Button ID="Button1" runat="server" Text="Değiştir" OnClick="Button1_Click" />
            </td>
            <td>
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

