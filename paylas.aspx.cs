using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
public partial class paylas : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["kadi"] != null)
        {
            MultiView1.ActiveViewIndex = 1;
        }
        else
        {
            MultiView1.ActiveViewIndex = 0;
        }
    }

    static string ip,dosyaadi, ekle2, yol;
    protected void Button1_Click(object sender, EventArgs e)
    {   
            int varmi = 0;
            yol = Server.MapPath("~/kullaniciresim/");
            dosyaadi = FileUpload1.FileName;
            string uza = Path.GetExtension(FileUpload1.FileName);
            string[] uzanti = { ".gif", ".jpg", ".jpeg", ".png", ".tif" };
            for (int i = 0; i < uzanti.Length; i++)
            {
                if (uza == uzanti[i]) varmi = 1;
            }
            string kullanici = Session["kadi"].ToString();
            string restaurant = TextBox1.Text;  
            string cinsi = RadioButtonList1.SelectedItem.Text;
            
            string sehir = DropDownList1.SelectedValue;
            string yorum = TextBox2.Text;
            string yemek = TextBox3.Text;
            string adres= TextBox4.Text;
            int puan=int.Parse( DropDownList2.SelectedValue);
        int oneri = 0;
        if (FileUpload1.HasFile)
            {
                if (varmi == 1)
                {
                    FileUpload1.PostedFile.SaveAs(yol + dosyaadi);
                    ip = Request.ServerVariables["REMOTE_ADDR"].ToString();
                    ekle2 = "insert into restaurantlar (kullanici,restaurant,cinsi,sehir,yorum,yemek,adres,resimyol,puan,ip,oneri,onay) values ('" + kullanici + "','" + restaurant + "','" + cinsi + "','" + sehir + "','" + yorum + "','" +yemek + "','" + adres + "','" + dosyaadi + "'," + puan + ",'" + ip + "',"+oneri+",0)";
                    string msg = verim.komut(ekle2);
                if (msg == "")
                {
                    Label1.Text = "Yorumlarınız ve görüşleriniz kaydedildi, site yöneticisinin onayına sunuldu.";
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                    TextBox4.Text = "";
                }
                else
                    Label1.Text = msg;
                }
            else
                Label1.Text = "Bu dosya resim dosyası değil";

        }
        
    }
}