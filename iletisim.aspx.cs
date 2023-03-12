using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
public partial class iletisim : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    string adsoyad, email, mesaj,gonder;
    protected void Button1_Click(object sender, EventArgs e)
    {
        adsoyad = TextBox1.Text;
        email = TextBox2.Text;
        mesaj = TextBox3.Text;
        gonder = "insert into iletisim (adsoyad,email,mesaj) Values ('"+adsoyad+ "','" + email + "','" + mesaj + "' )";
        verim.komut(gonder);

        SmtpClient sc = new SmtpClient();
        sc.Port = 587;
        sc.Host = "smtp.gmail.com";
        sc.EnableSsl = true;

        sc.Credentials = new NetworkCredential("i.bektas93@gmail.com", "*");

        MailMessage mail = new MailMessage();

        mail.From = new MailAddress("i.bektas93@gmail.com", "Web Siteniz ");

        mail.To.Add("i.bektas93@gmail.com");
        /*mail.To.Add("alici2@mail.com");

        mail.CC.Add("alici3@mail.com");
        mail.CC.Add("alici4@mail.com");*/

        mail.Subject = "Sitenizden Gelen Mesaj"; mail.IsBodyHtml = true; mail.Body ="<b>"+adsoyad+ "<b/> size sitenizden ulaşmak istedi. <br/><br/><u>mesaj<u/>: " + mesaj+ " <br/><br/><u>mail adresi<u/>= " + email+"";

        /* mail.Attachments.Add(new Attachment(@"C:\Rapor.xlsx"));
         mail.Attachments.Add(new Attachment(@"C:\Sonuc.pptx"));*/

        sc.Send(mail);

        Label3.Text = "Mesajınız Tarafımıza Ulaşmıştır. En Kısa Süre İçerisinde Mail Olarak Dönüş Yapılacaktır. Teşekkür Ederiz..";

        TextBox1.Text="";
        TextBox2.Text = "";
        TextBox3.Text = "";
    }
}
