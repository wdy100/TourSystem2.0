using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int counts = 4;//假设添加四个控件
        for (int i = 1; i <= counts; i++)
        {
            TableRow row = new TableRow();
            TableCell cellHead = new TableCell();
            TableCell cellContent = new TableCell();
            Label LabelAuditing = new Label();
            TextBox TextAuditing = new TextBox();
            LabelAuditing.ID = "LabelAuditing" + i.ToString();
            LabelAuditing.Text = "LabelAuditing" + i.ToString();
            TextAuditing.ID = "TextAuditing" + i.ToString();
            TextAuditing.Height = 18;
            cellHead.Controls.Add(LabelAuditing);
            cellContent.Controls.Add(TextAuditing);
            cellHead.BackColor = System.Drawing.Color.FromName("#EFEFEF");
            cellHead.BorderWidth = 1;
            cellHead.BorderColor = System.Drawing.Color.FromName("#CCCCCC");
            cellHead.HorizontalAlign = HorizontalAlign.Left;
            cellHead.Width = 60;
            cellContent.BorderColor = System.Drawing.Color.FromName("#CCCCCC");
            cellContent.BackColor = System.Drawing.Color.FromName("#EFEFEF");
            cellContent.BorderWidth = 1;
            cellContent.HorizontalAlign = HorizontalAlign.Left;
            cellContent.Width = 100;
            row.Cells.Add(cellHead);
            row.Cells.Add(cellContent);
            row.Height = 22;
            this.Table1.BorderColor = System.Drawing.Color.FromName("#CCCCCC");
            this.Table1.Width = 400;
            this.Table1.Rows.Add(row);
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = string.Empty;
        for (int i = 1; i <= 4; i++)
        {
            str += ((TextBox)this.FindControl("TextAuditing" + i.ToString())).Text + "<br>";//获取控件的值
        }
        this.LabelMsg.Text = str;
    }
}