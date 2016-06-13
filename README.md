#Sistema de Livraria - (JPA+JSP+Hibernate)


### Instalação

* Você pode clonar o repositório usando o comando "git clone https://github.com/borntoplay189/livraria-poo-web.git", e também pode baixar o zip e importar ele.
* Após importar o projeto você tem que verificar se todas as bibliotecas vieram junto, normalmente a biblioteca do Tomcat e da o JRE não vem junto (normalmente é só a do Tomcat que não vem). Então adicione essas bibliotecas.
* Você vai precisar ter o PostgreSQL no seu PC, abra ele e faça uma database chamada <b>livraria</b>.
* Também é necessário conferir a configuração do arquivo persistense.xml que se encontra dentro de: <b>src/META_INF/persistence.xml</b>, oque você tem que fazer aqui é verificar se a porta, username e senha do seu postgreSQL estão configurados da mesma forma.

### Como usar

* Para usar o sistema você tem que executar o servidor Tomcat, após fazer isso é só acessar pelo seu browser o endereço: [http://localhost:8080/livraria](http://localhost:8080/livraria).
* O primeiro usuário de administrador(gerente) você tem que criar direto no banco de dados, depois que você criar ele poderá criar outros diretamente pelo site.
