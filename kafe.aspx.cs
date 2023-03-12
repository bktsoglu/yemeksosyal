using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class kafe : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            yukle();
        }
        if (IsPostBack)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "hash", "location.hash = '#" + sira + "';", true);

        }
    }
    static string sira;
    void yukle()
    {
        String sor = "SELECT * FROM restaurantlar WHERE cinsi='Kafe' AND onay=1  ORDER BY puan DESC";
        DataTable dt2 = new DataTable();
        dt2 = verim.slccalis(sor);
        Rpt1.DataSource = dt2;
        Rpt1.DataBind();
    }


    protected void Rpt1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        LinkButton lnkUpdate = (LinkButton)e.Item.FindControl("lnkUpdate");
        LinkButton lnkEdit = (LinkButton)e.Item.FindControl("lnkEdit");
        Label Label1 = (Label)e.Item.FindControl("Label1");
        Repeater altrepeater = (Repeater)e.Item.FindControl("altrepeater");
        TextBox TextBox1 = (TextBox)e.Item.FindControl("TextBox1");
        if (Session["kadi"] == null)
            lnkEdit.Visible = false;
        sira = lnkEdit.CommandArgument.ToString();

        String yorumgoster = "SELECT * FROM yorumlar where onay=1 AND restaurantid=" + sira ;
        DataTable dt3 = new DataTable();
        dt3 = verim.slccalis(yorumgoster);
        altrepeater.DataSource = dt3;
        altrepeater.DataBind();

        if (e.CommandName == "edit")
        {
            if (Session["kadi"] == null)
            {
                Label1.Visible = true;
                Label1.Text = "yorum yazabilmeniz için üye olmanız gerekmektedir.";
            }
            else
            {
                Label1.Visible = false;
                TextBox1.Visible = true;
                lnkUpdate.Visible = true;
                lnkEdit.Visible = false;
            }
        }
        if (e.CommandName == "update")
        {
            string sql = "insert into yorumlar (restaurantid,kullanici,yorum,onay) values (" + sira + ",'" + Session["kadi"].ToString() + "','" + TextBox1.Text + "',0)";
            string msg = verim.komut(sql);
            Label1.Text = msg;
            yukle();
        }
    }
    protected void Rpt1_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {

    }
}