# Jenkins Configuration as Code

Este projeto contém os arquivos necessários para executar o Jenkins e sua configuração de forma automática, através do plugin "jenkins-configuration-as-code".


# Execução

O build e execução do container é feito através do **docker-compose**, orientado ao manifesto do arquivo "docker-compose.yml".

Para executá-lo, basta seguir os comandos abaixo:

    $ mkdir data && chown 1000:1000 data
    $ docker-compose up -d

## Configuração

Toda configuração do Jenkins é definida no arquivo "jenkins-conf-as-code.yaml", encontrado no diretório **jasc** deste projeto.

## Documentação do Plugin

A referência e documentação para configuração do plugin, pode ser encontrada no repositório abaixo:

https://github.com/jenkinsci/configuration-as-code-plugin/

```

