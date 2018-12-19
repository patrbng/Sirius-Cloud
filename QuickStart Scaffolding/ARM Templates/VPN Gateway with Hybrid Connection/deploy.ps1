Login-AzAccount
Get-AzSubscription
#This selects the free trial subscription
Select-AzSubscription -Subscription '<appropriate subscription id>'

#Create a new resource group if it doesn't exist already
New-AzResourceGroup -Name "<resource group name>" -Location "<location>"

#Update the file paths if you need to
$rg = "<resource group name>"
$template = "local path to template file"
$parms = "local path to template parameters file"
#You can give the job a meaningful name if you wish
$job = 'job.' + ((Get-Date).ToUniversalTime()).tostring("MMddyy.HHmm")

#Test the deployment
Test-AzResourceGroupDeployment -ResourceGroupName $rg -TemplateFile $template -TemplateParameterFile $parms -Mode Incremental -Verbose `
-LocalGatewayIPAddress "<your external ip address>" -LocalGatewayAddressSpace "<your internal address space>"

#If the test deployment fails and you need more information save the information to a variable $test.  Look at the results in  $test.details
$test = Test-AzResourceGroupDeployment -ResourceGroupName $rg -TemplateFile $template -TemplateParameterFile $parms -Mode Incremental -Verbose `
-LocalGatewayIPAddress "<your external ip address>" -LocalGatewayAddressSpace "<your internal address space>"

$test.Details

#Deploy the template
New-AzResourceGroupDeployment -Name $job -ResourceGroupName $rg -TemplateFile $template -TemplateParameterFile $parms -Mode Incremental -DeploymentDebugLogLevel All -Verbose `
-LocalGatewayIPAddress "<your external ip address>" -LocalGatewayAddressSpace "<your internal address space>"

#Clean up the resources
Remove-AzResourceGroup -Name $rg 