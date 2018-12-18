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
Test-AzResourceGroupDeployment -ResourceGroupName $rg -TemplateFile $template -TemplateParameterFile $parms -Mode Incremental -Verbose

#Deploy the template
New-AzResourceGroupDeployment -Name $job -ResourceGroupName $rg -TemplateFile $template -TemplateParameterFile $parms -Mode Incremental -DeploymentDebugLogLevel All -Verbose

#If the template utilizes outputs these commands can be ued to extract the values
#$outputs = (New-AzResourceGroupDeployment -Name $job -TemplateParameterFile $parms -TemplateFile $template -ResourceGroupName $rg).Outputs
#$hostName = $Outputs.hostname.Value
#$sshCommand = $Outputs.sshCommand.Value

#These commands can be used to find the values post deployment if you didn't save the deployment into a variable
#(Get-AzResourceGroupDeployment -ResourceGroupName $rg).Outputs
#for this example an output was named vmref
#(Get-AzResourceGroupDeployment -ResourceGroupName $rg).Outputs.vmref.value

#Clean up the resources
Remove-AzResourceGroup -Name $rg 