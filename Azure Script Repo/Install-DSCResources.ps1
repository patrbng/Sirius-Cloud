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

#Paths to check on Azure VMs when using the DSC Extension
#Check this path to verify the extension installed properly
# C:\Packages\Plugins\Microsoft.PowerShell.DSC\<version number>
#Check this path for status of the extension runs
# C:\Packages\Plugins\Microsoft.PowerShell.DSC\<version number>\status
#Check this path for other logs about the runs made by the extension
#C:\WindowsAzure\Logs\Plugins\Microsoft.PowerShell.DSC\<version number>


