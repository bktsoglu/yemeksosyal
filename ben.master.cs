using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
public partial class ben : System.Web.UI.MasterPage
{
    public string gunluk, aylik, yillik, toplam;
    protected void Page_Load(object sender, EventArgs e)
    {
        int bak=0;
        if (Session["adi"] != null)
        {
            Label1.Text = Session["mesaj"].ToString();
            bak = 1;
            
        }
        else
        

        if (Session["adi"] == null && Session["msg3"] == "1")
        {
            if (bak != 1)
            {
                Label2.Text = "Mailinize onay kodu gönderildi.";
                Session["msg3"] = "0";
            }
        }
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
