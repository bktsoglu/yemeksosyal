<%@ Page Title="" Language="C#" MasterPageFile="~/ben.master" AutoEventWireup="true" CodeFile="uyegiris.aspx.cs" Inherits="uyegiris" %>

<%@ Register Src="~/kullanicilar.ascx" TagPrefix="uc1" TagName="kullanicilar" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"><br />
    <uc1:kullanicilar runat="server" ID="kullanicilar" />
</asp:Content>

