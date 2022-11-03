<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MailForm.aspx.cs" Inherits="mail_app.MailForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #lblInfo1, #lblInfo2 {
            text-align: center;
            width: 100%;
            margin: auto;
        }
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            width: 150px;
            text-align: right;
        }
        .auto-style5 {
            width: auto;
            text-align: center;
        }
        .centered {
            display: block;
            margin: auto;
        }
        #tbText {
            height: 200px;
            resize: vertical;
        }
        #btnSend, #lblInfo1 {
            display: block;
            clear: both;
            margin: 5px auto 0 auto;
        }
        .auto-style6 {
            width: auto;
            text-align: center;
            height: 70px;
        }
        .auto-style7 {
            width: 150px;
            height: 70px;
            text-align: right;
        }
        .auto-style8 {
            width: 150px;
            height: 30px;
            text-align: right;
        }
        .auto-style9 {
            width: auto;
            text-align: center;
            height: 30px;
        }
        .auto-style10 {
            width: 150px;
            height: 210px;
            text-align: right;
        }
        .auto-style11 {
            width: auto;
            height: 210px;
            text-align: center;
        }
        .auto-style12 {
            width: 150px;
            text-align: left;
        }
        .auto-style13 {
            width: 150px;
            height: 30px;
            text-align: left;
        }
        .auto-style14 {
            width: 150px;
            height: 70px;
            text-align: left;
        }
        .auto-style15 {
            width: 150px;
            height: 210px;
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table align="center" class="auto-style3">
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="centered" OnClick="btnClear_Click" />
                </td>
                <td class="auto-style12">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">From</td>
                <td class="auto-style5">
                    <asp:TextBox ID="tbFrom" runat="server" CssClass="centered" Width="300px" TextMode="Email"></asp:TextBox>
                </td>
                <td class="auto-style12">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">To</td>
                <td class="auto-style5">
                    <asp:TextBox ID="tbTo" runat="server" CssClass="centered" Width="300px" TextMode="Email"></asp:TextBox>
                </td>
                <td class="auto-style12">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">Subject</td>
                <td class="auto-style5">
                    <asp:TextBox ID="tbSubject" runat="server" CssClass="centered" Width="300px">Topic, oh my topic!</asp:TextBox>
                </td>
                <td class="auto-style12">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">Text</td>
                <td class="auto-style11">
                    <asp:TextBox ID="tbText" runat="server" CssClass="centered" Width="300px" TextMode="MultiLine">Some text i want to share!</asp:TextBox>
                </td>
                <td class="auto-style15"></td>
            </tr>
            <tr>
                <td class="auto-style7">Server SMTP</td>
                <td class="auto-style6">
                    <asp:TextBox ID="tbSMTP" runat="server" Width="150px" Enabled="False">smtp.gmail.com</asp:TextBox>
                    <asp:Label ID="lblPort" runat="server" Text="Port:" Enabled="False"></asp:Label>
                    <asp:TextBox ID="tbPort" runat="server" Width="90px" Enabled="False">587</asp:TextBox>
                </td>
                <td class="auto-style14">
                    <asp:RadioButtonList ID="rblSMTP" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rblSMTP_SelectedIndexChanged">
                        <asp:ListItem Selected="True">localhost</asp:ListItem>
                        <asp:ListItem>authenticated</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">User</td>
                <td class="auto-style9">
                    <asp:TextBox ID="tbUser" runat="server" Width="200px">Your full mail</asp:TextBox>
                </td>
                <td class="auto-style13"></td>
            </tr>
            <tr>
                <td class="auto-style8">Password</td>
                <td class="auto-style9">
                    <asp:TextBox ID="tbPassword" runat="server" Width="200px">Email password</asp:TextBox>
                </td>
                <td class="auto-style13"></td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="btnSend" runat="server" Text="Send" OnClick="btnSend_Click" />
                    <asp:Label ID="lblInfo1" runat="server" Text="[Info 1]"></asp:Label>
                </td>
                <td class="auto-style12">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">Attachments</td>
                <td class="auto-style5">
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="centered" Width="300px" />
                </td>
                <td class="auto-style12">
                    <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
                    <asp:ListBox ID="lbAttachments" runat="server" CssClass="centered" Height="120px" Width="300px"></asp:ListBox>
                    </td>
                <td class="auto-style12">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="lblInfo2" runat="server" Text="[Info 2]"></asp:Label>
                </td>
                <td class="auto-style12">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
