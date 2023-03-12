<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="adminkullanicilar.aspx.cs" Inherits="adminkullanicilar" %>

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
                /<asp:HyperLink ID="HyperLink1" runat="server" ForeColor="White" NavigateUrl="~/adminkullanicilar.aspx">Kullanıcılar</asp:HyperLink></td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <asp:Repeater ID="Repeater1" runat="server" 
        onitemcommand="Repeater1_ItemCommand">

    <HeaderTemplate> <table>
    <tr><td >id</td>
        <td >Kullanıcı Adı</td>
          <td >Sifre</td>
        <td >Adı</td>
        <td >Soyadı</td>
        <td >Mail</td>
          <td >Telefon</td>
        
    </tr>
    </HeaderTemplate>
    <ItemTemplate>
     <tr>
    
         <td> <%#Eval("id") %> </td>
    <td> <asp:Label ID="Label7" runat="server" Text=<%#Eval("kadi") %>></asp:Label>
         <asp:TextBox ID="TextBox7"  Text=<%#Eval("kadi") %> runat="server" Width="70px" Visible="false"></asp:TextBox>
     </td>
         <td> <asp:Label ID="Label6" runat="server" Text=<%#Eval("sifre") %>></asp:Label>
         <asp:TextBox ID="TextBox6"  Text=<%#Eval("sifre") %> runat="server" Width="70px" Visible="false"></asp:TextBox>
      </td>
    <td> <asp:Label ID="Label5" runat="server" Text=<%#Eval("adi") %>></asp:Label>
         <asp:TextBox ID="TextBox5"  Text=<%#Eval("adi") %> runat="server" Width="70px" Visible="false"></asp:TextBox>
     </td>
         <td> <asp:Label ID="Label4" runat="server" Text=<%#Eval("soyadi") %>></asp:Label>
         <asp:TextBox ID="TextBox4"  Text=<%#Eval("soyadi") %> runat="server" Width="70px" Visible="false"></asp:TextBox>
     </td>
    <td> <asp:Label ID="Label3" runat="server" Text=<%#Eval("mail") %>></asp:Label>
         <asp:TextBox ID="TextBox3"  Text=<%#Eval("mail") %> runat="server" Width="150px" Visible="false"></asp:TextBox>
     </td>
         
     <td> 
         <asp:Label ID="Label1" runat="server" Text=<%#Eval("telefon") %>></asp:Label>
         <asp:TextBox ID="TextBox1"  Text=<%#Eval("telefon") %> runat="server" Width="85px" Visible="false"></asp:TextBox>
     
    </td>
         
     <td> 
       <asp:LinkButton ID="lnkEdit" runat="server" CommandName="edit" CommandArgument='<%# Eval("id") %>'> Düzenle</asp:LinkButton>
        <asp:LinkButton Visible="false" ID="lnkUpdate" runat="server" CommandName="update" CommandArgument='<%# Eval("id") %>'>
           GÜNCELLE</asp:LinkButton>
           <asp:LinkButton Visible="false" ID="lnkCancel" runat="server" CommandName="cancel" CommandArgument='<%# Eval("id") %>'>
           İPTAL</asp:LinkButton>
           <asp:LinkButton ID="lnkDelete" runat="server" CommandName="delete" OnClientClick='javascript:return confirm("SİLMEK İSTEDİĞİNİZDEN EMİNMİSİNİZ?")'
                CommandArgument='<%# Eval("id") %>'>SİL</asp:LinkButton>
         
         
         </td>
    </tr>
    
    </ItemTemplate>
    
    <FooterTemplate>
    </table>
    </FooterTemplate>
    </asp:Repeater>
</asp:Content>

