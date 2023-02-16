### Rodar o projeto local no servidor xampp
Configuração do arquivo .env

DB_DATABASE=api_youtube
DB_USERNAME=root
DB_PASSWORD=

### Baixar o banco

Para ter o primeiro acesso ao login é preciso fazer um backup do banco em...
database\backup banco
Isso porque o usuário nao pode cadastrar, a nao ser que seja do tipo admin, e para isso teve que cadastrar manual o primeiro admim, pois nao tem o link publico de cadastro de usuário

Ou cria-se o banco manual atravez das migrations e depois cria um usuario super admim manual

### rodar o projeto pelo comando 

php artisan serve

### Login
Acessar o primeiro login com o super usuario admin@admin.com.br e senha 12345678
