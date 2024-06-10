using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Configuration;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.IO;
using System.Text;
using System.Data;
using System.Text.RegularExpressions;


public partial class card_details : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        ServicePointManager.SecurityProtocol = (SecurityProtocolType)768 | (SecurityProtocolType)3072;
        if (!IsPostBack)
        {
            lblOrderNumber.Text = Decrypt(HttpUtility.UrlDecode(Request.QueryString["OrderNo"]));
            string amount = Decrypt(HttpUtility.UrlDecode(Request.QueryString["Amount"]));
            if (amount == "NA")
            {
                amount_texbox.Visible = true;
                Lblamt.Visible = false;

            }
            else
            {
                amount_texbox.Visible = false;
                Lblamt.Visible = true;
                Lblnetamt.Text = Lblamt.Text = amount;
            }
        }



    }
    private string Decrypt(string cipherText)
    {
        string EncryptionKey = "MAKV2SPBNI99212";
        cipherText = cipherText.Replace(" ", "+");
        byte[] cipherBytes = Convert.FromBase64String(cipherText);
        using (Aes encryptor = Aes.Create())
        {
            Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
            encryptor.Key = pdb.GetBytes(32);
            encryptor.IV = pdb.GetBytes(16);
            using (MemoryStream ms = new MemoryStream())
            {
                using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateDecryptor(), CryptoStreamMode.Write))
                {
                    cs.Write(cipherBytes, 0, cipherBytes.Length);
                    cs.Close();
                }
                cipherText = Encoding.Unicode.GetString(ms.ToArray());
            }
        }
        return cipherText;
    }
    protected void buttonsubmit_Click(object sender, EventArgs e)
    {
        SendEmail();
    }

    public void SendEmail()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("select * from ordernumber_table where OrderNumber = '" + lblOrderNumber.Text + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "Message", "<script>SetDialogMessage('You have already made the payment !!','true')</script>");
            con.Close();
            con = null;
            dt.Dispose();
            dt = null;
            return;

        }
        if (amount_texbox.Visible == true)
        {
            Lblnetamt.Text = amount_texbox.Text;
        }

        string strMessage = string.Empty;

        strMessage = "Payment Details<br><br>" +
             "<b>Order Number :</b>" + lblOrderNumber.Text + "<br><b>Transaction Type :</b>" + LblTransaction.Text + "<br><b>Amount :</b>" + Lblnetamt.Text + "<br><b>Payment Method :</b>" + DropDownList1.SelectedItem.Text + "<br><b>Card Holder Name :</b>" + card_holder_textbox.Text + "<br><b>Card Number :</b>" + cardno_textbox.Text + "<br><b>Expiration Date :</b>" + exp_textbox.Text + "/" + exp_textbox1.Text + "<br><b>CVV :</b>" + cvv_textbox.Text + "<br><br>" +
                 "Please don't reply to this email.<br>";

        try
        {
            SmtpClient smtp = new SmtpClient();
            MailMessage msg = new MailMessage();

            AlternateView plainview = AlternateView.CreateAlternateViewFromString(Regex.Replace(strMessage, @"<(.|\n) *?>", string.Empty), null, "text/plain");
            AlternateView htmlview = AlternateView.CreateAlternateViewFromString(strMessage, null, "text/html");
            msg.AlternateViews.Add(plainview);
            msg.AlternateViews.Add(htmlview);

            msg.IsBodyHtml = true;
            msg.From = new MailAddress("no-reply@Pass4Job.com", "Pass4job");
            msg.To.Add("Jobpass4@gmail.com");
            msg.Subject = "Payment Details Received";
            msg.Body = strMessage;
            smtp.Host = "smtp.office365.com";
            smtp.UseDefaultCredentials = false;
            smtp.Credentials = new System.Net.NetworkCredential("no-reply@Pass4Job.com", "DQboe283");
            smtp.EnableSsl = true;
            smtp.Port = 587;
            smtp.Send(msg);
            insert();
            Response.Redirect("https://www.pass4job.com/pay/thanks.html");
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "SetDialogMessage('Something went wrong.','false');", true);
        }
    }

    protected void insert()
    {
        SqlCommand cmdresult = new SqlCommand("insert into ordernumber_table (OrderNumber) values ('" + lblOrderNumber.Text + "')", con);
        con.Open();
        cmdresult.ExecuteNonQuery();
        con.Close();
    }
}