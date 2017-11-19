# Tesouros de Piratas Dinâmicos

Baixe aqui o [código seminal][seminal] desta atividade. Controlando o estoque de
tesouros de Barba-Ruiva x2, com Apache, PHP e MySQL.

![Resultado final da atividade prática](https://fegemo.github.io/cefet-front-end/images/piratas-e-seus-tesouros.png)

[seminal]: https://github.com/fegemo/cefet-front-end-pirates/archive/master-php.zip

## Atividade

Você deve alterar a página estática com os tesouros do temido Barba-Ruiva e
torná-la dinâmica, carregando os tesouros a partir de um banco de dados em vez
de simplesmente colocá-los no arquivo HTML.

Objetivos:
1. Introduzir o conceito de _back-ends_
1. Conhecer o Apache
1. Conhecer PHP
1. Conhecer o MySQL
1. Criar uma página dinâmica

### Exercício 1: usando Apache como um servidor estático

Primeiramente, **ative o WampServer** para que ele inicialize o servidor Apache
no seu computador. Siga o [tutorial][tutorial-wamp-decom] para fazer isso
nos computadores do laboratório do DECOM.

Após baixar o código seminal do trabalho, (a) **descompacte-o** na área de
trabalho, (b) **renomeie a pasta** para `piratas`, (c) crie uma
**pasta `piratas`** dentro do diretório `www` do WampServer¹ e (d) **mova a
pasta `piratas`** para dentro desse diretório (do `www`).

Agora, (e) abra um navegador e **acesse `http://localhost/piratas/`²** para
ver a tradicional página dos tesouros do Barba-Ruiva.

Repare que não estamos usando PHP nem MySQL ainda. O Apache está simplesmente
servindo (_i.e._, entregando) os arquivos HTML, CSS, imagens etc sem fazer
nenhuma modificação neles.

Por fim, (f) **renomeie** o arquivo `index.html` **para `index.php`** e
acesse o site novamente (`http://localhost/piratas/`). O que mudou?

Visualmente, nada foi alterado. Mas, agora, o Apache varreu o arquivo
`index.php` em busca de _tags_ do PHP (_i.e._, as `<?php ... ?>`) para
executá-las antes de entregar o arquivo para o navegador. Como ainda não há
nenhuma _tag_, o resultado foi idêntico ao anterior.


¹: Normalmente o Wamp é instalado na pasta `C:\wamp`. Logo, procure
pelo diretório `C:\wamp\www\` e coloque a pasta `piratas` lá dentro.

²: Se você não sabe o que significa `localhost` e é curioso, leia sobre isso
no FAQ.

[tutorial-wamp-decom]: AKDJFALKJDFLKAJDFLJDALKJFLAKJFDAL


### Exercício 2: escrevendomeuprimeirophp

Agora vamos escrever seu nome no arquivo `index.php` usando
[o comando `echo`][php-echo] do PHP. Dentro do título
`<h1>Gerenciador de Tesouros</h1>`, **coloque uma _tag_ PHP para escrever
seu nome**, de forma que fique assim:
`<h1>Gerenciador de tesouros (by SEU NOME)</h1>`.

Uma _tag_ PHP é delimitada por `<?php //... ?>`, que também pode ser
escrita assim: `<? //... ?>` (sem o `php` na abertura).

O comando `echo` recebe 01 parâmetro e simplesmente escreve alguma coisa
dentro do arquivo HTML. Por exemplo:

```php
...
<body>
  <h1>
    Olá! Seja bem vindo, <?php echo "Pirata"; ?>!
  </h1>
  ...
</body>
</html>
```

É possível chamar o [`echo`][php-echo] usando parênteses ou sem parênteses
(como feito acima).

[php-echo]: http://php.net/manual/en/function.echo.php

### Exercício 3: criando o banco de dados dos tesouros

Agora, você deve criar o banco de dados para guardar os tesouros dos piratas.
Para isso, siga o [tutorial de como acessar o phpMyAdmin][tutorial-phpmyadmin]
e, depois, siga o
[tutorial para criar o banco de dados][tutorial-banco-de-dados] que vamos usar.

Use o arquivo `banco-dos-tesouros.sql` que veio com o código seminal quando
o tutorial instruir você a carregar o _script_ que cria a tabela `tesouros`
no banco de dados que você está criando.

[tutorial-phpmyadmin]: DAKHFAKDSHFKASHDFKJADLK
[tutorial-banco-de-dados]: IRUAHEIUFHAIFUHEAIHEAIEH


### Exercício 4: lendo tesouros do banco de dados

Neste exercício você vai alterar o `index.php` para ler os tesouros do
banco de dados, em vez de deixá-los fixos na página.

Para isso, você deve primeiramente instruir o PHP para conectar com o
banco de dados. Coloque no topo do seu arquivo `index.php`, antes
mesmo do `<!DOCTYPE html>`:

```php
<?php
  // faz a conexão com o banco de dados
  //                    endereço    usuario  senha   nome do banco
  $db = mysqli_connect("localhost", "root", "123456", "piratas");
  $db->set_charset("utf8");

  // verifica se a conexão funcionou...
  if (!$db) {
    // encerra a execução do script php, dando um erro
    $descricaoErro = "Erro: não foi possível conectar ao banco de dados. ";
    $descricaoErro = $descricaoErro . "Detalhes: " . mysqli_connect_error();
    die($descricaoErro);
  }
?>
<!DOCTYPE html>
<html>
<head>
  ...
```

Recarregue a página e certifique-se de que ela continua idêntica. Se tiver
dado algum erro ao conectar ao banco de dados, ele será exibido no
navegador e deve ser corrigido (talvez a senha esteja errada, por exemplo).

Agora, você deve escrever código PHP para fazer uma **consulta na tabela
`tesouros`** para pegar todos os tesouros.


// CONTINUAR DAQUI....

### Exercício 5: total de cada tesouro

### Desafio 1: total geral dos tesouros

### Desafio 2: formatando números

### Desafio 3: cadastrando um novo tesouro no banco de dados

### Desafio 4: acessando o MySQL no computador ao lado

## FAQ

FAQ é uma sigla para _Frequently Asked Questions_ que, em Português, traduz
em **Perguntas Feitas com Frequência**. A seguir, veja algumas questões que
podem surgir ao fazer este exercício, bem como as suas respostas.

### Por quê devo dar o nome de `index.php` ao meu arquivo?



### O que é `localhost`?

Quando começamos a falar de redes de computadores (e a Internet é uma rede),
precisamos de uma forma para atribuir um endereço para cada computador
(assim como uma casa precisa de um endereço).

De fato, cada computador possui um endereço IP (_Internet Protocol_), que é
uma sequência de 4 números de 0 a 255 (na versão IPv4), tipo assim:
`200.120.0.1`.

Existe um endereço IP especial, que é o `127.0.0.1`, chamado endereço de
_loopback_ (ou de retorno). Ele representa o próprio computador que o
está acessando.

Logo, para acessar o Apache executando na nossa própria máquina, podemos abrir
o navegador e acessar: `http://127.0.0.1/` (teste aí, depois de ativar o Wamp).

Contudo, acessar um computador por seu IP não costuma ser uma boa ideia
(porque é mais fácil decorar um nome do que uma sequência de 4 números). Logo,
é possível dar nomes a endereços IP. De fato, por padrão, podemos acessar o
`127.0.0.1` usando o nome  `localhost`. Assim, acessar `http://127.0.0.1/` é
equivalente a acessar `http://localhost/` e esta última forma é mais usada que
a primeira.

Se você tiver curiosidade para saber como associar um nome a um endereço IP,
abra o **"arquivo _hosts_"** do computador:
- No Windows, ele costuma ficar em: `C:\windows\system32\drivers\etc\hosts`
  (abra-o com o notepad++, por exemplo)
- No Ubuntu: `/etc/hosts` (abra-o com o gedit, por exemplo)


### Como descobrir o endereço IP do meu computador na rede local?

Para que outro computador possa acessar o seu, na rede, você deve fornecer a
ele qual é o endereço IP da sua máquina. Para descobrir, uma possível forma
é usando um comando no terminal:

- No Windows:
  ```
  C:\> ipconfig
  ```
- No Linux:
  ```
  $ ifconfig
  ```
