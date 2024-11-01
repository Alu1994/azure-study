# login on azure
Connect-AzAccount

# Criar grupo de recursos para o ACR e AKS
New-AzResourceGroup -Name "rg-ask-pwsh" -Location "Brazil South"

# Provisionando AKS da forma mais simplificada
New-AzAksCluster -ResourceGroup "rg-ask-pwsh" -Name "aks-powershell" -NodeCount 1

# Listar Clusters do AKS
Get-AzAksCluster

# Instalar Kubectl
Install-AzAksKubectl

# Importar Credenciais
Import-AzAksCredential -ResourceGroup "rg-ask-pwsh" -Name "aks-powershell"

# Get Nodes
kubectl get nodes

# Enter pod
kubectl exec -i --tty -n <NAMESPACE> <POD NAME> -- /bin/ash

# Remover Cluster do AKS
Remove-AzAksCluster -ResourceGroup "rg-ask-pwsh" -Name "aks-powershell"