# database_existente
Usando ORM Sequelize com database existente do Postgres no Node.js
# Versão NodeJS
6.9.5
# Versão npm
3.10.10
# Após baixar o projeto, basta entrar na basta onde se encontra o "package.json" e digitar o comando:
npm i
# Criar um database com o nome database_existente no Postgres.
# Subir o banco de dados database_existente que se encontra na raiz do projeto
psql -U postgres -d database_existente < database_existente.sql
# Depois executar o www na pasta bin
node www
