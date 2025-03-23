using System;
using System.IO;
using System.Net;
using Azure;
using Microsoft.Azure.Functions.Worker;
using Microsoft.Extensions.Logging;
using Azure.AI.FormRecognizer;
using Azure.Data.Tables;
using Microsoft.Azure.WebJobs;

namespace DocumentProcessor
{
    public class DocumentProcessor
    {

        [FunctionName("BlobTriggerFunction")]
        public async Task Run(
            [BlobTrigger("documents/{name}", Connection = "AzureWebJobsStorage")] Stream myBlob,
            string name,
            ILogger log)
        {

            string endpoint = "https://your-form-recognizer.cognitiveservices.azure.com/";
            string apiKey = "your-form-recognizer-key";
            string storageConnectionString = "your-form-recognizer-key";

            log.LogInformation($"Processing file: {name}");

            var client = new FormRecognizerClient(new Uri(endpoint), new AzureKeyCredential(apiKey));
            var result = await client.StartRecognizeContentAsync(myBlob);

            var extractedText = result.Value.ToString();

            var tableClient = new TableClient(storageConnectionString, "ExtractedData");
            var entity = new TableEntity("Documents", name) { { "ExtractedText", extractedText } };
            await tableClient.AddEntityAsync(entity);

            log.LogInformation("Document processing completed.");
        }
    }


}
