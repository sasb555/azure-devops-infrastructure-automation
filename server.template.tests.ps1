```yaml
- task: Pester@0
  inputs:
    scriptFolder: "@{Path='$(System.DefaultWorkingDirectory)/server.template.tests.ps1'; 
                      Parameters=@{ResourceGroupName='$(azure_resource_group_name)'}}"
    resultsFile: "$(System.DefaultWorkingDirectory)/server.template.tests.XML"
    usePSCore: true
    run32Bit: False
```

What the test does (server.template.tests.ps1):
- Validates ARM template JSON syntax
- Checks parameter file consistency
- Ensures required properties are present
- Runs "unit tests" on infrastructure code before deployment [github](https://github.com/lgeurts/azure-devops-pipeline)

#### 3.6 Stage 3: ARM VM Deployment
```yaml
- task: AzureResourceManagerTemplateDeployment@3
  inputs:
    deploymentScope: "Resource Group"
    azureResourceManagerConnection: "ARM"
    subscriptionId: "YOUR_SUBSCRIPTION_ID"
    action: "Create Or Update Resource Group"
    resourceGroupName: $(azure_resource_group_name)
    location: "East US"
    templateLocation: "Linked artifact"
    csmFile: "server.json"
    csmParametersFile: "server.parameters.json"
    deploymentMode: "Incremental"
    deploymentOutputs: "arm_output"  # Captures VM DNS/IP for next stage
```
