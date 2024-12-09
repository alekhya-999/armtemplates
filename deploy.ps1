#Authenticate to the azure portal
connect-AzAccount -subscriptionid "" -Tenantid ""


#create resource group
$resourcegroupname = "devops-armpractice"
$location = "East us"
New-AzResourceGroup -Name $resourcegroupname -Location $location

#deploying ARM templates
$templatefile = "storage-account.json"
$parametersfile = "parameters.json"
New-AzResourceGroupDeployment -ResourceGroupName $resourcegroupname -TemplateFile $templatefile -TemplateParameterFile $parametersfile