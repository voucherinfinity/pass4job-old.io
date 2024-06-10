using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;
using System.Security.Cryptography;
using System.IO;
using System.Text.RegularExpressions;

public partial class amountpage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ServicePointManager.SecurityProtocol = (SecurityProtocolType)768 | (SecurityProtocolType)3072;
        if (!IsPostBack)
        {

            if (Session["username"] == null && Session["password"] == null)
            {
                Response.Redirect("https://www.pass4job.com/pay/login.aspx");
                return;
            }
            Registrationid();
        }

    }
    protected void Registrationid()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        con.Open();
        string sqlQuery = "SELECT TOP 1 code from ordernumber1_table order by code desc";
        SqlCommand cmd = new SqlCommand(sqlQuery, con);
        SqlDataReader dr = cmd.ExecuteReader();

        while (dr.Read())
        {
            string input = dr["code"].ToString();
            int number = Convert.ToInt32(input);
            number += 1;
            order_texbox.Text = number.ToString("0000");


        }
        con.Close();

    }
    private string Encrypt(string clearText)
    {
        string EncryptionKey = "MAKV2SPBNI99212";
        byte[] clearBytes = Encoding.Unicode.GetBytes(clearText);
        using (Aes encryptor = Aes.Create())
        {
            Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
            encryptor.Key = pdb.GetBytes(32);
            encryptor.IV = pdb.GetBytes(16);
            using (MemoryStream ms = new MemoryStream())
            {
                using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateEncryptor(), CryptoStreamMode.Write))
                {
                    cs.Write(clearBytes, 0, clearBytes.Length);
                    cs.Close();
                }
                clearText = Convert.ToBase64String(ms.ToArray());
            }
        }
        return clearText;
    }
    protected void Send_Button_Click(object sender, EventArgs e)
    {
        
        SendEmail();
    }

    public void SendEmail()
    {
        if (amout_textbox.Text == "")
        {
            amout_textbox.Text = "NA";
        }

        string strMessage = string.Empty;

        strMessage = "Dear " + client_textbox.Text + ", <br><br>" +
                "Here's the link for payment.<br><br>" +
                "<a href=\"https://www.pass4job.com/pay/card-details.aspx?OrderNo=" + HttpUtility.UrlEncode(Encrypt(this.order_texbox.Text)) + "&Amount=" + HttpUtility.UrlEncode(Encrypt(this.amout_textbox.Text)) + "\">Pay Invoice</a><br><br>" +
                "Thankyou for your business.<br>";

        try
        {
            SmtpClient smtp = new SmtpClient();
            MailMessage msg = new MailMessage();

            AlternateView plainview = AlternateView.CreateAlternateViewFromString(Regex.Replace(strMessage, @"<(.|\n) *?>", string.Empty), null, "text/plain");
            AlternateView htmlview = AlternateView.CreateAlternateViewFromString(strMessage, null, "text/html");
            msg.AlternateViews.Add(plainview);
            msg.AlternateViews.Add(htmlview);
            msg.IsBodyHtml = true;
            msg.From = new MailAddress("sabnam4022@gmail.com");
            msg.To.Add("rajanadim1189@gmail.com");
            msg.Subject = "Payment Link";
            msg.Body = strMessage;
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new System.Net.NetworkCredential("sabnam4022@gmail.com", "Nadim@40224022#");
            smtp.EnableSsl = true;
            smtp.Send(msg);
            company_textbox.Text = "";
            client_textbox.Text = "";
            email_textbox.Text = "";
            amout_textbox.Text = "";
            insert();
            Registrationid();
            ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "SetDialogMessage('Your message has been sent Successfully!!','true');", true);
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "SetDialogMessage('Something went wrong.','false');", true);
        }
    }

    protected void insert()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        SqlCommand cmdresult = new SqlCommand("insert into ordernumber1_table (OrderNumber) values ('abc')", con);
        con.Open();
        cmdresult.ExecuteNonQuery();
        con.Close();
    }
    protected void EditEndExam(object sender, EventArgs e)
    {
        Session["username"] = null;
        Session["password"] = null;
        Session["username"] = "";
        Session["password"] = "";
        Response.Redirect("https://www.pass4job.com/pay/login.aspx");

    }
}
