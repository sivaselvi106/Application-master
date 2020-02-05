<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
</head>
<body>
    <form id="Loginform" runat="server">
        <div>
            <table style="width: 100%;">
                <tr>
                    <td colspan="2" style="color: deepskyblue;">
                        <h2 style="text-align: center;">Welcome to login page</h2>
                    </td>
                </tr>
                <tr>
                    <td>MailID</td>
                    <td>
                        <asp:TextBox runat="server" ID="txtMailId" BorderColor="skyblue"></asp:TextBox>
                        <!-- <asp:RequiredFieldValidator ID="UsernameValidator" runat="server" ErrorMessage="Username is required" ControlToValidate="txtUserName"></asp:RequiredFieldValidator> -->
                    </td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td>
                        <asp:TextBox runat="server" ID="txtPassword" BorderColor="skyblue"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button runat="server" ID="btnlogin" Text="Login" OnClick="BtnSendData_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" >
                        <asp:Label ID="labelErrorMsg" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
