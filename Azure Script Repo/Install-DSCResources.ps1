#Find all the DSC Modules
Find-module -Tag "DSCResourceKit"

#Find only the Modules put out by the PowerShell Team
Find-Module -Tag "DSCResourceKit" | Where-Object {$_.CompanyName -eq 'PowerShellTeam'}

#Find only the Active Directory Modules.  Filter only searches Tags, Name & Description in the PS Gallery
Find-Module -Tag "DSCResourceKit" -Filter "Active Directory"

Install-Module xActiveDirectory -Verbose

#Find all the resources in the Module
Get-DscResource -Module xActiveDirectory

#Get the properties of one of the resources in the module
(Get-DscResource -Module xActiveDirectory -Name xADDomain).Properties