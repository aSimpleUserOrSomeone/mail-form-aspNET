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
        }
        .auto-style5 {
            width: auto;
        }
        .centered {
            display: block;
            margin: auto;
        }
        #tbText {
            height: 200px;
        }
        #btnSend, #lblInfo1 {
            display: block;
            clear: both;
            margin: 5px auto 0 auto;
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
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">From</td>
                <td class="auto-style5">
                    <asp:TextBox ID="tbFrom" runat="server" CssClass="centered" Width="300px"></asp:TextBox>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">To</td>
                <td class="auto-style5">
                    <asp:TextBox ID="tbTo" runat="server" CssClass="centered" Width="300px"></asp:TextBox>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">Subject</td>
                <td class="auto-style5">
                    <asp:TextBox ID="tbSubject" runat="server" CssClass="centered" Width="300px"></asp:TextBox>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">Text</td>
                <td class="auto-style5">
                    <asp:TextBox ID="tbText" runat="server" CssClass="centered" Width="300px" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">Server SMTP</td>
                <td class="auto-style5">
                    <asp:TextBox ID="tbSMTP" runat="server" CssClass="centered" Width="300px"></asp:TextBox>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="btnSend" runat="server" Text="Send" OnClick="btnSend_Click" />
                    <asp:Label ID="lblInfo1" runat="server" Text="[Info 1]"></asp:Label>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">Attachments</td>
                <td class="auto-style5">
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="centered" Width="300px" />
                </td>
                <td class="auto-style4">
                    <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
                    <asp:ListBox ID="lbAttachments" runat="server" CssClass="centered" Height="120px" Width="300px"></asp:ListBox>
                    </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="lblInfo2" runat="server" Text="[Info 2]"></asp:Label>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
