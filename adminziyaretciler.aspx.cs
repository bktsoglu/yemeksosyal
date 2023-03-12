using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
public partial class adminziyaretciler : System.Web.UI.Page
{
    public string gunluk, aylik, yillik, toplam;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["kadi"] == null)
            Response.Redirect("default.aspx");
        if (Session["kadi"] != null)
            if (Session["kadi"].ToString() != "administrator")
                Response.Redirect("default.aspx");

        string baglanti = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + HttpContext.Current.Server.MapPath("App_Data\\veritabanim.mdb");
        OleDbConnection bg = new OleDbConnection(baglanti);
        OleDbCommand komut = new OleDbCommand("select * from sayac", bg);
        bg.Open();
        OleDbDataReader rd = komut.ExecuteReader();
        rd.Read();
        gunluk = rd["gunluk"].ToString();
        aylik = rd["aylik"].ToString();
        yillik = rd["yillik"].ToString();
        toplam = rd["toplam"].ToString();
        bg.Close();
    }
}