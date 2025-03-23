using Microsoft.AspNetCore.Mvc;
using Azure.Storage.Blobs;
using Azure;
using Azure.Data.Tables;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Logging;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;

namespace AzureAI_DocProcessor.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class DocumentController : ControllerBase
    {
        private readonly ILogger<DocumentController> _logger;
        private readonly IConfiguration _configuration;
        private readonly string _storageConnectionString;

        public DocumentController(ILogger<DocumentController> logger, IConfiguration configuration)
        {
            _logger = logger;
            _storageConnectionString = configuration["AzureStorage:ConnectionString"];
        }

        [HttpPost("upload")]
        public async Task<IActionResult> UploadFile(IFormFile file)
        {
            var blobServiceClient = new BlobServiceClient(_storageConnectionString);
            var blobContainerClient = blobServiceClient.GetBlobContainerClient("documents");
            var blobClient = blobContainerClient.GetBlobClient(file.FileName);

            using (var stream = file.OpenReadStream())
            {
                await blobClient.UploadAsync(stream, true);
            }

            return Ok("File uploaded successfully.");
        }

        [HttpGet("processed/{fileName}")]
        public async Task<IActionResult> GetProcessedData(string fileName)
        {
            try
            {
                var tableClient = new TableClient(_storageConnectionString, "ExtractedData");
                var entity = await tableClient.GetEntityAsync<TableEntity>("Documents", fileName);

                return Ok(entity);
            }
            catch (RequestFailedException ex) when (ex.Status == 404)
            {
                return NotFound("File not found in table storage.");
            }
        }

    }
}
