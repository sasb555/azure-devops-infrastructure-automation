```powershell
$ArmDeploymentOutput = $ArmDeploymentJsonOutput | convertfrom-json
describe 'Network Connectivity' {
    it 'the VM has RDP/3389 open' {
        Test-Connection -TCPPort 3389 -TargetName $ArmDeploymentOutput.hostname.value -Quiet | 
          should -Be $true
    }
}
```
