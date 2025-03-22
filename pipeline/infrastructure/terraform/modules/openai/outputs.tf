output "openai_endpoint" {
  description = "The endpoint of the OpenAI cognitive service account"
  value       = azurerm_cognitive_account.openai.endpoint   
  
}