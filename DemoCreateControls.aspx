<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DemoCreateControls.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
<form id="form1" runat="server">
    <div>
        <br />
        <table border="0" cellpadding="0" cellspacing="0" style="width: 400px; height: 134px">
            <tr>
                <td class="tabnotop"  style="height: 18px">
        <asp:Table ID="Table1" runat="server" CellPadding="0" CellSpacing="0" Height="56px"
            Width="142px" BorderWidth="1px">
        </asp:Table>
                </td>
            </tr>
            <tr>
                <td style="height: 29px; text-align: center">
                    <asp:Button ID="Button1" runat="server" CssClass="btnew" OnClick="Button1_Click"
                        Text="确定" /></td>
            </tr>
        </table>
        <asp:Label ID="LabelMsg" runat="server"></asp:Label><br />
        &nbsp;<br />
    
    </div>
    </form>
</body>
</html>
