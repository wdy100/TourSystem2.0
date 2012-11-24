<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FormRevAdd.aspx.cs" Inherits="FormRevAdd" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table class="table1">
            <tr>
                <td>
                    <span class="fontbold">客户代码：</span><%=objRev.FCtid%>
                </td>
                <td>
                    <span class="fontbold">客户名称：</span><%=objRev.FCtName%>
                </td>
                <td>
                    <span class="fontbold">收款日期：</span><%=String.Format("{0:yyyy-MM-dd}",DateTime.Now) %>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
