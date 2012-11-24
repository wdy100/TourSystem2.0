<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FormOrderList.aspx.cs" Inherits="FormOrderList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Css/FormCss1.css" rel="stylesheet" type="text/css" />
    <link href="css/jquery.ui.all.css" rel="stylesheet" type="text/css" />
    <link href="css/ui.jqgrid.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/jquery-1.8.0.min.js" type="text/javascript"></script>
    <script src="Scripts/jquery-ui-1.8.23.custom.min.js" type="text/javascript"></script>
    <script src="Scripts/grid.locale-cn.js" type="text/javascript"></script>
    <script src="Scripts/jquery.jqGrid.min.js" type="text/javascript"></script>
    <script src="Scripts/Common.js" type="text/javascript"></script>
    <script src="Scripts/jquery.ui.widget.js" type="text/javascript"></script>
    <script src="Scripts/jquery.ui.tabs.js" type="text/javascript"></script>
    <script src="Scripts/jquery.ui.core.js" type="text/javascript"></script>
    <script src="Scripts/J1_OrderList.js" type="text/javascript"></script>
    <title></title>
</head>
<body>
    <div id="dialog_Change" title="调整预留时间">
        <br />
        
        将占位时间调整到：<input type="text" id="changetime" style="width:200px;" />
    </div>
    <div id="dialog_OrderDtl" title="订单详情">
        <form id="FmOrderDtl" title="订单详情">
        <div id="divorderdtl" >
        </div>
        </form>
    </div>
    <form id="FmOrderList" >
    <div>
        <button id="button1" type="button">
            订单明细</button>
    </div>


    </form>
</body>
</html>
