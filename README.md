# AzureCloudSchool_Laba_3
In general will use PowerShell scripting for creating VM, resources etc.

# Task is:
- Create resource group and virtual network;
- Create availability set including 2 virtual machines (open ports 80, 3389);
- Create public IP address for load balancer
- Create load balancer

## Tune:
- In each virtual machine, install the IIS web server role;
- Replace the default IIS web page on each VM (by default it is the same, so that the page is different and you can check the load balancer);
- In the settings of the Load Balancer add to the Back End Pool the public IP addresses of the created virtual machines (addresses are created automatically when creating the virtual machines);
- In the Load Balancer settings add a balancing rule for the TCP protocol Front End port 80> BackEnd port 80;
- Commands / instructions for replacing the IIS page and for configuring the balancer are available at the links in the “Supporting Resources” section.

### How to connect to Azure ARM:
Connecting to ARM allows you to deploy and manage VMs via PowerShell cmdlets, manage storage, create Resource Groups and so on.
- The next step installs the required Azure PowerShell modules from the PowerShell Gallery. Launch PowerShell as an administrator and run command Install-Module AzureRM.
- After a few moments numerous AzureRM modules will download and install on your machine. Once complete, issue command Import-Module AzureRM.
- Now run command Connect-AzureRmAccount. Enter credentials to manage your Azure tenant.
If successful, you will be returned some information from your tenant. Run a test command such as Get-AzureRmTenant and confirm that they issue correctly.

ERROR: running scripts is disabled on this system powershell.... 
- Right click the x86 version and choose "Run as administrator".
- In the top part, paste Set-ExecutionPolicy RemoteSigned; run the script. Choose "Yes".