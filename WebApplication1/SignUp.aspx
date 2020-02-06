<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="WebApplication.SignUp" MasterPageFile="~/app.Master"%>
<asp:Content ID="content1" ContentPlaceHolderID="Content" runat="server">
        <div>
            <table align="center">
                <tr>
                    <td colspan="2">
                        <h2 style="text-align: center; color: deepskyblue;">Welcome to sign up page</h2>
                    </td>
                </tr>
                <tr>
                    <td>Username</td>
                    <td>
                        <asp:TextBox runat="server" ID="txtUsername" BorderColor="skyblue"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="UsernameValidator" forecolor="red" runat="server" ErrorMessage="Username is required" ControlToValidate="txtUserName"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Mail ID</td>
                    <td>
                        <asp:TextBox runat="server" ID="txtMailID" BorderColor="skyblue" TextMode="Email"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="MailIdValidator" forecolor="red" runat="server" ErrorMessage="MailId is required" ControlToValidate="txtMailID"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td>
                        <asp:TextBox runat="server" ID="txtPassword" BorderColor="skyblue" TextMode="password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="PasswordValidator" forecolor="red" runat="server" ErrorMessage="Password is required" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Age</td>
                    <td>
                        <asp:TextBox runat="server" ID="txtAge" BorderColor="skyblue"></asp:TextBox>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" forecolor="red" Type="Integer" ErrorMessage="Age must be between 1 and 120" ControlToValidate="txtAge" MinimumValue="1" MaximumValue="120"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td>MobNo</td>
                    <td>
                        <asp:TextBox runat="server" ID="txtMobNo" BorderColor="skyblue"></asp:TextBox>
                        <asp:RangeValidator ID="MobNoRangeValidator" runat="server" forecolor="red" ErrorMessage="MobNo must be valid" ControlToValidate="txtMobNo" MinimumValue="7543558886" MaximumValue="9998765499"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td>State</td>
                    <td>
                        <asp:DropDownList runat="server" ID="StateDropDownList">
                            <asp:ListItem Value="">Please select</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator runat="server" forecolor="red" ErrorMessage="State is required" ControlToValidate="StateDropDownList"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Country</td>
                    <td>
                        <asp:DropDownList runat="server" ID="CountryDropDownList">
                            <asp:ListItem Value="">Please select</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator runat="server" ForeColor="red" ErrorMessage="Country is required" ControlToValidate="CountryDropDownList"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnSignUp" runat="server" Text="Signup" OnClick="BtnSendData_Click" />
                    </td>
                    <td>
                        <input id="Reset" type="reset" value="reset" /></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:HyperLink ID="LoginHyperLink" Text="Login" runat="server" NavigateUrl="https://localhost:44362/Login.aspx"></asp:HyperLink>
                    </td>
                </tr>
            </table>
        </div>
</asp:Content>