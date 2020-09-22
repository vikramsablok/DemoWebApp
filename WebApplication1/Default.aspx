<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Default.aspx.vb" Inherits="WebApplication1._Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function ShowTime() {
            var dt = new Date();
            document.getElementById("<%= TextBox2.ClientID %>").value = dt.toLocaleTimeString();
            window.setTimeout("ShowTime()", 1000);
        }
</script>
    <script src="JavaScript.js"></script>
</head>
<body onload="CoolClock.findAndCreateClocks()">
    <form id="form1" runat="server">
        <div>
            This is a test form 2020/09/21
        </div>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <canvas id="clk1" class="CoolClock:fancy myClock"></canvas>
    </form>
</body>
</html>
