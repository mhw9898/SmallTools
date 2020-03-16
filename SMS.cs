using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;

namespace MCS.Models
{
    public class SMS
    {
        public static void SendMail(string Message,string Title, string Email) { 
        MailMessage mail = new MailMessage();
        SmtpClient smtpServer = new SmtpClient("smtp.gmail.com");
        smtpServer.Credentials = new System.Net.NetworkCredential("MyEmail@gmail.com", "password");
            smtpServer.Port = 587; // Gmail works on this port
            smtpServer.EnableSsl = true;
            mail.From = new MailAddress("E@gmail.com");
            mail.To.Add(Email);
            mail.Subject = Title;
            mail.Body = Message;
            smtpServer.Send(mail);
        }
        public static void SendSms(string text, string MobileNo)
        {

                string msg = text;
                // string tel = "966569076447";
                string tel = MobileNo;
                // string sendermsg = "Khamees";
                string url = API;
                //DownloadString(url);

                var r = string.Empty;
                using (var web = new System.Net.WebClient())
                    r = web.DownloadString(url);
            

        }
    }
}