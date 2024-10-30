# Docker

### Executa container em modo iterativo `-it` desalocado `-d` na porta `-p` escolhida `porta-externa:porta-interna-do-container` e o nome do container `meu-container`
```shell
docker run -it -d -p 8021:80 nome-do-container
```
### Cria uma imagem nova
```shell
docker build -t nome-da-imagem .
```

### Entra no container no shell
```shell
docker exec -it 620fd2edb553 bash
```

### Cria uma tag para fazer deploy da imagem no dockerhub
```shell
docker tag site-httpd matsennin/docker-test:v1

docker tag nome-da-imagem usuario-do-dockerhub/repositorio:versao
```

### Deploy da imagem no dockerhub
```shell
docker push matsennin/docker-test:v1

docker push usuario-do-dockerhub/repositorio:versao
```