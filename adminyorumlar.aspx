<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="adminyorumlar.aspx.cs" Inherits="adminyorumlar" %>

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
                /<asp:HyperLink ID="HyperLink1" runat="server" ForeColor="White" NavigateUrl="~/adminyorumlar.aspx">Yorumlar</asp:HyperLink></td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Repeater ID="Repeater1" runat="server" 
        onitemcommand="Repeater1_ItemCommand">

    <HeaderTemplate> <table>
    <tr>
        <td >Kimlik</td>
          <td >restaurantid</td>
        <td >kullanici</td>
        <td >yorum</td>
        <td >onay</td>
          
    </tr>
    </HeaderTemplate>
    <ItemTemplate>
     <tr>
    <td> <%#Eval("Kimlik") %> </td>
    <td> <%#Eval("restaurantid") %></td>
         <td> <%#Eval("kullanici") %> </td>
    <td> <%#Eval("yorum") %></td>
    <td> 
         <asp:Label ID="Label2" runat="server" Text=<%#Eval("onay") %>></asp:Label>
         <asp:TextBox ID="TextBox1"  Text=<%#Eval("onay") %> runat="server" Width="10px" Visible="false"></asp:TextBox>
     
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

