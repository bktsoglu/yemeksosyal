<%@ Page Title="" Language="C#" MasterPageFile="~/ben.master" AutoEventWireup="true" CodeFile="kontrol.aspx.cs" Inherits="kontrol" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
    <br />
    Sistemden <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/cikis.aspx">Çıkış</asp:LinkButton> yaparak Yeni Üyelik kaydı gerçekleştirebilirsiniz.
</asp:Content>

