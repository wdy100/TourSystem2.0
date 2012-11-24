<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FormPlanEdit.aspx.cs" Inherits="FormPlanEdit" %>

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
    <link href="Css/kalendae.css" rel="stylesheet" type="text/css" charset="utf-8" />
    <script src="Scripts/kalendae.js" type="text/javascript" charset="utf-8"></script>
    <script src="Scripts/J1_PlanEdit.js" type="text/javascript"></script>
    <title>编辑行程</title>
    <script type="text/javascript">

    </script>
</head>
<body>
    <div id="dialog-adddate" title="添加出团计划日期">
        <form name="adddate" id="adddate">
        <%--<input type="button" onclick="kd_multiSelect.setSelected(txtPlandate.value)" value="添加">--%>
        <p>
            出团日期：<input type="text" id="addgodate" name="addgodate" readonly="readonly" class="txtDesc"
                style="width: 650px;" />
        </p>
        <p>
            出团人数：<input type="text" id="addnum" name="addnum" class="txtPrice" style="width: 100px;" /><br />
        </p>
        <script type="text/javascript" charset="utf-8">
            kd_multiSelect = new Kalendae.Input('addgodate', {
                months: 3,
                mode: 'multiple',
                direction: 'today-future'
            });
        </script>
        <div id="addprice">
        </div>
        </form>
    </div>
    <div id="dialog-changenum" title="更改计划位置数">
        <form name="changenum" id="changenum">
        <p>
            将计划位置数调整为：<input type="text" value="0" id="plannum" style="width: 100px;" />
        </p>
        </form>
    </div>
    <div id="dialog-changeprice" title="批量更改价格">
        <form name="changeprice" id="changeprice">
        <div id="GroupPrice">
        </div>
        </form>
    </div>
    <form name="FormPlanEdit" id="FormPlanEdit">
    <div class="GroupHeader">
        行程基本信息</div>
    <div>
        <span class="span_item">行程编号：<input type="text" readonly="readonly" class="txtDesc"
            name="I_FNo" id="I_FNo" />
        </span>&nbsp; <span class="span_item">行程描述：<input type="text" readonly="readonly"
            class="txtDesc" name="I_FDesc" id="I_FDesc" style="width: 200px;" />
        </span>
    </div>
    <div class="GroupHeader">
        行程日期发布信息</div>
    <div id="div_buttonlist">
        <input type="button" value="查看产品详情" id="btnItem" />
        <input type="button" value="批量改价" id="btnChgPrice" />
        <input type="button" value="批量暂停" id="btnStop" />
        <input type="button" value="批量销售" id="btnSale" />
        <input type="button" value="添加计划日期" id="btnAppendDate" />
    </div>
    <div>
        查询条件：
    </div>
    <div>
        <div>
            <div id="pgtoolbar1" ></div>
            <table id="gridPlanDate" class="jqGridStyle">
            </table>
            <div id="PlanDatePager"></div>
        </div>
        <br />
        <div>
            <table id="gridPrice"  class="jqGridStyle">
            </table>
        </div>
    </div>
    </form>
    <div id="test">
    </div>
</body>
</html>
