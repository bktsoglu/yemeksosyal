using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminonerilenler : System.Web.UI.Page
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
        String oneri = "";
        if (DropDownList1.SelectedIndex == 0)
            oneri= "1";
        else
            oneri = "0";
        String kontrol = verim.komut("update restaurantlar set onay='" + oneri + "' where kimlik="+TextBox1.Text);
        if (kontrol == "")
            Response.Redirect("adminonerilenler.aspx");
        else
            Label2.Text = kontrol;
    }
}