using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

using System.Reflection;


public partial class Default3 : System.Web.UI.Page
{
    private void getaresult(string a, out string b)
    {
        b = a;
        //return true;132B515685BC
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        //#region 测试string类的扩展过程StrUrlEncode
        //if (!IsPostBack)
        //{
        //    string S = "青岛";
        //    Response.Write(S.StrUrlEncode());
        //} 
        //#endregion

        //Response.Write(@"将分开\'''''始了的" + "\"" + "@");
        //string strTemp = "试试行不行";
        //Response.Write(@strTemp+"<br/>");
        //Response.Write(FuncUtils.DemoString("猜猜我是谁!")+"<br/>");
        //Response.Write(FuncUtils.DecryptString("132B595685BC") + "<br/>");
        //Response.Write(FuncUtils.EncryptString("555555"));

        #region 测试加密解密函数
        //Response.Write("返回的加密结果为：" + FuncUtils.EncryptString("555555")+"<br/>");
        //Response.Write("返回的解密结果为：" + FuncUtils.DecryptString("132B515685BC") + "<br/>");
        //SqlParameter[] paras = new SqlParameter[] { new SqlParameter("@Corp", "1001"), new SqlParameter("@Opid", "A101") };
        //string strSql="Select FOpName from [TOp] Where FCorp=@Corp and FOpid=@Opid";
        //string S=QueryUtils.GetSingleResult(strSql, paras).ToString();
        //Response.Write("登陆人员为：" + S + "<br/>");
        //Response.Write("1111,2222,3333,4444,5555".QutoArrString());
        #endregion

        #region 测试读取对象属性值
        //classItem ciNew = new classItem();
        //foreach (PropertyInfo p in ciNew.GetType().GetProperties())
        //{
        //    p.SetValue(ciNew, Convert.ChangeType(15,p.PropertyType), null);
        //}
        #endregion
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        //Response.Write("<script language='javascript'>alert('Hello world');</script>");
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        //#region 测试string类的扩展过程StrUrlEncode及StrUrlDecode
        //((Button)sender).Text = "青岛".StrUrlEncode().StrUrlDecode();
        //#endregion
        string strTemp = TextBox1.Text;
        Response.Write(strTemp);        
    }
}