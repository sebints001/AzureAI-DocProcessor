using System;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;

namespace AzureAI_DocProcessor.Helper
{
    class MicrosoftGraphHelper
    {
        private readonly HttpClient _client;
        private readonly string _accessToken;

        public MicrosoftGraphHelper(string accessToken)
        {
            _client = new HttpClient();
            _accessToken = accessToken;
        }

        public async Task SendEmail(string recipientEmail, string subject, string body)
        {
            _client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", _accessToken);

            var emailContent = new
            {
                message = new
                {
                    subject = subject,
                    body = new { contentType = "Text", content = body },
                    toRecipients = new[]
                    {
                    new { emailAddress = new { address = recipientEmail } }
                }
                }
            };

            var json = JsonSerializer.Serialize(emailContent);
            var response = await _client.PostAsync("https://graph.microsoft.com/v1.0/me/sendMail",
                new StringContent(json, Encoding.UTF8, "application/json"));

            Console.WriteLine(response.IsSuccessStatusCode ? "Email sent successfully." : "Failed to send email.");
        }
    }

}
