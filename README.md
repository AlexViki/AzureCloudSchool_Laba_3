# AzureCloudSchool_Laba_3
In general will use PowerShell scripting for creating VM, resources etc.

### How to connect to Azure ARM:
Connecting to ARM allows you to deploy and manage VMs via PowerShell cmdlets, manage storage, create Resource Groups and so on.
- The next step installs the required Azure PowerShell modules from the PowerShell Gallery. Launch PowerShell as an administrator and run command Install-Module AzureRM.
- After a few moments numerous AzureRM modules will download and install on your machine. Once complete, issue command Import-Module AzureRM.
- Now run command Connect-AzureRmAccount. Enter credentials to manage your Azure tenant.
If successful, you will be returned some information from your tenant. Run a test command such as Get-AzureRmTenant and confirm that they issue correctly.
