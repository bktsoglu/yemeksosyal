using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.OleDb;
/// <summary>
/// Summary description for verim
/// </summary>
public class verim
{
    public verim()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public static DataTable slccalis(string sql)
    {
        DataTable dt = new DataTable();
        string yol = HttpContext.Current.Server.MapPath("App_Data\\veritabanim.mdb");
        OleDbConnection conn = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + yol);
        conn.Open();
        OleDbDataAdapter da = new OleDbDataAdapter(sql, conn);
        da.Fill(dt);
        conn.Close();
        conn.Dispose();
        da.Dispose();
        return dt;
    }
    public static string komut(string sql)
    {
        string msg = "";
        string yol = HttpContext.Current.Server.MapPath("App_Data\\veritabanim.mdb");
        OleDbConnection conn = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + yol);
        OleDbCommand cmd = new OleDbCommand(sql, conn);
        conn.Open();
        try
        {
            cmd.ExecuteNonQuery();
        }
        catch (Exception ex)

        {
            msg = ex.ToString();
        }
        conn.Close();
        conn.Dispose();
        cmd.Dispose();
        return msg;
    }
}