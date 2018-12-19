# VPN Gateway

* This is a base VPN Gateway ARM Template that deploys a VPN Gateway and all the resources required for an IPSec VPN connection to an Azure VPN Gateway
* This template can be used by itself or as part of a larger deployment

## Resources Provisioned In This Template

* VPN Gateway
* Local Network Gateway
* Public IP Address for VPN Gateway
* Virtual Network
  * Gateway and VM Subnets for the Virtual Network
* Network Security Group for the VM Subnet
* Connection between VPN Gateway and Local Network Gateway

## Information Required to Provision Resources

* Naming prefix for the resources
* External IP Address for the Local Network Gateway
* Address Space for the Local Network Gateway

## Parameter Values Which Can Be Changed

* VPN Gateway SKU
* Pre-Shared Key for VPN Connection
* Naming Prefix
