### Criar cluster AKS
```shell
az aks create -g MyResourceGroup -n MyManagedCluster
```

### list k8s versions on aks
```shell
az aks get-versions --location
```

### adicionar add-ons
```shell
az aks enable-addons --name MyManagedCluster --resource-group MyResourceGroup --addons open-service-mesh
```

### adicionar node pools
```shell
az aks nodepool add -g MyResourceGroup -n nodepool1 --cluster-name MyManagedCluster --node-osdisk-type Managed
```

### instal kubectl local
```shell
az aks install-cli --base-src-url --client-version --install-location --kubelogin-base-src-url --kubelogin-install-location --kubelogin-version
```
