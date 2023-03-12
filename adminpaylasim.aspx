<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="adminpaylasim.aspx.cs" Inherits="adminpaylasim" %>

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
                /<asp:HyperLink ID="HyperLink1" runat="server" ForeColor="White" NavigateUrl="~/adminpaylasim.aspx">Paylaşımlar</asp:HyperLink></td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
        
        
        <asp:Repeater ID="Repeater1" runat="server" 
        onitemcommand="Repeater1_ItemCommand">

    <HeaderTemplate> <table>
    <tr>
        <td >Kullanıcı</td>
          <td >Restaurant</td>
        <td >Cinsi</td>
        <td >Sehir</td>
        <td >Yorum</td>
          <td >Yemek</td>
        <td >Adres</td>
        <td >Resimyol</td> 
       <td >Puan</td>
          <td >ip</td>
        <td >Öneri</td>
        <td >Onay</td> 
    </tr>
    </HeaderTemplate>
    <ItemTemplate>
     <tr>
    <td> <%#Eval("kullanici") %> </td>
    <td> <%#Eval("restaurant") %></td>
         <td> <%#Eval("cinsi") %> </td>
    <td> <%#Eval("sehir") %></td>
         <td> <%#Eval("yorum") %> </td>
    <td> <%#Eval("yemek") %></td>
         <td> <%#Eval("adres") %> </td>
    <td> <%#Eval("resimyol") %></td>
         <td> <%#Eval("puan") %> </td>
    <td> <%#Eval("ip") %></td>
         
     <td> 
         <asp:Label ID="Label1" runat="server" Text=<%#Eval("oneri") %>></asp:Label>
         <asp:TextBox ID="TextBox1"  Text=<%#Eval("oneri") %> runat="server" Width="7px" Visible="false"></asp:TextBox>
     
    </td>
         <td> 
         <asp:Label ID="Label2" runat="server" Text=<%#Eval("onay") %>></asp:Label>
         <asp:TextBox ID="TextBox2"  Text=<%#Eval("onay") %> runat="server" Width="7px" Visible="false"></asp:TextBox>
     
    </td>
     <td> 
       <asp:LinkButton ID="lnkEdit" runat="server" CommandName="edit" CommandArgument='<%# Eval("Kimlik") %>'> Düzenle</asp:LinkButton>
        <asp:LinkButton Visible="false" ID="lnkUpdate" runat="server" CommandName="update" CommandArgument='<%# Eval("Kimlik") %>'>
           GÜNCELLE</asp:LinkButton>
           <asp:LinkButton Visible="false" ID="lnkCancel" runat="server" CommandName="cancel" CommandArgument='<%# Eval("Kimlik") %>'>
           İPTAL</asp:LinkButton>
           <asp:LinkButton ID="lnkDelete" runat="server" CommandName="delete" OnClientClick='javascript:return confirm("SİLMEK İSTEDİĞİNİZDEN EMİNMİSİNİZ?")'
                CommandArgument='<%# Eval("Kimlik") %>'>SİL</asp:LinkButton>
         
         
         </td>
    </tr>
    
    </ItemTemplate>
    
    <FooterTemplate>
    </table>
    </FooterTemplate>
    </asp:Repeater>
  
    
</asp:Content>

