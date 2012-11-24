using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class DemoHtml : System.Web.UI.Page
{
    public classOrder Order = null;
    public List<string> liTour=new List<string>();
    public List<string> liChangePrice = new List<string>();

    protected void Page_Load(object sender, EventArgs e)
    {
       // if (!Page.IsPostBack)
        {
            string strConNo = Request.QueryString["ConNo"].ToString();
            string strSys = Request.QueryString["SysId"].ToString();
            string strFlag = Request.QueryString["Flag"].ToString();
            Order = new classOrder(strConNo);

            if (Order.FChgCount != 0)
            {
                Order.BindChangeDtl(gvChangeDtl);           //绑定变更明细
                Order.BindChangePrice(ref liChangePrice);   //绑定变更的价格明细
                rpChangePrice.DataSource = liChangePrice;
                rpChangePrice.DataBind();
            }

            Order.BindPriceDtl(gvPriceDtl);                 //绑定价格明细
            Order.BindCustomDtl(gvCustomers);               //绑定客人名单
            Order.BindCustomCancelDtl(gvCustomerCancel);    //绑定取消的客人名单

            //Done: List<string>行程绑定到Repeater
            Order.BindTourToList(ref liTour);
            rpTour.DataSource = liTour;
            rpTour.DataBind();

            gvChangeDtl.RowCommand += new GridViewCommandEventHandler(gvChangeDtl_RowCommand);
        }
    }
    protected void gvChangeDtl_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType==DataControlRowType.DataRow)
        {
            DataRowView rowView = (DataRowView)e.Row.DataItem;
            string strStatus = rowView["FStatusIndex"].ToString();
            string strId = rowView["FSysId"].ToString();
            string strOrderNo = rowView["FNo"].ToString();
            if (strStatus == "2")
            {
                e.Row.Cells[7].Text = "<a href='#' class='btnConfirm' onclick='DoConfChg(" + strOrderNo +","+ strId
                    + ",1)' style='color:blue;'>确认</a>&nbsp;"
                    + "<a href='#' class='btnErrBack' onclick='DoConfChg(" + strOrderNo + "," + strId
                    + ",2)' style='color:red;'>拒绝</a>";
                //Button btnConf = new Button();
                //btnConf.ID = "btnConf";
                //btnConf.Text = "确认";
                //btnConf.CommandName = "btnConf";
                //btnConf.UseSubmitBehavior = false;
                //e.Row.Cells[7].Controls.Add(btnConf);

                //Button btnErrBack = new Button();
                //btnErrBack.ID = "btnErrBack";
                //btnErrBack.Text = "取消";
                //btnErrBack.CommandName = "btnErrBack";
                //btnErrBack.UseSubmitBehavior = false;
                //e.Row.Cells[7].Controls.Add(btnErrBack);
            }
        }
    }

    protected void gvChangeDtl_RowCommand(Object Sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName=="btnConf")
        {
            Response.Write("<script type='text/javascript'>alert('确定')</script>");
        }
        else if (e.CommandName=="btnErrBack")
        {
            Response.Write("<script type='text/javascript'>alert('取消')</script>");
        }        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Write("点击了按钮");
    }
}