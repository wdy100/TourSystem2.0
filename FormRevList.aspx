<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FormRevList.aspx.cs" Inherits="FormRevList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Css/FormCss1.css" rel="stylesheet" type="text/css" />
    <link href="css/jquery.ui.all.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/jquery-1.8.0.min.js" type="text/javascript"></script>
    <script src="Scripts/jquery-ui-1.8.23.custom.min.js" type="text/javascript"></script>
    <script src="Scripts/grid.locale-cn.js" type="text/javascript"></script>
    <script src="Scripts/Common.js" type="text/javascript"></script>
    <script src="Scripts/jquery.ui.widget.js" type="text/javascript"></script>
    <script src="Scripts/jquery.ui.tabs.js" type="text/javascript"></script>
    <script src="Scripts/jquery.ui.core.js" type="text/javascript"></script>

    <script type="text/javascript">
        $(function () {
            //定义全局变量
            var ctid = "";  //客户代码

            //格式化样式
            $("input:button, button").button();

            //定义新建收款单对话框
            var $dlgRevAdd = $("#dialog_RevAdd").dialog({
                autoOpen: false,
                width: 900,
                height: 600,
                modal: true,
                button: {
                    "确认提交": function () {

                    },
                    "取消返回": function () { $(this).dialog("close"); }
                }
            });

            function ShowAddRevDtlForm(ctid) {
                $.ajax({
                    type: "POST",
                    url: "FormRevAdd.aspx?Ctid=" + ctid,
                    success: function (jsondata) {
                        var $dialoghtml = $("#RevAddDtl", $dlgRevAdd).html(jsondata);
                    }
                });
                $dlgRevAdd.dialog("open");
            }

            ctid = "A00000001";
            $("#button1").click(function () {
                ShowAddRevDtlForm(ctid);
            })
        })
    </script>
</head>
<body>
    <div id="dialog_RevAdd" title="新建收款单">
        <div id="RevAddDtl">
        </div>
    </div>
    <form id="FmRevList" runat="server">
    <div>
        <button id="button1" type="button">新建收款单</button>
    </div>
    </form>
</body>
</html>
