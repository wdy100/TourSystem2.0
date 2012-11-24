<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FormOrderEdit.aspx.cs" Inherits="DemoHtml" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="Scripts/jquery-1.8.0.min.js" type="text/javascript"></script>
    <script src="Scripts/jquery-ui-1.8.23.custom.min.js" type="text/javascript"></script>

    <title></title>
    <link href="Css/gridview.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        function DoConfChg(AOrderNo, SysId, Flag) {
            var strurl = "Ashx/FormOrderCheck.ashx?OrderNo=" + AOrderNo + "&NewDateTime=&ButtonId=2&SysId=" + SysId + "&Flag=" + Flag;
            var strQuestion = (Flag == "1") ? "确定将该订单变更生效吗？" : "确定拒绝该订单变更吗？";

            if (confirm(strQuestion)) {
                $.ajax({
                    type: "POST",
                    url: strurl,
                    success: function (rtnData) {
                        alert(rtnData);
                        var s = "FormOrderEdit.ashx?OrderNo=" + AOrderNo + "&SysId=" + SysId + "&Flag=" + Flag;
                        $.ajax({
                            type: "POST",
                            url: s,
                            success: function (rtnData) {
                                alert(rtnData);
                            }
                        });
                    }
                });
            }
        }
    </script>

    <%--<script src="Scripts/J1_OrderList.js" type="text/javascript"></script>--%>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table class="table1">
            <tr>
                <td>
                    <span class="fontbold">订单编号：</span><%=Order.FNo%>
                </td>
                <td>
                    <span class="fontbold">行程描述：</span><%=Order.FItemNo %>
                </td>
                <td>
                    <span class="fontbold">出团日期：</span><%=String.Format("{0:yyyy-MM-dd}",Order.FDate) %>
                </td>
            </tr>
            <tr>
                <td>
                    <span class="fontbold">旅游天数：</span><%=Order.FDays %>
                </td>
                <td>
                    <span class="fontbold">集合时间：</span><%=Order.FJhTime %>
                </td>
                <td>
                    <span class="fontbold">集合地点：</span><%=Order.FJhplace %>
                </td>
            </tr>
            <tr>
                <td>
                    <span class="fontbold">门市名称：</span><%=Order.FCtName %>
                </td>
                <td>
                    <span class="fontbold">经办人员：</span><%=Order.FOpName %>
                </td>
            </tr>
        </table>
        <div id="demodiv"></div>
    </div>
    <div id="detailtab">
    <ul>
        <li><a href="#tabs-0">历次变更</a></li>
        <li><a href="#tabs-1">结算价格</a></li>
        <li><a href="#tabs-2">客人名单</a></li>
        <li><a href="#tabs-3">行程安排</a></li>
    </ul>
    <div id="tabs-0">
        <asp:GridView ID="gvChangeDtl" runat="server" AutoGenerateColumns="False" 
            CssClass="commonTable" EnableViewState="False" BorderWidth="0px" 
            GridLines="Horizontal" EnableModelValidation="True" 
            onrowdatabound="gvChangeDtl_RowDataBound">
            <AlternatingRowStyle CssClass="alt" />
            <Columns>
                <asp:BoundField DataField="FChgCount" HeaderText="变更次数" ItemStyle-Width="55px" >
                </asp:BoundField>
                <asp:BoundField DataField="FChgDesc" HeaderText="变更内容" ItemStyle-Width="200px"/>
                <asp:BoundField DataField="FCreate" HeaderText="提交时间" ItemStyle-Width="130px" >
                </asp:BoundField>
                <asp:TemplateField HeaderText="变更人数" ItemStyle-Width="60px">
                    <ItemTemplate>
                        <%#(Eval("FNum1").ToString().Equals("0") && Eval("FNum2").ToString().Equals("0"))?"0":Eval("FNum1")+"大"+Eval("FNum2")+"小"%>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="FAmt" HeaderText="变更金额" DataFormatString="{0:0.00}" ItemStyle-Width="80px"/>
                <asp:BoundField DataField="FStatus" HeaderText="确认状态" ItemStyle-Width="60px"/>
                <asp:BoundField DataField="FDateTime" HeaderText="确认时间" ItemStyle-Width="130px"/>
                <asp:TemplateField HeaderText="操作">
                    <ItemTemplate>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>  
    
    </div>
    <div id="tabs-1">
        <asp:GridView ID="gvPriceDtl" runat="server" AutoGenerateColumns="False" 
            CssClass="commonTable" EnableViewState="False" BorderWidth="0px" 
            GridLines="Horizontal" EnableModelValidation="True">
            <Columns>
                <asp:BoundField DataField="FType" HeaderText="价格类型" ItemStyle-Width="80px" />
                <asp:BoundField DataField="FDesc" HeaderText="价格名称" ItemStyle-Width="142px" />
                <asp:BoundField DataField="FPrice1" HeaderText="销售单价" ItemStyle-Width="100px" DataFormatString="{0:0.00}" />
                <asp:BoundField DataField="FNum" HeaderText="报名人数" ItemStyle-Width="80px" />
                <asp:BoundField DataField="FDiffAmt" HeaderText="补房差" ItemStyle-Width="100px" DataFormatString="{0:0.00}"/>
                <asp:BoundField DataField="FDisc" HeaderText="补差价" ItemStyle-Width="100px" DataFormatString="{0:0.00}"/>
                <asp:BoundField DataField="FAmt" HeaderText="金额合计" DataFormatString="{0:0.00}"/>
            </Columns>
        </asp:GridView>
        <br />
        
        <table class="commonTable">
        <asp:Repeater ID="rpChangePrice" runat="server">
        <ItemTemplate> 
            <%# Container.DataItem %>
        </ItemTemplate> 
        </asp:Repeater>        
        </table>  
        <strong>合计：</strong>&nbsp;&nbsp;总人数：<%=Order.Ftnum %>人&nbsp;&nbsp;总应收：<%=Order.Ftamt %>元 
    </div>
    <div id="tabs-2">
        <p class="fontbold">有效的报名人员名单</p>
        <asp:GridView ID="gvCustomers" runat="server" AutoGenerateColumns="False" 
            CssClass="commonTable" EnableViewState="False" BorderWidth="0px" 
            GridLines="Horizontal">
            <AlternatingRowStyle CssClass="alt" />
            <Columns>
                <asp:BoundField DataField="FName" HeaderText="姓名" />
                <asp:BoundField DataField="FSex" HeaderText="性别" />
                <asp:BoundField DataField="FCard" HeaderText="身份证号码" />
                <asp:BoundField DataField="FTel2" HeaderText="联系电话" />
                <asp:BoundField DataField="FDate" HeaderText="编辑时间" />
            </Columns>
        </asp:GridView>  
        <p class="fontbold">被取消的人员名单</p>
        <asp:GridView ID="gvCustomerCancel" runat="server" AutoGenerateColumns="False" 
            CssClass="commonTable" EnableViewState="False" BorderWidth="0px" 
            GridLines="Horizontal" RowStyle-CssClass="fontthrough">
            <AlternatingRowStyle CssClass="alt" />
            <Columns>
                <asp:BoundField DataField="FName" HeaderText="姓名" />
                <asp:BoundField DataField="FSex" HeaderText="性别" />
                <asp:BoundField DataField="FCard" HeaderText="身份证号码" />
                <asp:BoundField DataField="FTel2" HeaderText="联系电话" />
                <asp:BoundField DataField="FDate" HeaderText="编辑时间" />
            </Columns>
        </asp:GridView>  
          
    </div>
    <div id="tabs-3">
        <table class="commonTable">
        <asp:Repeater ID="rpTour" runat="server" EnableViewState="False">
        <ItemTemplate> 
            <%# Container.DataItem %>
        </ItemTemplate> 
        </asp:Repeater>        
        </table>
    </div>
</div>
    <input type="hidden" id="chgno" value="<%=Order.FChgCount %>" />
    <input type="hidden" id="checkstatus" value="<%=Order.FCheckLevel %>" />
    <input type="hidden" id="changestatus" value="<%=Order.FChgStatus %>" />
    <input type="hidden" id="ylend" value="<%=String.Format("{0:yyyy-MM-dd HH:mm:ss}", Order.FYlEnd)%>" />
    </form>
</body>
</html>
