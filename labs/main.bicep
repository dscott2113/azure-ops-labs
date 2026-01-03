targetScope = 'subscription'

@description('Azure region for all lab resources')
param location string = 'eastus'

@description('Workload prefix usseed in resource name')
param workload string = 'opslab'

@description('Enviorment Name')
param env string = 'lab'

@description('Short region code ussed in resource names')
param regionCode string = 'eus'

@description('Instance number')
param instance string = '01'

//This sets consistent tagging
@description('Tags applied to all resources')
param tags object = {
  owner: 'dscott'
  env: 'lab'
  lab: 'lab-00-foundation'
  costCenter: 'personal'
}

resource labResourceGroup 'Microsoft.Resources/resourceGroups@2022-09-01' = {
  name: '${workload}-rg-${env}-${regionCode}-${instance}'
  location: location
  tags: tags
}
