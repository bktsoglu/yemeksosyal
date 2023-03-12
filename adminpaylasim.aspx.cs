﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
public partial class adminpaylasim : System.Web.UI.Page
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
        string sql = "select * from  restaurantlar";
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
        Label Label2 = (Label)e.Item.FindControl("Label2");
        TextBox TextBox1 = (TextBox)e.Item.FindControl("TextBox1");
        TextBox TextBox2 = (TextBox)e.Item.FindControl("TextBox2");
        sira = lnkEdit.CommandArgument.ToString();
        if (e.CommandName == "edit")
        {
            Label1.Visible = false;
            Label2.Visible = false;
            TextBox1.Visible = true;
            TextBox2.Visible = true;
            lnkCancel.Visible = true;
            lnkUpdate.Visible = true;
            lnkEdit.Visible = false;
        }
        if (e.CommandName == "cancel")
        {
            Label1.Visible = true;
            Label2.Visible = true;
            TextBox1.Visible = false;
            TextBox2.Visible = false;
            lnkCancel.Visible = false;
            lnkUpdate.Visible = false;
            lnkEdit.Visible = true;
        }
        if (e.CommandName == "delete")
        {
            string sql = "DELETE FROM restaurantlar WHERE Kimlik=" + sira;
            string msg = verim.komut(sql);
            yukle();
        }
        if (e.CommandName == "update")
        {
            string sql = "update restaurantlar set oneri="+TextBox1.Text+",onay=" + TextBox2.Text + " where Kimlik=" + sira;
            string msg = verim.komut(sql);
            yukle();
        }
    }
}