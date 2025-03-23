using System;
using System.Threading.Tasks;
using Azure;
using Azure.AI.FormRecognizer;
using Azure.AI.FormRecognizer.Models;
using Azure.AI.FormRecognizer.DocumentAnalysis;

namespace AzureAI_DocProcessor.Helper
{
    class FormRecognizerHelper
    {
        private readonly DocumentAnalysisClient _client;

        public FormRecognizerHelper(string endpoint, string apiKey)
        {
            _client = new DocumentAnalysisClient(new Uri(endpoint), new AzureKeyCredential(apiKey));
        }

        public async Task ExtractTextFromDocument(string filePath)
        {
            using var stream = File.OpenRead(filePath);

            AnalyzeDocumentOperation operation = await _client.AnalyzeDocumentAsync(
                WaitUntil.Completed,
                "prebuilt-read",
                stream
            );

            AnalyzeResult result = operation.Value;

            foreach (var page in result.Pages)
            {
                foreach (var line in page.Lines)
                {
                    Console.WriteLine(line.Content);
                }
            }
        }

    }

}
