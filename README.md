<h2>Requisitos para rodar o projeto deste repositório</h2>
<p>O projeto foi feito em framework laravel 8, para que ele rode temos que seguir os requisitos da própia documentação <a href="https://lumen.laravel.com/docs/8.x"> CLIQE AQUI PARA IR A DOCUMENTAÇÃO</a></p>
<p>
	Após clonar o projeto do github (git clone https://) abra a pasta do projeto e rode os seguinte comando dentro do terminal:
	<code>composer install</code>
</p>
<p>
	Concluindo esta etapa copie o arquivo ".env.example" e cole renomeando para ".env (cole no mesmo diretório do .env.example)" ou ou se optar por algo mais simples, abra o terminal e execute o comando  <code>cp .env.example .env</code>
</p>

<p>Abra novamente o seu terminal e gere uma chave com o seguinte comando: php artisan key:generate</p>

<p>

<h2>Configurando o banco de dados no arquivo .env</h2>

<p>
	Crie um banco de dados Mysql no seu localhost (nome do banco de sua preferência)
</p>

<p>
	Após criar o banco atualize as informações do seu banco no arquivo .env com as seguintes configurações:<br/><br/>

	DB_CONNECTION=mysql
	DB_HOST=127.0.0.1
	DB_PORT=3306
	DB_DATABASE={nome do banco}
	DB_USERNAME=root
	DB_PASSWORD={senha-se-necessario}

</p>

<p>
	com o banco de dados criado e o .env atualizado abra o seu terminal setado para a pasta do seu projeto e execute o comando: <code>php artisan migrate</code>, observe que as suas tabelas vão ser criadas utilizando a função migrate do laravel.
</p>

<p>
    agora vamos popular as tabelas com o seguinte comando <code>php artisan db:seed --class=ConteudosTableSeeder</code>
</p>

<p>
   Aproveitando que o seu terminal esta aberto execute o comando <code>php artisan serve</code>, veja que vai exibir o link no qual o seu backend esta rodando
</p>

<h2>Documentação collection  do Postman</h2>

<p>
	Documentação do collection através do link "https://www.postman.com/warped-comet-5254/workspace/challenge-alexandre/documentation/10762742-f4906a9e-6011-4bab-92dc-e95421336db0".
</p>
