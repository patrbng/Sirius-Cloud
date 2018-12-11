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

## **How to demo the solution to the customer using this template**

* Pre-Requisites
  * Download this repository to your machine
  * Install Azure Storage Explorer
  * Install Azure PowerShell Module
  * Download Generate-RandomFiles.ps1 from Azure Script Repo
  * Create Resource Group and deploy the template
  * Configure the LogicApp with your desired check interval
    * This LogicApp is configured for a 1 minute interval check

* Demo Steps
  * Generate some random files with the PowerShell Script (this can also be done beforehand)
  * Connect Azure Storage Explorer to the storage account
  * Walkthrough of the resources created to make the magic happen
    * Talk about how Event Hubs, Logic Apps and the Storage Account all work together
  * Generate a bunch of random files with the script
  * Upload the files to the storage account using storage explorer
  * Go to the Portal and the Logic App and watch the triggers kick off
    * Dive into the triggers and show the detail
  * Refresh the storage account and show that the files have been deleted
  * If you have done this a bunch of times in preparation you can also go into the LogAnalytics workspace and show some queries