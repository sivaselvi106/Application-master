<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="WebApplication.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SignUp page</title>
</head>
<body>
    <form id="SignUpForm" runat="server">
        <div>
            <table align ="center">
                <tr>
                    <td colspan="2">
                        <h2 style="text-align: center; color: deepskyblue;">Welcome to sign up page</h2>
                    </td>
                </tr>
                <tr>
                    <td>Username</td>
                    <td>
                        <asp:TextBox runat="server" ID="txtUsername" BorderColor="skyblue"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="UsernameValidator" runat="server" ErrorMessage="Username is required" ControlToValidate="txtUserName"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Mail ID</td>
                    <td>
                        <asp:TextBox runat="server" ID="txtMailID" BorderColor="skyblue"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="MailIdValidator" runat="server" ErrorMessage="MailId is required" ControlToValidate="txtMailID"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td>
                        <asp:TextBox runat="server" ID="txtPassword" BorderColor="skyblue"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="PasswordValidator" runat="server" ErrorMessage="Password is required" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Age</td>
                    <td>
                        <asp:TextBox runat="server" ID="txtAge" BorderColor="skyblue"></asp:TextBox>
                         <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Age must be between 1 and 120" ControlToValidate="txtAge" MinimumValue="1" MaximumValue="120"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td>MobNo</td>
                    <td>
                        <asp:TextBox runat="server" ID="txtMobNo" BorderColor="skyblue" ></asp:TextBox>
                        <asp:RangeValidator ID="MobNoRangeValidator" runat="server" ErrorMessage="MobNo must be valid" ControlToValidate="txtMobNo" MinimumValue="9998765499" MaximumValue="7543558886"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td>State</td>
                    <td>
                        <asp:DropDownList runat="server" ID="StateDropDownList">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Country</td>
                    <td>
                        <asp:DropDownList runat="server" ID="CountryDropDownList">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center;">
                        <asp:Button runat="server" ID="btnSignUp" Text="Signup" OnClick="BtnSendData_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
