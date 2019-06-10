# Jenkins Configuration as Code

Este projeto contém os arquivos necessários para executar o Jenkins e sua configuração de forma automática, através do plugin "jenkins-configuration-as-code" e a criação de jobs através do "Jenkins Job Builder".


# Execução

O build e execução do container é feito através do **docker-compose**, orientado ao manifesto do arquivo "docker-compose.yml".

Para executá-lo, basta seguir os comandos abaixo:

    $ mkdir data && chown 1000:1000 data
    $ LOCAL_IP_ADDR=YOUR_LOCAL_IP \
      JENKINS_USER=admin \
      JENKINS_PWD=YOUR_PASSWORD \
      JENKINS_URL=http://jenkins.poc.rivendel.com.br \
      docker-compose up -d

## Configuração

Toda configuração do Jenkins é definida no arquivo "jenkins-conf-as-code.yaml", encontrado no diretório **jasc** deste projeto.

## Documentação do Plugin

A referência e documentação para configuração do plugin "Jenkins Configuration as Code", pode ser encontrada no repositório abaixo:

https://github.com/jenkinsci/configuration-as-code-plugin/

A referência e documentação para configuração da tool "Jenkins Job Builder", pode ser encontrada no endereço abaixo:

https://docs.openstack.org/infra/jenkins-job-builder/
```

