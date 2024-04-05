targetScope = 'subscription'

@description('Specifies the location for the resource group.')
param resourceGroupLocation string = 'westeurope'

@description('Specifies the name for the resource group.')
param resourceGroupName string = 'myResourceGroup'

resource resourceGroup 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  location: resourceGroupLocation
  name: resourceGroupName
}

output resourceGroupId string = resourceGroup.id

