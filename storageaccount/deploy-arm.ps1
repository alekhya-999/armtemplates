#Authenticate to the azure portal
connect-AzAccount -subscriptionid "d4416119-70be-48b5-b868-61c6eed8416d" -Tenantid "93f33571-550f-43cf-b09f-cd331338d086"


#create resource group
$resourcegroupname = "devops-armpractice"
$location = "East us"
New-AzResourceGroup -Name $resourcegroupname -Location $location

#deploying ARM templates
$templatefile = "storage-account.json"
$parametersfile = "parameters.json"
New-AzResourceGroupDeployment -ResourceGroupName $resourcegroupname -TemplateFile $templatefile -TemplateParameterFile $parametersfile