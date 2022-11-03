using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
using System.Collections;
using System.IO;

namespace mail_app
{
    public partial class MailForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            tbFrom.Text = "";
            tbTo.Text = "";
            tbSubject.Text = "";
            tbText.Text = "";
            tbSMTP.Text = "";
            lblInfo1.Text = "";
            lbAttachments.Items.Clear();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if(FileUpload1.HasFile)
            {
                string fileName = FileUpload1.FileName;
                string serverPath = Server.MapPath("~/") + fileName;
                FileUpload1.SaveAs(serverPath);
                lbAttachments.Items.Add(fileName);
                lblInfo1.Text = "Attachment downloaded";
            }
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            SmtpClient client;
            MailMessage message;
            ArrayList attachmentList = new ArrayList();
            try
            {
                message = new MailMessage(tbFrom.Text, tbTo.Text);
                message.Subject = tbSubject.Text;
                message.Body = tbText.Text;

                if(rblSMTP.SelectedValue == "localhost")
                {
                    client = new SmtpClient("127.0.0.1", 25);
                    client.Credentials = CredentialCache.DefaultNetworkCredentials;
                } else
                {
                    client = new SmtpClient(tbSMTP.Text, int.Parse(tbPort.Text));
                    client.UseDefaultCredentials = false;
                    client.EnableSsl = false;
                    client.Credentials = new System.Net.NetworkCredential(tbUser.Text, tbPassword.Text);
                }
                
                for (int i = 0; i < lbAttachments.Items.Count; i++)
                {
                    Attachment attachment = new Attachment(Server.MapPath("~/") + lbAttachments.Items[i].ToString());
                    message.Attachments.Add(attachment);
                    attachmentList.Add(attachment);
                }
                client.Send(message);
                lblInfo1.Text = "Message sent";
                for (int i = 0; i < attachmentList.Count; i++)
                {
                    ((Attachment)attachmentList[i]).Dispose();
                }
                for (int i = 0; i < lbAttachments.Items.Count; i++)
                {
                    File.Delete(Server.MapPath("~/") + lbAttachments.Items[i].ToString());
                }
                lbAttachments.Items.Clear();

            }
            catch (Exception ex)
            {
                lblInfo1.Text = "You can not send messages (" + ex.Message + ")";
            }
        }

        protected void rblSMTP_SelectedIndexChanged(object sender, EventArgs e)
        {
            tbSMTP.Enabled = !tbSMTP.Enabled;
            lblPort.Enabled = !lblPort.Enabled;
            tbPort.Enabled = !tbPort.Enabled;
        }
    }
}