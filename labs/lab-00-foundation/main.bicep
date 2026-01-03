targetScope = 'subscription'

@description('Azure region for all lab resources')
param location string = 'eastus'

//This sets consistent tagging
@description('Tags applied to all resources')
param tags object = {
  owner: 'dscott'
  env: 'lab'
  lab: 'lab-00-foundation'
  costCenter: 'personal'
}

resource labResourceGroup 'Microsoft.Resources/resourceGroups@2022-09-01' = {
  name: 'opslab-rg-lab-eus-01'
  location: location
  tags: tags
}
