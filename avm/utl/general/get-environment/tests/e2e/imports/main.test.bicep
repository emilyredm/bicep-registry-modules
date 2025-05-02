targetScope = 'subscription'

metadata name = 'Import all'
metadata description = 'This example imports all functions.'

// ============== //
// Test Execution //
// ============== //

import * as environment from '../../../main.bicep'

var public = 'AzureCloud'
var china = 'AzureChinaCloud'
var usgov = 'AzureUSGovernment'

var location = 'eastus' // Example location, can be parameterized if needed

// Graph API Endpoint Tests
output graphEndpointPublic string = environment.getGraphEndpoint(public)
output graphEndpointChina string = environment.getGraphEndpoint(china)
output graphEndpointUsGov string = environment.getGraphEndpoint(usgov)

// Portal URL Tests
output portalEndpointPublic string = environment.getPortalUrl(public)
output portalEndpointChina string = environment.getPortalUrl(china)
output portalEndpointUsGov string = environment.getPortalUrl(usgov)

// Cosmos DB DNS Suffixes Tests
output cosmosDbTablePublic string = environment.getCosmosDbTableDnsSuffix(public)
output cosmosDbTableChina string = environment.getCosmosDbTableDnsSuffix(china)
output cosmosDbTableUsGov string = environment.getCosmosDbTableDnsSuffix(usgov)

output cosmosDbSqlPublic string = environment.getCosmosDbSQLnsSuffix(public)
output cosmosDbSqlChina string = environment.getCosmosDbSQLnsSuffix(china)
output cosmosDbSqlUsGov string = environment.getCosmosDbSQLnsSuffix(usgov)

output cosmosDbMongoPublic string = environment.getCosmosDbMongoDnsSuffix(public)
output cosmosDbMongoChina string = environment.getCosmosDbMongoDnsSuffix(china)
output cosmosDbMongoUsGov string = environment.getCosmosDbMongoDnsSuffix(usgov)

output cosmosDbCassandraPublic string = environment.getCosmosDbCassandraDnsSuffix(public)
output cosmosDbCassandraChina string = environment.getCosmosDbCassandraDnsSuffix(china)
output cosmosDbCassandraUsGov string = environment.getCosmosDbCassandraDnsSuffix(usgov)

output cosmosDbGremlinPublic string = environment.getCosmosDbGremlinDnsSuffix(public)
output cosmosDbGremlinChina string = environment.getCosmosDbGremlinDnsSuffix(china)
output cosmosDbGremlinUsGov string = environment.getCosmosDbGremlinDnsSuffix(usgov)

output cosmosDbSynapsePublic string = environment.getCosmosDbSynapseDnsSuffix(public)
output cosmosDbSynapseChina string = environment.getCosmosDbSynapseDnsSuffix(china)
output cosmosDbSynapseUsGov string = environment.getCosmosDbSynapseDnsSuffix(usgov)

// Cognitive Services DNS Suffix Tests
output cognitiveServicesPublic string = environment.getCognitiveServicesDnsSuffix(public)
output cognitiveServicesChina string = environment.getCognitiveServicesDnsSuffix(china)
output cognitiveServicesUsGov string = environment.getCognitiveServicesDnsSuffix(usgov)

// OpenAI DNS Suffix Tests
output openAiPublic string = environment.getOpenAiDnsSuffix(public)
output openAiChina string = environment.getOpenAiDnsSuffix(china)
output openAiUsGov string = environment.getOpenAiDnsSuffix(usgov)

// Azure Search DNS Suffix Tests
output searchPublic string = environment.getSearchDnsSuffix(public)
output searchChina string = environment.getSearchDnsSuffix(china)
output searchUsGov string = environment.getSearchDnsSuffix(usgov)

// Recovery Services Vault DNS Suffix Tests
output recoveryServicesVaultPublic string = environment.getRecoveryServicesVaultDnsSuffix(public, location)
output recoveryServicesVaultChina string = environment.getRecoveryServicesVaultDnsSuffix(china, location)
output recoveryServicesVaultUsGov string = environment.getRecoveryServicesVaultDnsSuffix(usgov, location)
