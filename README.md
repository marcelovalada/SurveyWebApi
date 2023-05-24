#Survey Web Application

##Sobre
Essa API simula a criação de pesquisas. As pesquisas são formadas por perguntas e respostas.
Existem 2 tipos de usuários, os Coordinators (permissões de administrador) e os Respondents. Exixte um usuário de cada tipo cadastrado no seed.

##Pré-requisitos
- Rubi
- Rails
- Bundler
- Postgresql

##Instalação
Rodar o "bundler install" para instalar as gems necessárias.
"rails db:create" para criar as entidades no banco de dados.
"rails db:migrate" para fazer as alterações do banco de dados.
"rails db:seed" para criar um usuário de cada, como padrão.
"rails server" para rodar o servidor local.

##Funcionalidades
- Um usuário existente deve fazer o login.
- O usuário Coordinator pode criar, editar, excluir e ler as pesquisas.
- O usuário Respondents pode ler e responder as pesquisas.
