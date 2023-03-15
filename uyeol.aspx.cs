using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Net.Mail;
using System.Net;



public partial class uyeol : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["adi"] != null)
        {
            Session["kontrol"] = "1";
            Response.Redirect("kontrol.aspx");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        Random rnd = new Random();
        int sayi = rnd.Next(3000)+3000;
        string kadi, sifre, adi, soyadi, sor, ekle, msg;
        DataTable dt = new DataTable();
        kadi = TextBox1.Text;
        sifre = TextBox2.Text;
        adi = TextBox4.Text;
        soyadi = TextBox5.Text;
        String mail2 = TextBox6.Text;
        String telefon = TextBox7.Text;
        sor = "select * from kullanicilar where kadi='" + kadi + "'";
        ekle = "insert into kullanicilar(kadi,sifre,adi,soyadi,mail,telefon,onay,sayi) Values('" + kadi + "','" + sifre + "','" + adi + "','" + soyadi + "','"+mail2+"','"+telefon+"',0,"+sayi+" )";
        dt = verim.slccalis(sor);
        if (dt.Rows.Count == 0)
        {
            msg = verim.komut(ekle);
            if (msg == "")
            {


                SmtpClient sc = new SmtpClient();
                sc.Port = 587;
                sc.Host = "smtp.gmail.com";
                sc.EnableSsl = true;

                sc.Credentials = new NetworkCredential("i.bektas93@gmail.com", "*");

                MailMessage mail = new MailMessage();

                mail.From = new MailAddress(mail2, "  ");

                mail.To.Add(mail2);
                /*mail.To.Add("alici2@mail.com");

                mail.CC.Add("alici3@mail.com");
                mail.CC.Add("alici4@mail.com");*/

                mail.Subject = "Onay Maili"; mail.IsBodyHtml = true; mail.Body = "<br/> Onay Kodunuz: "+sayi+ "  linkine tıklayarak onay kodunuzu girdiğiniz takdirde üyelik işleminiz gerçekleşecektir.<br/>Nerede Yenir Ekibi";

               /* mail.Attachments.Add(new Attachment(@"C:\Rapor.xlsx"));
                mail.Attachments.Add(new Attachment(@"C:\Sonuc.pptx"));*/

                sc.Send(mail);









                msg = "1";
                Session["msg3"] = "1";
                Response.Redirect("default.aspx");
            }   
        }
        else
            Label3.Text = " Girdiğiniz kriterlerde kullanıcımız mevcuttur!";
    }
}
