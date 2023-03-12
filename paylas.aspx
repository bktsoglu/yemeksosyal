<%@ Page Title="" Language="C#" MasterPageFile="~/ben.master" AutoEventWireup="true" CodeFile="paylas.aspx.cs" Inherits="paylas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
           <br /> Değerli Misafirimiz;<br /> <br />
            Sitemizde tüm konuları okuyabilir ve üyelerimizin yaptığı paylaşımları görüntüleyebilirsiniz. <br /> <br />
            Eğer sizde sitemize katkıda bulunmak ve paylaşım yapmak isterseniz lütfen 
            <asp:LinkButton ID="LinkButton13" runat="server" PostBackUrl="~/uyeol.aspx">Üye Olunuz.</asp:LinkButton>
            <br /> <br />
            Üyeliğiniz varsa buradan
            <asp:LinkButton ID="LinkButton14" runat="server" PostBackUrl="~/uyegiris.aspx">Üye Girişi</asp:LinkButton>
            &nbsp;yapabilirsiniz.
        </asp:View>
        <asp:View ID="View2" runat="server">
            <br />
            <table class="auto-style1">
                <tr>
                    <td>Restaurantın Adı:</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Cinsi:</td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Selected="True">Yemek</asp:ListItem>
                            <asp:ListItem>Kafe</asp:ListItem>
                        </asp:RadioButtonList>
                        </td>
                </tr>
                <tr>
                    <td>Bulunduğu İl:</td>
                    <td><asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>istanbul</asp:ListItem>
                        <asp:ListItem>ankara</asp:ListItem>
                        <asp:ListItem>izmir</asp:ListItem>
                        <asp:ListItem>bursa</asp:ListItem>
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td>Yorumunuz:</td>
                    <td><asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Puanınız:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList2" runat="server">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td>Yemek Adı:</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Adres:</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Fotoğraf Ekle:</td>
                    <td>
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                        </td>
                </tr>
                <tr>
                    <td><asp:Button ID="Button1" runat="server" Text="paylaş" OnClick="Button1_Click" /></td>
                     <td>
                         <asp:Label ID="Label1" runat="server"></asp:Label></td>
                </tr>
            </table>

        </asp:View>
    </asp:MultiView>
</asp:Content>

