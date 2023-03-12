using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;
public partial class onay : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["kadi"] != null)
        {
            Response.Redirect("default.aspx");
        }
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            int sayac1 = 0;
            string kullaniciadi = TextBox1.Text;
            int sayiveritabani = 0;
            int onaykodu = Convert.ToInt32(TextBox2.Text);
            string kullanicivarmi = "select * from kullanicilar where kadi='" + kullaniciadi + "' AND onay=0";
            DataTable dt = new DataTable();
            dt = verim.slccalis(kullanicivarmi);
            if (dt.Rows.Count != 0)
            {
                sayac1 = 1;
                sayiveritabani = Convert.ToInt32(dt.Rows[0]["sayi"]);

            }
            else
                Label1.Text = "Onaylanması gereken bir kullanıcı yok";
            if (sayac1 == 1 & onaykodu == sayiveritabani)
            {
                string sql = "update kullanicilar set onay=1 where kadi='" + kullaniciadi + "'";
                string msg=verim.komut(sql);
                if (msg == "")
                {
                    Session["kadi"] = kullaniciadi;
                    Session["adi"] = dt.Rows[0]["adi"];
                    Session["soyadi"] = dt.Rows[0]["soyadi"];
                    Session["mesaj"] = Session["adi"].ToString() + "  " + Session["soyadi"].ToString() + " Hoşgeldiniz.";
                    Response.Redirect("default.aspx");
                }
                else
                    Label1.Text = "Onay Kodunuzu Kontrol Edin";
            }

            
            
        }
        catch (Exception hata)
        {
            Label1.Text = hata.ToString();
        }
    }
}