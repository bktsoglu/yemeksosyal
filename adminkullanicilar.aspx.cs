using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class adminkullanicilar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["kadi"] == null)
            Response.Redirect("default.aspx");
        if (Session["kadi"] != null)
            if (Session["kadi"].ToString() != "administrator")
                Response.Redirect("default.aspx");
        if (!IsPostBack)
        {
            yukle();
        }
        if (IsPostBack)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "hash", "location.hash = '#" + sira + "';", true);
        }
    }
    void yukle()
    {
        string sql = "select * from  kullanicilar";
        DataTable dt = new DataTable();
        dt = verim.slccalis(sql);
        Repeater1.DataSource = dt;
        Repeater1.DataBind();


    }
    static string sira;



    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        LinkButton lnkUpdate = (LinkButton)e.Item.FindControl("lnkUpdate");
        LinkButton lnkCancel = (LinkButton)e.Item.FindControl("lnkCancel");
        LinkButton lnkEdit = (LinkButton)e.Item.FindControl("lnkEdit");
        LinkButton lnkDelete = (LinkButton)e.Item.FindControl("lnkDelete");
        Label Label1 = (Label)e.Item.FindControl("Label1");
        Label Label7 = (Label)e.Item.FindControl("Label7");
        Label Label3 = (Label)e.Item.FindControl("Label3");
        Label Label4 = (Label)e.Item.FindControl("Label4");
        Label Label5 = (Label)e.Item.FindControl("Label5");
        Label Label6 = (Label)e.Item.FindControl("Label6");
        TextBox TextBox1 = (TextBox)e.Item.FindControl("TextBox1");
        TextBox TextBox3 = (TextBox)e.Item.FindControl("TextBox3");
        TextBox TextBox4 = (TextBox)e.Item.FindControl("TextBox4");
        TextBox TextBox5 = (TextBox)e.Item.FindControl("TextBox5");
        TextBox TextBox6 = (TextBox)e.Item.FindControl("TextBox6");
        TextBox TextBox7 = (TextBox)e.Item.FindControl("TextBox7");

        sira = lnkEdit.CommandArgument.ToString();
        if (e.CommandName == "edit")
        {
            Label1.Visible = false;
            Label3.Visible = false;
            Label4.Visible = false;
            Label5.Visible = false;
            Label6.Visible = false;
            Label7.Visible = false;

            TextBox1.Visible = true;
            TextBox3.Visible = true;
            TextBox4.Visible = true;
            TextBox5.Visible = true;
            TextBox6.Visible = true;
            TextBox7.Visible = true;


            lnkCancel.Visible = true;
            lnkUpdate.Visible = true;
            lnkEdit.Visible = false;
        }
        if (e.CommandName == "cancel")
        {
            Label1.Visible = true;
            Label3.Visible = true;
            Label4.Visible = true;
            Label5.Visible = true;
            Label6.Visible = true;
            Label7.Visible = true;

            TextBox1.Visible = false;
            TextBox3.Visible = false;
            TextBox4.Visible = false;
            TextBox5.Visible = false;
            TextBox6.Visible = false;
            TextBox7.Visible = false;


            lnkCancel.Visible = false;
            lnkUpdate.Visible = false;
            lnkEdit.Visible = true;
        }
        if (e.CommandName == "delete")
        {
            string sql = "DELETE FROM kullanicilar WHERE id=" + sira;
            string msg = verim.komut(sql);
            yukle();
        }
        if (e.CommandName == "update")
        {
            string sql = "update kullanicilar set kadi='" + TextBox7.Text + "',sifre='" + TextBox6.Text + "',adi='" + TextBox5.Text + "',soyadi='" + TextBox4.Text + "',mail='" + TextBox3.Text + "',telefon='" + TextBox1.Text + "' where id=" + sira;
            string msg = verim.komut(sql);
            yukle();
        }
    }
}