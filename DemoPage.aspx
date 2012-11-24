﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DemoPage.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-1.8.0.js" type="text/javascript"></script>
    <link href="Css/jquery.ui.all.css" rel="stylesheet" type="text/css" />
    <link href="Css/powerFloat.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/jquery.ui.widget.js" type="text/javascript"></script>
    <script src="Scripts/jquery.ui.tabs.js" type="text/javascript"></script>
    <script src="Scripts/jquery.ui.core.js" type="text/javascript"></script>
    <script src="Scripts/jquery-powerFloat.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function () {
            $("#tabs").tabs();
            $("#trigger").powerFloat({ 
                reverseSharp: true,
                position: "7-5",
                edgeAdjust: false

                }
            );
        });
	    
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <%--<a id="trigger" href="#" rel="targetBox">经过我</a>--%>
        <div id="tabs">
            <ul>
                <li><a href="#tabs-1">Nunc tincidunt</a></li>
                <li><a href="#tabs-2">Proin dolor</a></li>
                <li><a href="#tabs-3">Aenean lacinia</a></li>
            </ul>
            <div id="tabs-1">
                <p>
                    Proin elit arcu, rutrum commodo, vehicula tempus, commodo a, risus. Curabitur nec
                    arcu. Donec sollicitudin mi sit amet mauris. Nam elementum quam ullamcorper ante.
                    Etiam aliquet massa et lorem. Mauris dapibus lacus auctor risus. Aenean tempor ullamcorper
                    leo. Vivamus sed magna quis ligula eleifend adipiscing. Duis orci. Aliquam sodales
                    tortor vitae ipsum. Aliquam nulla. Duis aliquam molestie erat. Ut et mauris vel
                    pede varius sollicitudin. Sed ut dolor nec orci tincidunt interdum. Phasellus ipsum.
                    Nunc tristique tempus lectus.</p>
            </div>
            <div id="tabs-2">
                <p>
                    Morbi tincidunt, dui sit amet facilisis feugiat, odio metus gravida ante, ut pharetra
                    massa metus id nunc. Duis scelerisque molestie turpis. Sed fringilla, massa eget
                    luctus malesuada, metus eros molestie lectus, ut tempus eros massa ut dolor. Aenean
                    aliquet fringilla sem. Suspendisse sed ligula in ligula suscipit aliquam. Praesent
                    in eros vestibulum mi adipiscing adipiscing. Morbi facilisis. Curabitur ornare consequat
                    nunc. Aenean vel metus. Ut posuere viverra nulla. Aliquam erat volutpat. Pellentesque
                    convallis. Maecenas feugiat, tellus pellentesque pretium posuere, felis lorem euismod
                    felis, eu ornare leo nisi vel felis. Mauris consectetur tortor et purus.</p>
            </div>
            <div id="tabs-3">
                <p>
                    Mauris eleifend est et turpis. Duis id erat. Suspendisse potenti. Aliquam vulputate,
                    pede vel vehicula accumsan, mi neque rutrum erat, eu congue orci lorem eget lorem.
                    Vestibulum non ante. Class aptent taciti sociosqu ad litora torquent per conubia
                    nostra, per inceptos himenaeos. Fusce sodales. Quisque eu urna vel enim commodo
                    pellentesque. Praesent eu risus hendrerit ligula tempus pretium. Curabitur lorem
                    enim, pretium nec, feugiat nec, luctus a, lacus.</p>
                <p>
                    Duis cursus. Maecenas ligula eros, blandit nec, pharetra at, semper at, magna. Nullam
                    ac lacus. Nulla facilisi. Praesent viverra justo vitae neque. Praesent blandit adipiscing
                    velit. Suspendisse potenti. Donec mattis, pede vel pharetra blandit, magna ligula
                    faucibus eros, id euismod lacus dolor eget odio. Nam scelerisque. Donec non libero
                    sed nulla mattis commodo. Ut sagittis. Donec nisi lectus, feugiat porttitor, tempor
                    ac, tempor vitae, pede. Aenean vehicula velit eu tellus interdum rutrum. Maecenas
                    commodo. Pellentesque nec elit. Fusce in lacus. Vivamus a libero vitae lectus hendrerit
                    hendrerit.</p>
            </div>
        </div>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />

        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Button" />

        <input id="trigger" type="text" rel="targetBox" style=" margin:100px 100px;"/>
        <div id="targetBox" style=" display: none; background-color: #FFF8ED; border: #FF9900 1px solid;">
            jklfsdjfk　 　 </div>

    </div>
    </form>
</body>
</html>
