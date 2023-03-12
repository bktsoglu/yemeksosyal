using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminmesajlar : System.Web.UI.Page
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
        String kontrol = verim.komut("delete from iletisim where kimlik=" + TextBox1.Text);
        if (kontrol == "")
            Response.Redirect("adminmesajlar.aspx");
        else
            Label3.Text = kontrol;
    }
}