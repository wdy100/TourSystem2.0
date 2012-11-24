<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="FormItemList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>做一个测试 shit fuck</title>
    <script src="Scripts/jquery-1.8.0.min.js" type="text/javascript"></script>
    <link href="Css/common.css" rel="stylesheet" type="text/css" />
    <link href="Css/powerFloat.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/jquery-powerFloat.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function () {
            $("#text1").powerFloat({
                eventType: "focus",
                targetMode: "remind",
                targetAttr: "placeholder" 
                //position: "1-4"
            });
        })
    </script>
</head>

<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="编辑线路计划" />
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="新建线路" />
        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="订单列表" />
        <asp:Button ID="Button5" runat="server" OnClick="Button4_Click" Text="收款列表" />

        <asp:Button ID="Button4" runat="server" Text="Button" onclick="Button4_Click" />
                <input type="text" id="text1" placeholder="王大昌　 　 　 　 　 "/>
        
    </div>
    </form>
</body>
</html>
