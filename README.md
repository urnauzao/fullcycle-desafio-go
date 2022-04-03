# Curso Full Cycle 3.0 - 02ABR2022 
## DESAFIO GO
Foi necessário entendimento de qual é a menor imagem docker disponível e a partir dela preparar o ambiente linux para build de um aplicativo <em>"Hello World"</em> em linguagem Go. 

### Descrição da Atividade:
Esse desafio é muito empolgante principalmente se você nunca trabalhou com a linguagem Go!
- Você terá que publicar uma imagem no docker hub. Quando executarmos:
> docker run <seu-user>/codeeducation

- Temos que ter o seguinte resultado: Code.education Rocks!
- A imagem de nosso projeto Go precisa ter menos de 2MB =)


## Comandos Go Lang Utilizados
Para iniciar o projeto go
> go mod init hello

Para executar a aplicação go
> go run .

Para fazer build da aplicação go
> go build

## Imagem Docker selecionada
Foi selecionado a imagem:
[scratch](https://hub.docker.com/_/scratch)

A imagem docker selecionada não possuí sequer terminal SH ou BASH, por isso na imagem, precisaremos executar sempre diretamente um binário.

## Docker-Compose
Em nosso docker-compose.yml possuímos 3 configurações de serviços disponíveis:
- <b>desafio-go</b>: este é o serviço cujo qual utilizaremos para gerar a imagem docker que será upada e entregue na atividade.
- <b>environment-go-init</b>: este serviço serve para iniciarmos o ambiente de um projeto Go em ambiente linux.
- <b>environment-go-build</b>: este serviço serve para realizarmos o build de um aplicativo Go em um binário executável em linux.

## Scripts
Temos 4 scrips principais para facilitar a instalação e configuração do ambiente.
- O arquivo `run.sh` serve para realizar a execução do container direto da imagem Docker disponível no Docker Hub.
> sh run.sh

- Este script serve para fazer Build e Push do Docker-Compose. Caso vá subir para um diretório de sua propriedade não se esqueça de alterar o `docker-compose.yml` para o seu repositório.
> sh run-build-and-push-desafio-go.sh

- Este script faz a execução do serviço desafio-go presente no arquivo do Docker-Compose.
> sh run-desafio-go.sh

- Este script faz a execução da instalação e build do Go em ambiente linux. Caso você customize o arquivo da pasta raiz `hello.go` essa alteração será refletida durante a execução deste comando.
> sh run-environment-go.sh
