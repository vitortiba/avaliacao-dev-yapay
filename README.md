# Avaliação Desenvolvedor YAPAY 

Este repositório foi feito para a avaliação para Desenvolvedor Júnior da YAPAY.
Foi utilizado Ruby/Ruby on Rails para a criação do projeto, que consiste em
um sistema de agendamento de serviços e um área de gerenciamento.<br>
Para ese projeto foi utilizado diferentes tecnologias e um conhecimento geral
na programação WEB.

##Começar a utilizar

<i>Este projeto utiliza <a href="https://www.docker.com/">DOCKER e DOCKER-COMPOSE</a></i> <br><br>
De início, é necessário utilizar o seguinte comando na pasta do projeto: <br>
`docker-compose up -d --build` <br>
Este comando faz o build do Dockerfile e já sobe os serviços dependentes:
- Mysql 5.7
- Ruby 2.5 / Ruby on Rails
- PHPMyadmin
    - Servidor: mysql
    - Utilizador: root
    - Senha: root
- Node 10.x

**NÃO** é necessário subir o servidor, nem utilizar `bundle install`. o Dockerfile e
o docker-compose feitos já gerenciam isso logo após subir o container. <br>
Caso altere algo no Gemfile, é necessário reiniciar o container, com o `--build`. <br><br>
`127.0.0.1:3000` será a aplicação; <br>
`127.0.0.1` será o PHPMyadmin caso queria ver o banco.

##Criar banco de dados
Para criar o banco de dados de forma correta é necessário alguns passos.
- `docker-compose run web rake db:create` (Cria a database)
- `docker-compose run web rake db:migrate` (Criar as tabelas)
- `docker-compose run web rake db:seed` (Cria o primeiro usuário ADMIN)
    - Email: admin@teste.com
    - Senha: 123456

##Rodar os testes
Para rodar os testes, é necessário primeiro criar o banco de teste:
- `docker-compose run web rake db:create RAILS_ENV=test` (Cria a database de teste)
- `docker-compose run web rake db:migrate RAILS_ENV=test` (Criar as tabelas de teste)

Após criar o banco, utilize o comando:
`docker-compose run web rspec spec`