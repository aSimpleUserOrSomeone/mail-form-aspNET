<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MailForm.aspx.cs" Inherits="mail_app.MailForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        form {
            min-width: 690px;
            max-width: 690px; 
            margin: auto;
            padding: 10px;

            font-family: Arial, Helvetica, sans-serif;
            --main: #E3BC20;
            --border: #63520E;
            --light: #E8CE66;
            --dark: #63582C;

            background-color: var(--main);
            border-radius: 15px;
            border: 4px solid var(--border);
            box-shadow: 0 5px 28px 4px var(--dark);
        }
        
        input[type=email], input[type=text], textarea, select {
            padding: 3px;
            border: 3px solid var(--dark);
            border-radius: 3px;

            transition: 0.55s box-shadow;
            box-shadow: inset 0 0 5px initial;
        }
        input[type=email]:focus, input[type=text]:focus, textarea:focus, select:focus {
            box-shadow: inset 0 0 4px 4px var(--light)
        }

        input[type=submit] {
            background-color: var(--dark);
            color: white;
            padding: 4px;
            border: 3px solid var(--dark);
            border-radius: 6px;

            transition: 0.5s background-color, 0.5s color;
        }
        input[type=submit]:hover {
            background-color: var(--light);
            color: black;
            padding: 4px;
            border: 3px solid var(--dark);
            border-radius: 6px;
        }
        
        .grid-parent {
           display: grid; 

           grid-template-rows: auto auto auto auto auto auto auto auto auto auto auto auto;
           grid-template-columns: 1fr 400px 1fr;
   
           gap: 20px;
           height: 100%;
        }
        
        .grid-parent > div {
            display: flex;
            align-items: center;
        }
        .grid-parent > div:nth-child(3n-2) {
            justify-content: flex-end;
        }
        .grid-parent > div:nth-child(3n-1) {
            justify-content: center;
        }
        .grid-parent > div:nth-child(3n) {
            justify-content: flex-start;
        }

        input[type=text],
        input[type=email]{
            width: 80%;
        }

        textarea {
            width: 100%;
            resize: vertical;
            min-height: 48px;
            max-height: 330px;
        }
        #form1 > div.grid-parent > div:nth-child(17) {
            gap: 5px;

        }
        #form1 > div.grid-parent > div:nth-child(26) {
            flex-direction: column;
            gap: 15px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="grid-parent">
        <div></div><div><asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" /></div><div></div>
        <div>From</div><div><asp:TextBox ID="tbFrom" runat="server" TextMode="Email" ></asp:TextBox></div><div></div>
        <div>To</div><div><asp:TextBox ID="tbTo" runat="server" TextMode="Email" ></asp:TextBox></div><div></div>
        <div>Subject</div><div><asp:TextBox ID="tbSubject" runat="server" >Topic, oh my topic!</asp:TextBox></div><div></div>
        <div>Text</div><div><asp:TextBox ID="tbText" runat="server" TextMode="MultiLine">Some text i want to share!</asp:TextBox></div><div></div>
        <div>Server SMTP</div><div>
                    <asp:TextBox ID="tbSMTP" runat="server" Enabled="False">smtp.gmail.com</asp:TextBox>
                    <asp:Label ID="lblPort" runat="server" Text="Port:" Enabled="False"></asp:Label>
                    <asp:TextBox ID="tbPort" runat="server" Enabled="False">587</asp:TextBox>
        </div>
        <div>
                    <asp:RadioButtonList ID="rblSMTP" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rblSMTP_SelectedIndexChanged">
                        <asp:ListItem Selected="True">localhost</asp:ListItem>
                        <asp:ListItem>authenticated</asp:ListItem>
                    </asp:RadioButtonList>

        </div>
        <div>User</div><div><asp:TextBox ID="tbUser" runat="server" Width="200px">Your full mail</asp:TextBox></div><div></div>
        <div>Password</div><div><asp:TextBox ID="tbPassword" runat="server" Width="200px">Email password</asp:TextBox></div><div></div>
        <div></div><div>
            <asp:Button ID="btnSend" runat="server" Text="Send" OnClick="btnSend_Click" />
            <asp:Label ID="lblInfo1" runat="server" Text="[Info 1]"></asp:Label>
        </div><div></div>
        <div>Attachments</div><div><asp:FileUpload ID="FileUpload1" runat="server" CssClass="centered" Width="300px" /></div><div><asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" /></div>
        <div></div><div>
            <asp:ListBox ID="lbAttachments" runat="server" CssClass="centered" Height="120px" Width="300px"></asp:ListBox>
        </div><div></div>
        <div></div><div><asp:Label ID="lblInfo2" runat="server" Text="[Info 2]"></asp:Label></div><div></div>
    </div>
    </form>
</body>
</html>
