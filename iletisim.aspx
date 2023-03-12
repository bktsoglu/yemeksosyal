<%@ Page Title="" Language="C#" MasterPageFile="~/ben.master" AutoEventWireup="true" CodeFile="iletisim.aspx.cs" Inherits="iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
        width: 105px;
    }
    .auto-style4 {
        width: 165px;
    }
    .auto-style5 {
        width: 200px;
    }
    .auto-style7 {
        width: 25px;
        height: 25px;
        border-width: 0px;
    }
    .auto-style8 {
        width: 25px;
        height: 25px;
        border-width: 0px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br /><u>İletişim Adresi</u> : 
    <br />
    İstiklal Mah. Vatan cad. Bolu sk. No:32
    <br />
    Beşiktaş / İstanbul
    <br /><br />
    &nbsp;
    <a href="http://facebook.com">
<img alt="" class="auto-style8" src="resimlerim/facebook-logo.png" /></a>&nbsp;&nbsp; <a href="http://twitter.com"><img alt="" class="auto-style7" src="resimlerim/twitter.png" /></a><br />
    <br />
    Bize aşağıdaki iletişim formundan ulaşın;<br />
    <br />
    <table class="container-fluid">
        <tr>
            <td class="auto-style3">Ad Soyad:</td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            <td class="auto-style5">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Email:</td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            <td class="auto-style5">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Mesaj:</td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox3" runat="server" Height="109px" TextMode="MultiLine"></asp:TextBox>
                </td>
            <td class="auto-style5">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Gönder" CssClass="butonlarimgenel" />
            </td>
            <td class="auto-style4">
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    <br />
</asp:Content>

