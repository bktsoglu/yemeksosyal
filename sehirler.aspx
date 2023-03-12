﻿<%@ Page Title="" Language="C#" MasterPageFile="~/ben.master" AutoEventWireup="true" CodeFile="sehirler.aspx.cs" Inherits="sehirler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    

        
            <br />
            <b><asp:Label ID="Label2" runat="server" Text=" Listeden Bulunduğunuz İli Seçiniz."></asp:Label></b><br />
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem>istanbul</asp:ListItem>
                <asp:ListItem>ankara</asp:ListItem>
                <asp:ListItem>izmir</asp:ListItem>
                <asp:ListItem>bursa</asp:ListItem>
            </asp:DropDownList><br />
       
            <br />
    <b><asp:Label ID="Label3" runat="server" Text="Şehrinizde Bulduğumuz Restaurantlar" Visible="False"></asp:Label></b><br /> <br /> 
    <asp:Repeater ID="Rpt1" runat="server" Visible="False" OnItemCommand="Rpt1_ItemCommand" OnItemDataBound="Rpt1_ItemDataBound">
        <HeaderTemplate>
            <div class="container-fluid">
        </HeaderTemplate>
        <ItemTemplate>
            <div id="icerigim" class="container-fluid">
                    Restaurant Adı: <%# Eval("restaurant") %><br /><br /> 
                    <img width="500" height="500" class="img-thumbnail" src="kullaniciresim/<%# Eval("resimyol") %>"  /><br />
                    Paylaşım Yapan Üye:<%# Eval("kullanici") %><br />Restaurantın Cinsi: <%# Eval("cinsi") %><br />
                    Restaurantın Bulunduğu Şehir: <%# Eval("sehir") %><br />
                    Paylaşım Sahibinin Yorumu: <%# Eval("yorum") %><br />
                    Paylaşım Sahibinin Denediği Ürün: <%# Eval("yemek") %><br />
                    Restaurant Adresi:<%# Eval("adres") %><br />Paylaşım Sahibinin Puanı:<%# Eval("puan") %><br /><br />Yorumlar;
                    <asp:Repeater ID="altrepeater" runat="server">
                    <ItemTemplate>
                       <br /> <u><%# Eval("kullanici") %></u>...:<%# Eval("yorum") %><br />
                    </ItemTemplate>
                    </asp:Repeater>
                    <asp:LinkButton ID="lnkEdit" runat="server" CommandName="edit" CommandArgument='<%# Eval("kimlik") %>'> Yorumları Göster</asp:LinkButton><br />
                    <asp:LinkButton Visible="false" ID="lnkUpdate" runat="server" CommandName="update" CommandArgument='<%# Eval("kimlik") %>'>
                    Yorumu Paylaş</asp:LinkButton><br />
                     <asp:TextBox ID="TextBox1"  runat="server" Visible="false" Width="400px" Height="80px" TextMode="MultiLine"></asp:TextBox><br />
                    <asp:Label ID="Label1" runat="server" ></asp:Label>
                    
                    
                </div>
        </ItemTemplate>
        <FooterTemplate>
            </div>
        </FooterTemplate>
        </asp:Repeater>

        
</asp:Content>

