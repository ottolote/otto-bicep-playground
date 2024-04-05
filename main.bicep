@description('Specifies the location for all resources.')
param location string = resourceGroup().location

@description('Specifies the SKU for the storage account.')
param storageSku string = 'Standard_LRS'

@description('Specifies the name for the storage account.')
param storageAccountName string = 'mystorageaccount'

resource storageAccount 'Microsoft.Storage/storageAccounts@2021-08-01' = {
  name: storageAccountName
  location: location
  sku: {
    name: storageSku
  }
  kind: 'StorageV2'
}

output storageAccountId string = storageAccount.id

