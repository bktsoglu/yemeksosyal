using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;
public partial class adminpanelsifre : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["kadi"] == null)
            Response.Redirect("default.aspx");
        if (Session["kadi"] != null)
            if (Session["kadi"].ToString() != "administrator")
                Response.Redirect("default.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            DataTable dt = new DataTable();
            dt = verim.slccalis("select * from kullanicilar where kadi='administrator'");
            if (TextBox1.Text == dt.Rows[0]["sifre"].ToString())
            {
                verim.komut("update kullanicilar set sifre='" + TextBox3.Text + "' where kadi='administrator'");
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                Label3.Text = "Şifreniz Değiştirildi.";
            }
            else
                Label2.Text = "Mevcut Şifrenizi Yanlış Girdiniz";
        }
        catch (Exception hata)
        {
            Label3.Text = hata.ToString();
        }
        
    }
}