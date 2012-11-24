using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public class classRev
{
    private DataTable FCtTable;
    public string FCtid { get; set; }
    public string FCtName { get; set; }

    public classRev(string ACtid) 
    {
        FCtid = ACtid;
        string strSql = "Select * from TSp Where FSpid=" + FCtid.QuotedStr();
        FCtTable = QueryUtils.GetTableResult(strSql);
        FuncUtils.SetObjPropValue(FuncUtils.DataRowToNameValue(FCtTable.Rows[0]), this);
    }
 
}

public partial class FormRevAdd : System.Web.UI.Page
{
    public classRev objRev = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        string strCtid = Request.QueryString["ctid"].ToString();
        objRev = new classRev(strCtid);

    }
}