<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="FormNewItem.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta http-equiv="content-language" content="zh-cn" />
    <script src="Scripts/jquery-1.8.0.min.js" type="text/javascript"></script>
    <script src="Scripts/jquery-ui-1.8.23.custom.min.js" type="text/javascript"></script>
    <title></title>
    <link href="Css/FormCss1.css" rel="stylesheet" type="text/css" />
    <link href="Css/jquery.ui.all.css" rel="stylesheet" type="text/css" />
    <link href="Css/kalendae.css" rel="stylesheet" type="text/css" charset="utf-8" />
    <script src="Scripts/kalendae.js" type="text/javascript" charset="utf-8"></script>
    <script src="Scripts/J1_Journey.js" type="text/javascript"></script>
    <link href="Css/powerFloat.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/jquery-powerFloat.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function () {
            $("#trigger").powerFloat();
//            $("#trigger").powerFloat({
//                eventType: "hover",
//                reverseSharp: true
//                //targetMode: "remind",
//                //targetAttr: "txt"
//                //position: "1-4"
//            });
        })
    </script>
    
</head>
<body>
    <div id="dialog-form" title="请选择销售范围">
        <form>
        <div id="selectcallback"></div>
        <div>
        <a class="aselall" href="#" style="color: Blue; text-decoration: none;">全选</a>&nbsp
        <a class="anotselall" href="#" style="color: Blue; text-decoration: none;">全不选</a>
        </div>
        <div id="DialogDiv">
        </div>
        </form>
    </div>
    <div id="dialog-ok" title="提示">
        <form>
        <div>行程已经成功创建！<br />可以到产品列表中查看！</div>
        </form>
    </div>
    <form name="aspnetForm" id="aspnetForm">
    <!--method="post" action="Insert.aspx"-->
    <div class="GroupHeader">
        选择出团日期</div>
    <input id="txtDateSelected" name="txtDateSelected" type="hidden" />
    <script type="text/javascript">
        var k_multiSelect = new Kalendae({
            attachTo: "aspnetForm",
            months: 3,
            mode: 'multiple',
            direction: 'today-future'
        });
    </script>
    <div class="GroupHeader">
        基本信息</div>
    <div id="GroupBase">
        
        <p>
            行程天数：<input id="I_FDays" name="I_FDays" class="txtDesc" type="text" txt="行程天数" /><br />
        </p>
        <p>
            行程描述：<input id="I_FDesc" name="I_FDesc" type="text" class="txtDesc" style="width: 200px;" /><br />
        </p>
        <p>
            行程特色：<input id="I_Fcity" name="I_Fcity" type="text" class="txtDesc" style="width: 200px;" /><br />
        </p>
        <p>
            计划人数：<input id="I_Num" name="I_Num" type="text" class="txtPrice" style="width: 80px;" /><br />
        </p>
        <p>
            销售范围：<input id="I_FSaleScope" name="I_FSaleScope" readonly="readonly" type="text"
                class="txtDesc" style="width: 500px;" />&nbsp; <a class="addsalescope" href="#">添加范围</a></p>
    </div>
    <div class="GroupHeader">
        价格信息</div>
    <div id="GroupPrice">
        <p>
            价格类型：<select name="P_Style" class="P_Style" txt="价格类型">
                <option value="成人">成人</option>
                <option value="儿童">儿童</option>
            </select>&nbsp;&nbsp; 价格名称：<input type="text" txt="价格名称" name="P_Desc" class="txtDesc" />&nbsp;&nbsp;
            同业价格：<input type="text" txt="同业价格" name="P_Price2" isnull="false" class="txtPrice" />元&nbsp;&nbsp;
            门市价格：<input type="text" txt="门市价格" name="P_Price1" isnull="false" class="txtPrice" />元&nbsp;&nbsp;
            补房差：<input type="text" txt="补房差" name="P_LodgeDiff" class="txtPrice" />元&nbsp;&nbsp;
            &nbsp;&nbsp;<a class="addprice" href="#">增加</a>
        </p>
    </div>
    <div class="GroupHeader">
        集合时间地点</div>
    <div id="GroupJh">
        <p>
            <!--集合城市：<input type="text" txt="集合城市" name="Jh_City" class="txtDesc" />&nbsp;&nbsp;-->
            集合城市：<select name="I_FFrom" id="I_FFrom" class="txtSelect" style="width:53px;"></select>&nbsp;&nbsp;
            集合时间：<input type="text" txt="集合时间" name="Jh_Time" class="txtDesc" />&nbsp;&nbsp;
            集合地点：<input type="text" txt="集合地点" name="Jh_Place" class="txtDesc" />&nbsp;&nbsp;
            送站电话：<input type="text" txt="送站电话" name="Jh_Phone" class="txtDesc" />&nbsp;&nbsp;
            <a class="addjhinfo" href="#">增加</a>
        </p>
    </div>
    <div class="GroupHeader">
        行程描述</div>
    <div id="GroupJry">
        <p>
            第 <strong class="days">1</strong> 天&nbsp;&nbsp;&nbsp;&nbsp; 标题：<input txt="标题" name="J_FCaption"
                class="txtDesc" isnull="false" type="input">&nbsp;&nbsp;&nbsp;&nbsp; 住宿：<input txt="住宿"
                    name="J_FLodge" class="txtDesc" isnull="false" type="text">&nbsp;&nbsp;&nbsp;&nbsp;
            用餐：<select name="J_FDine" class="txtSelect" txt="用餐">
                <option value="">请选择</option>
                <option value="无">无</option>
                <option value="早">早餐</option>
                <option value="早中">早餐及中餐</option>
                <option value="早晚">早餐及晚餐</option>
                <option value="早中晚">早餐及中餐及晚餐</option>
                <option value="中">中餐</option>
                <option value="晚">晚餐</option>
                <option value="中晚">中餐及晚餐</option>
            </select><br>
            <textarea rows="5" name="J_FText" class="txtMemo" isnull="false"></textarea>
        </p>
    </div>
    <div class="GroupHeader">
        其它描述项</div>
    <div class="GroupContext">
        <p>
            费用包含&#9829：<br />
            <textarea rows="3" name="I_Fmemo5" class="txtMemo" isnull="false" style="width: 600px;"></textarea>
        </p>
        <p>
            费用不包含：<br />
            <textarea rows="3" name="I_Fmemo4" class="txtMemo" isnull="false" style="width: 600px;"></textarea>
        </p>
        <p>
            内部需知：<br />
            <textarea rows="3" name="I_Fmemo1" class="txtMemo" isnull="false" style="width: 600px;"></textarea>
        </p>
        <p>
            注意事项：<br />
            <textarea rows="3" name="I_Fmemo7" class="txtMemo" isnull="false" style="width: 600px;"></textarea>
        </p>
    </div>
    <div id="divbutton">
        <input id="InsertGroup" type="button" value="提交数据" /></div>
        <!--<input type="button" id="infobtn" value="提示" />-->
    <div id="hhhhh">
    </div>
    <br />
    <div id="result">
    </div>
    
    </form>
</body>
</html>
