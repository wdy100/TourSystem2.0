<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="FormItemList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>做一个测试 shit fuck freak</title>
    <script src="Scripts/jquery-1.8.0.min.js" type="text/javascript"></script>
    <link href="Css/common.css" rel="stylesheet" type="text/css" />
    <link href="Css/powerFloat.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/jquery-powerFloat.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function () {
            $("#text1").powerFloat({
                eventType: "focus",
                targetMode: "remind",
                targetAttr: "" 
                position: "1-4"
            });
        })
    </script>
</head>

<body>
 </body>
</html>
