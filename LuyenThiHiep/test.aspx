<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="LuyenThiHiep.test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="btnLogin_Click" />
        <input type="button" runat="server" value="Tạo tài khoản" onserverclick="btnLogin_Click" />
        <input id="btnDangki" style="width: 95%; text-align: center" runat="server" type="submit" value="Tạo tài khoản" onserverclick="btnLogin_Click" />
    </div>
    </form>
</body>
</html>
