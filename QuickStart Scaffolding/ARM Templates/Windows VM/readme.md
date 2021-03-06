# Windows VM

* This is a base Windows VM ARM Template that deploys a Server 2016 Windows VM and its required resources only
* This template can be used by itself or as part of a larger deployment

## Resources Provisioned In This Template

* Windows VM
* Public IP Address for VM
* Virtual Network with a VMs Subnet
* Network Security Group (NSG) for the VM with a firewall rule allowing for RDP access to the VM
* Managed OS Disk for the VM
* NIC for the VM attached to the NSG
* Storage account for VM diagnostics

## Information Required to Provision Resources

* Naming prefix for the resources

## Parameter Values Which Can Be Changed

* Naming Prefix
* VM Name
* VM Size
* Administrator Username

## Other

* Admin Password is stored in the CCoE Azure KeyVault
* VM does not deploy the Diagnostics Extension