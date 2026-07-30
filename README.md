# Azure DevOps Infrastructure Automation

## Project Overview

Enterprise-grade Azure DevOps YAML pipeline that automates infrastructure provisioning using ARM templates. This project demonstrates production-ready CI/CD practices for Infrastructure-as-Code (IaC) deployment, testing, and validation.

## Key Features

- ✅ Automated ARM template deployment for Azure VMs
- ✅ Pester-based infrastructure testing (unit + integration tests)
- ✅ Azure Key Vault integration for secure secret management
- ✅ Multi-stage YAML pipeline with build, test, deploy, validate, and cleanup stages
- ✅ Cost optimization with automatic resource teardown
- ✅ Service Principal authentication for secure Azure access

## Technologies Used

| Category | Technology |
|----------|-----------|
| **CI/CD Platform** | Azure DevOps Pipelines (YAML) |
| **Infrastructure** | Azure ARM Templates |
| **Testing Framework** | Pester (PowerShell) |
| **Secret Management** | Azure Key Vault |
| **Authentication** | Azure Service Principal |
| **Scripting** | PowerShell 6+ |
| **Agent** | Ubuntu-latest VM |

## Project Structure
azure-devops-infrastructure-automation/
├── azure-pipelines.yml # Multi-stage CI/CD pipeline definition
├── connect-azure.ps1 # Azure authentication script
├── server.json # ARM template for VM provisioning
├── server.parameters.json # ARM template parameters with Key Vault references
├── server.template.tests.ps1 # Pester tests for ARM template validation
├── server.infrastructure.tests.ps1 # Integration tests for deployed VM
├── demo.ps1 # Automated setup script
└── README.md # Project documentation

text

## Pipeline Stages

1. **PowerShell Prep** — Authenticate to Azure and create temporary resource group
2. **ARM Template Validation** — Pester unit tests for infrastructure code
3. **ARM Deployment** — Deploy VM to Azure via ARM template
4. **Infrastructure Testing** — Integration tests verify deployed VM accessibility
5. **Cleanup** — Automatic teardown of all Azure resources (cost optimization)
6. **Test Results Publishing** — Publish NUnit test results to Azure DevOps

## How to Use

### Prerequisites

- Azure DevOps account with project access
- Azure subscription with contributor permissions
- Azure CLI and Azure DevOps extension installed
- PowerShell 6+ with Pester module

### Setup Steps

1. Clone the repository
2. Run `demo.ps1` to set up Azure resources and service connections
3. Configure Azure DevOps variable group with Key Vault secrets
4. Create YAML pipeline in Azure DevOps
5. Run pipeline and monitor execution

## Learning Outcomes

This project demonstrates:
- Infrastructure-as-Code best practices
- Secure credential management in CI/CD
- Automated testing for infrastructure deployments
- Cost optimization through resource lifecycle management
- Production-ready Azure DevOps pipeline patterns

## Author

Sudhir Borade  
https://linkedin.com/in/sudhir-borade-98519b388  
sudhir.borade@gmail.com

## License

MIT License
