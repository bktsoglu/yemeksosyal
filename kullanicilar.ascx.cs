using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class kullanicilar : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["kadi"] != null)
            if (Session["kadi"].ToString() == "administrator")
                Response.Redirect("admin.aspx");
        if (Session["kadi"] != null)
        {
            MultiView1.ActiveViewIndex = 1;
            
        }
        else
        {
            MultiView1.ActiveViewIndex = 0;
            
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string kadi, sifre,  sql;
        DataTable dt = new DataTable();
        kadi = TextBox1.Text;
        sifre = TextBox2.Text;
        sql = "select * from kullanicilar where kadi='" + kadi + "' AND sifre='" + sifre + "' AND onay=1";
        dt = verim.slccalis(sql);
        if (dt.Rows.Count != 0)
        {
            Session["kadi"] = kadi;
            Session["sifre"] = sifre;
            Session["adi"] = dt.Rows[0]["adi"].ToString();
            Session["soyadi"] = dt.Rows[0]["soyadi"].ToString();
            Session["mesaj"] = Session["adi"].ToString() + "  " + Session["soyadi"].ToString() + " Hoşgeldiniz.";
            if (Session["kadi"].ToString() == "administrator")
                Response.Redirect("admin.aspx");
            else
                Response.Redirect("default.aspx");
        }
        else
        {
            Session["mesaj"] = "Henüz Giriş Yapılmadı.";
            Label1.Text = "Kullanıcı adı veya şifre hatalı";
        }
    }
}