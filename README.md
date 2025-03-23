# AzureAI-DocProcessor

## Overview
AzureAI-DocProcessor is a .NET application that uses **Azure Form Recognizer** to extract text and layout information from documents. This project helps automate document processing and analysis using AI.

## Features
- Extract text from documents using Azure Form Recognizer.
- Process PDFs, images, and other supported formats.
- Uses .NET 8.0 for performance and modern features.

## Prerequisites
- **.NET 8.0 SDK** (Download: [https://dotnet.microsoft.com/en-us/download/dotnet/8.0](https://dotnet.microsoft.com/en-us/download/dotnet/8.0))
- **Azure Subscription** (Create one at [https://portal.azure.com](https://portal.azure.com))
- **Azure Form Recognizer API Key & Endpoint**
- **Visual Studio 2022 (v17.8 or later)**

## Installation
1. **Clone the repository**:
   ```sh
   git clone https://github.com/yourusername/AzureAI-DocProcessor.git
   cd AzureAI-DocProcessor
   ```
2. **Set up environment variables**:
   ```sh
   export AZURE_FORM_RECOGNIZER_ENDPOINT="your-endpoint-url"
   export AZURE_FORM_RECOGNIZER_API_KEY="your-api-key"
   ```
   Alternatively, update `appsettings.json`.

3. **Restore dependencies**:
   ```sh
   dotnet restore
   ```

4. **Build the project**:
   ```sh
   dotnet build
   ```

## Usage
Run the application with:
```sh
dotnet run --project src/AzureAI-DocProcessor
```

To process a document:
```sh
dotnet run "path/to/document.pdf"
```

## Project Structure
```
AzureAI-DocProcessor/
│── src/
│   ├── AzureAI-DocProcessor/       # Main application
│   ├── DocumentProcessor/       # Blob trigger function app
│   ├── AzureAI-DocProcessor.UnitTests/  # Unit tests
│── README.md                        # Project documentation
│── global.json                       # Ensures correct .NET version
```
