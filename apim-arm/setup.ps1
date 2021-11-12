$storageAccountName = "test${env}app"
$rg = "test-resource-group-mujtaba"

Write-Host "Creating Resource Group"

az group create -l $location -n $rg

az configure --defaults group=$rg location=$location



Write-Host "Creating Storage Group"

az storage account create `
    -n $storageAccountName
    --sku Standard_LRS
    --kind StorageV2