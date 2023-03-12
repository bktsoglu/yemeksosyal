using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class kontrol : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["adi"] == null)
            Response.Redirect("default.aspx");
        if (Session["kontrol"].ToString() == "1")
        {
            Label3.Text = Session["adi"].ToString() + "  " + Session["soyadi"].ToString() + " zaten oturum açtınız.";
        }
        
    }
}