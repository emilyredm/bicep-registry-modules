metadata name = 'Get Environment'
metadata description = 'This module contains helper functions for returing URLs and Endpoints that change depending on the target cloud environment'
metadata owner = 'alex-frankel'

type environmentType = 'AzureCloud' | 'AzureChinaCloud' | 'AzureUSGovernment'

@export()
@description('Get the graph endpoint for the given environment')
func getGraphEndpoint(environment environmentType) string =>
  {
    AzureCloud: 'https://graph.windows.net'
    AzureChinaCloud: 'https://graph.chinacloudapi.cn'
    AzureUSGovernment: 'https://graph.windows.net'
  }[environment]

@export()
@description('Get the Portal URL for the given environment')
func getPortalUrl(environment environmentType) string =>
  {
    AzureCloud: 'https://portal.azure.com'
    AzureChinaCloud: 'https://portal.azure.cn'
    AzureUSGovernment: 'https://portal.azure.us'
  }[environment]

@export()
@description('Get the DNS suffix for Cosmos DB Table API')
func getCosmosDbTableDnsSuffix(environment environmentType) string =>
  {
    AzureCloud: '.table.cosmos.azure.com'
    AzureChinaCloud: '.table.cosmos.chinacloudapi.cn'
    AzureUSGovernment: '.table.cosmos.azure.us'
  }[environment]

@export()
@description('Get the DNS suffix for Cosmos DB SQL API')
func getCosmosDbSQLnsSuffix(environment environmentType) string =>
  {
    AzureCloud: '.documents.azure.com'
    AzureChinaCloud: '.documents.chinacloudapi.cn'
    AzureUSGovernment: '.documents.azure.us'
  }[environment]

@export()
@description('Get the DNS suffix for Cosmos DB MongoDB API')
func getCosmosDbMongoDnsSuffix(environment environmentType) string =>
  {
    AzureCloud: '.mongo.cosmos.azure.com'
    AzureChinaCloud: '.mongo.cosmos.chinacloudapi.cn'
    AzureUSGovernment: '.mongo.cosmos.azure.us'
  }[environment]

@export()
@description('Get the DNS suffix for Cosmos DB Cassandra API')
func getCosmosDbCassandraDnsSuffix(environment environmentType) string =>
  {
    AzureCloud: '.cassandra.cosmos.azure.com'
    AzureChinaCloud: '.cassandra.cosmos.chinacloudapi.cn'
    AzureUSGovernment: '.cassandra.cosmos.azure.us'
  }[environment]

@export()
@description('Get the DNS suffix for Cosmos DB Gremlin API')
func getCosmosDbGremlinDnsSuffix(environment environmentType) string =>
  {
    AzureCloud: '.gremlin.cosmos.azure.com'
    AzureChinaCloud: '.gremlin.cosmos.chinacloudapi.cn'
    AzureUSGovernment: '.gremlin.cosmos.azure.us'
  }[environment]

@export()
@description('Get the DNS suffix for Azure Synapse Link')
func getCosmosDbSynapseDnsSuffix(environment environmentType) string =>
  {
    AzureCloud: '.synapse.cosmos.azure.com'
    AzureChinaCloud: '.synapse.cosmos.chinacloudapi.cn'
    AzureUSGovernment: '.synapse.cosmos.azure.us'
  }[environment]

@export()
@description('Get the DNS suffix for Cognitive Services')
func getCognitiveServicesDnsSuffix(environment environmentType) string =>
  {
    AzureCloud: '.cognitiveservices.azure.com'
    AzureChinaCloud: '.cognitiveservices.azure.cn'
    AzureUSGovernment: '.cognitiveservices.azure.us'
  }[environment]

@export()
@description('Get the DNS suffix for OpenAI services')
func getOpenAiDnsSuffix(environment environmentType) string =>
  {
    AzureCloud: '.openai.azure.com'
    AzureChinaCloud: '.openai.chinacloudapi.cn'
    AzureUSGovernment: '.openai.azure.us'
  }[environment]

@export()
@description('Get the DNS suffix for Azure Search services')
func getSearchDnsSuffix(environment environmentType) string =>
  {
    AzureCloud: '.search.azure.com'
    AzureChinaCloud: '.search.chinacloudapi.cn'
    AzureUSGovernment: '.search.azure.us'
  }[environment]

// location needs to be explicitly passed in for the DNS suffix to be correct
// for the given environment. This is because the DNS suffix is different for each region
@export()
@description('Get the DNS suffix for Recovery Services Vault')
func getRecoveryServicesVaultDnsSuffix(environment environmentType, location string) string =>
  {
    AzureCloud: 'privatelink.${location}.backup.windowsazure.com'
    AzureChinaCloud: 'privatelink.${location}.backup.chinacloudapi.cn'
    AzureUSGovernment: 'privatelink.${location}.backup.azure.us'
  }[environment]
