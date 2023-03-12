using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class guncelle : System.Web.UI.Page
{
    string kadi, sifre, adi, soyadi, sor, up, yol,mail,telefon;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["kadi"] == null)
        {
            Response.Redirect("default.aspx");
        }
        if (!IsPostBack)
        {
            if (Session["kadi"] != null)
            {
                kadi = Session["kadi"].ToString();
                TextBox7.Text = kadi;
                sor = "select * from kullanicilar where kadi='" + kadi + "'";
                yol = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath("App_Data/veritabanim.mdb");
                OleDbConnection con = new OleDbConnection(yol);
                con.Open();
                DataTable dt = new DataTable();
                OleDbDataAdapter da = new OleDbDataAdapter(sor, con);
                da.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    sifre = dt.Rows[0]["sifre"].ToString();
                    adi = dt.Rows[0]["adi"].ToString();
                    soyadi = dt.Rows[0]["soyadi"].ToString();
                    mail=dt.Rows[0]["mail"].ToString();
                    telefon=dt.Rows[0]["telefon"].ToString();
                    TextBox1.Text = sifre;
                    TextBox2.Text = adi;
                    TextBox3.Text = soyadi;
                    TextBox5.Text = mail;
                    TextBox6.Text = telefon;
                }
                con.Close();

            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        kadi = Session["kadi"].ToString();
        sifre = TextBox1.Text;
        adi = TextBox2.Text;
        soyadi = TextBox3.Text;
        mail= TextBox5.Text;
        telefon = TextBox6.Text;
        up = "update kullanicilar set sifre='" + sifre + "',adi='" + adi + "',soyadi='" + soyadi + "',mail='" + mail + "',telefon='" + telefon + "' where kadi='" + kadi + "'";
        string msg5 = verim.komut(up);
        if (msg5 == "")
            Label2.Text = "güncellendi";
        else
            Label2.Text = msg5;
    }
}