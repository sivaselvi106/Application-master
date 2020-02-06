<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication.Login" MasterPageFile="~/app.Master" %>

<asp:Content ID="content1" ContentPlaceHolderID="Content" runat="server">
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
                </td>
            </tr>
            <tr>
                <td>Password</td>
                <td>
                    <asp:TextBox runat="server" ID="txtPassword" TextMode="password" BorderColor="skyblue"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button runat="server" ID="btnlogin" Text="Login" OnClick="BtnSendData_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="labelErrorMsg" runat="server" Text="Invalid mailId or password"></asp:Label>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
