using System;
using System.IO;
using System.Threading.Tasks;
using Azure.Storage.Blobs;

namespace AzureAI_DocProcessor.Helper
{
    public class AzureStorageHelper
    {
        private readonly BlobServiceClient _blobServiceClient;

        public AzureStorageHelper(string connectionString)
        {
            _blobServiceClient = new BlobServiceClient(connectionString);
        }

        public async Task UploadFileAsync(string containerName, string filePath)
        {
            var containerClient = _blobServiceClient.GetBlobContainerClient(containerName);
            await containerClient.CreateIfNotExistsAsync();

            var blobClient = containerClient.GetBlobClient(Path.GetFileName(filePath));
            using var fileStream = File.OpenRead(filePath);
            await blobClient.UploadAsync(fileStream, true);
            Console.WriteLine("File uploaded successfully.");
        }
    }
}

