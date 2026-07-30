```yaml
- task: PowerShell@2
  inputs:
    filePath: "connect-azure.ps1"
    arguments: '-ServicePrincipalPassword "$(ServerAutomationDemo-AppPw)" 
                -SubscriptionId $(subscription_id) 
                -ApplicationId $(application_id) 
                -TenantId $(tenant_id)'


```yaml
- task: PowerShell@2
  inputs:
    targetType: "inline"
    script: New-AzResourceGroup -Name $(azure_resource_group_name) 
                                  -Location eastus -Force
```
