using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FormItemList : System.Web.UI.Page
{
    
    //TODO: 添加WebForm有效性控制【JavaScript】
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack) 
        {
            //Response.Cookies["UserInfo"]["FCorp"] = FuncUtils.EncryptString("1001");
            //Response.Cookies["UserInfo"]["FOpid"] = FuncUtils.EncryptString("A101");
            //Response.Cookies["UserInfo"]["FOpName"] = FuncUtils.EncryptString("郭靖");
            //Response.Cookies["UserInfo"]["FDept"] = FuncUtils.EncryptString("计调部");
            Response.Cookies["UserInfo"]["FCorp"] = "6501E71B";
            Response.Cookies["UserInfo"]["FOpid"] = "9B45254B";
            Response.Cookies["UserInfo"]["FOpName"] = "92A40293";
            Response.Cookies["UserInfo"]["FDept"] = "DFAE9BF74171";
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("FormPlanEdit.aspx?GoDate=2012-09-01&ItemNo=1001-00246");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("FormNewItem.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("FormOrderList.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("FormRevList.aspx");
        //Response.Write("jkfl;sdjflksdjflkasdjf");
        //Response.Write("<script language='javascript'>alert('what?')</script>");
    }
}