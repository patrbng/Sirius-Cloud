# **Sample ARM Template Quickstart Readme**

This is an example readme for how to use this ARM template

## **Files Contained**

* This Readme
* AzureDeploy.json file that contains a sample deployment script to deploy the architecture for this scenario
* AzureDeploy.parameters.json file that contains some parameters to be used for the azuredeploy.json file
* deploy.ps1 with PowerShell commands to be run to deploy the template

## **How to Use This Template**

* This template can be deployed as-is with no modifications of parameter or variable names (unless someone else used it and didn't delete the resources)
* You can modify the resource names, parameters, variables as you see fit
* You can also use this a base template for your scenario and customize as needed

## Resources Provisioned In This Template

* VPN Gateway
* Local Network Gateway
* Public IP Address for VPN Gateway
* Virtual Network
  * Gateway and VM Subnets for the Virtual Network
* Network Security Group for the VM Subnet
* Connection between VPN Gateway and Local Network Gateway
* 

## Information Required to Provision Resources

* Naming prefix for the resources
* External IP Address for the Local Network Gateway
* Address Space for the Local Network Gateway

## Parameter Values Which Can Be Changed

* VPN Gateway SKU
* Pre-Shared Key for VPN Connection
* Naming Prefix

## **Pre-Requisites**

* Download this repository to your machine
* Install Azure PowerShell Module
* Create Resource Group and deploy the template

### **Note:  The VPN Gateway will take 30-45 minutes to provision the first time the template is deployed**