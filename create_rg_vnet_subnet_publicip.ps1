# Variables for common values
$RG = "cs-rg-availability"
$location = "westeurope"
$nameSubNet = "cs-subnet-1-availability"
$nameVnet = "cs-vnet-availability"
$namePublicIp = "cs-publicIp-availability"

New-AzResourceGroup -Name $RG -Location $location
  
$Subnet_1 = New-AzVirtualNetworkSubnetConfig `
    -Name $nameSubNet `
    -AddressPrefix "10.0.1.0/24"

$virtualNetwork = New-AzVirtualNetwork `
    -Name $nameVnet `
    -ResourceGroupName $RG `
    -Location $location
    -AddressPrefix "10.0.0.0/16" 
    -Subnet $Subnet_1

$virtualNetwork | Set-AzVirtualNetwork

New-AzPublicIpAddress -Name $namePublicIp `
    -ResourceGroupName $RG `
    -AllocationMethod Static 1
    -DomainNameLabel shevchenkocsailability `
    -Location $location