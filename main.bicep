targetScope = 'subscription'

@description('Specifies the location for the resource group.')
param location string = 'westeurope'

@description('Specifies the name for the resource group.')
param name string = 'myResourceGroup'

resource resourceGroup 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  location: location
  name: name
}

output resourceGroupId string = resourceGroup.id

