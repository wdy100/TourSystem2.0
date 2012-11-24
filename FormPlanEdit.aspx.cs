using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FormPlanEdit : System.Web.UI.Page
{
    /// <summary>
    /// 出团日期
    /// </summary>
    public string GoDate { get; set; }
    /// <summary>
    /// 线路编码
    /// </summary>
    public string ItemNo { get; set; }

    protected void Page_Load(object sender, EventArgs e)
    {
        //Todo: 查询行程全部信息
        //Todo: 计划主表的Ajax后台分页查询
        //Todo: 添加价格明细，并且可以直接编辑价格信息
        //Todo: 点击计划主表，明细表联动
        //Todo: 双击表格座位数可以直接编辑

    }
}