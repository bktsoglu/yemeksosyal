<%@ Control Language="C#" AutoEventWireup="true" CodeFile="kullanicilar.ascx.cs" Inherits="kullanicilar" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
</style>
<style>
        .butonlarimgenel {
	font-size:12px;
	font-family:Arial;
	font-weight:normal;
	-moz-border-radius:17px;
	-webkit-border-radius:17px;
	border-radius:17px;
	border:1px solid #d83526;
	padding:9px 40px;
	text-decoration:none;
	background:-moz-linear-gradient( center top, #fe1a00 43%, #ce0100 62% );
	background:-ms-linear-gradient( top, #fe1a00 43%, #ce0100 62% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#fe1a00', endColorstr='#ce0100');
	background:-webkit-gradient( linear, left top, left bottom, color-stop(43%, #fe1a00), color-stop(62%, #ce0100) );
	background-color:#fe1a00;
	color:#ffffff;
	display:inline-block;
	text-shadow:1px 1px 0px #b23e35;
 	-webkit-box-shadow:inset 1px 1px 0px 0px #f29c93;
 	-moz-box-shadow:inset 1px 1px 0px 0px #f29c93;
 	box-shadow:inset 1px 1px 0px 0px #f29c93;
}.butonlarimgenel:hover {
	background:-moz-linear-gradient( center top, #ce0100 43%, #fe1a00 62% );
	background:-ms-linear-gradient( top, #ce0100 43%, #fe1a00 62% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ce0100', endColorstr='#fe1a00');
	background:-webkit-gradient( linear, left top, left bottom, color-stop(43%, #ce0100), color-stop(62%, #fe1a00) );
	background-color:#ce0100;
}.butonlarimgenel:active {
	position:relative;
	top:1px;
}
    </style>
<asp:MultiView ID="MultiView1" runat="server">
    <asp:View ID="View1" runat="server">
        
        <table class="container-fluid">
            <tr>
                <td>Kullanıcı Adı:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Şifre</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Giriş" CssClass="butonlarimgenel" />
                </td>
            </tr>
            
        </table>
         <table class="auto-style1">
             <tr>
                <td>
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
                
            </tr>
             </table>
    </asp:View>

    <asp:View ID="View2" runat="server">
        <br />
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/guncelle.aspx">Bilgilerimi Güncelle</asp:LinkButton>

        </asp:View>
</asp:MultiView>

