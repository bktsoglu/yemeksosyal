<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="adminziyaretciler.aspx.cs" Inherits="adminziyaretciler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        table.ayri {
            border-collapse:separate;border-spacing:3px 5px;
        }
        td {
            border:1px solid black;padding:3px;
        }
        #sayfa{width:300px;margin:auto;}
        .baslik{float:left;width:300px;height:18px;padding:6px 0;text-align:center;font:11pt verdana;color:#800;background:url('baslik.png') no-repeat;}
        .bilgiler{float:left;width:288px;padding:5px;font:10pt verdana;background:#eee;border:solid 1px #000;border-top:none;}
        .sol{float:left;width:120px;text-align:right;color:#333;}
        .sag{float:left;width:158px;padding:0 5px;color:#147;}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <br /><table id="usttablo">
        <tr>
            <td>Admin Paneli 
                <asp:HyperLink ID="HyperLink7" runat="server" ForeColor="White" NavigateUrl="~/admin.aspx">Anasayfa</asp:HyperLink>
                /<asp:HyperLink ID="HyperLink1" runat="server" ForeColor="White" NavigateUrl="~/adminziyaretciler.aspx">Ziyaretçiler</asp:HyperLink></td>
        </tr> 
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <br /><br /><br /><div id="sayfa">
        <div class="baslik">Ziyaretçi İstatistikleri</div>
        <div class="bilgiler">
            <span class="sol">Online : </span><span class="sag"><%= Application["online"] %></span>
            <span class="sol">Bugün : </span><span class="sag"><%= gunluk %></span>
            <span class="sol">Bu Ay : </span><span class="sag"><%= aylik %></span>
            <span class="sol">Bu Yıl : </span><span class="sag"><%= yillik %></span>
            <span class="sol">Toplam : </span><span class="sag"><%= toplam %></span>
        </div>
    </div>
</asp:Content>

