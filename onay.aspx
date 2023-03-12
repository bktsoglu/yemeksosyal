<%@ Page Title="" Language="C#" MasterPageFile="~/ben.master" AutoEventWireup="true" CodeFile="onay.aspx.cs" Inherits="onay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br /><table>
        <tr>
            <td>
                
                Kullanıcı Adı:
            </td>
            <td>
                
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
     <tr>
            <td>
                
                Onay Kodu: 
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                
            </td>
        </tr>
    <tr>
            <td>
                
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" CssClass="butonlarimgenel" Text="Üyeliği Onayla" OnClick="Button1_Click" />
                
            </td>
        </tr>
    
    </table>
</asp:Content>

