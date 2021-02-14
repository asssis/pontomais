# README

NOME: ASSIS JÚNIOR SIEBRA BARBOSA
EMPRESA: PONTO MAIS
CARGO: DESENVOLVIMENTO SENIOR BACKEND, FRONTEND OU FULLSTACK

ESSE PROJETO FOI DESENVOLVIDO NA LINGUAGEM RUBY 2.6.5 PURO, NÃO UTILIZA O FRAMEWORK RAILS

O BANCO USADO É O SQLITE, O AQUIVO SQLITE SE ENCONTRA NO PROJETO E O SCHEMA ESTÁ DENTRO DE [banco/schema.rb]

PARA VERIFICAR O TESTE FAVOR RODAR OS COMANDOS ABAIXOS

# COMANDOS ANTES DE USAR

* ter o ruby versão 2.6.5 instalado, caso não tenha => https://gist.github.com/asssis/d651462547018fd0b35a3b72a3da9f0f
* bundle => instalar as dependencias
* bundle exec rspec => realizar o teste automizado Rspec



# QUESTÃO 1
1) Faça uma função que receba uma string e retorne verdadeiro caso ela seja palíndromo, do contrário ela deve retornar falso. (palíndromos são palavras ou frases que podem ser lidas da esquerda para a direita ou da direita para a esquerda.) 

*Obs, esse teste eu coloquei um strip, independente se tiver espaço na esquerda ou na direita ele vai ignorar e dar como correta.

* ruby proj_exe_1.rb


# QUESTÃO 2
2) Faça uma função que receba uma string contendo um CPF e verifique se ele está formatado de acordo com a máscara 999.999.999-99. A função deve usar regex para fazer a validação da máscara e deve retornar verdadeiro ou falso. 
cpf = “461.636.517-23”
 

* ruby proj_exe_2.rb


# QUESTÃO 3

3) O fatorial de um número n!, é definido como o produto de todos os números inteiros de 1 a n. Por exemplo: 5! é 5 * 4 * 3 * 2 * 1 = 120 
A maioria das implementações de cálculo de fatoriais usam uma função recursiva para determinar o valor fatorial(n). No entanto, a maioria dos sistemas não consegue lidar com pilhas de recursividade maio res que 2000. 
Implemente uma função para calcular o fatorial de números arbitrariamente grandes, sem utilizar recursividade. 

Regras 
* n < 0 deve retornar nil 
* n = 0 deve retornar 1 
* n > 0 deve retornar n!

ruby proj_exe_3.rb


# QUESTÃO 4

4) A partir das tabelas do banco de dados abaixo, escreva uma query sql que através de join, retorne o nome completo, cpf, equipe e cargo dos colaboradores ordenando os por cpf. 

* ruby proj_exe_4.rb

select  
e.first_name || ' ' || e.last_name as full_name, 
e.cpf,
j.name as cargo,
t.name as equipe
from employees e 
inner join teams t on e.team_id = t.id  
inner join job_titles j on e.job_title_id = j.id
order by e.cpf


# QUESTÃO 5
5) Usando as tabelas do banco de dados do exercício anterior, escreva as classes das models Employee, Team e JobTitle, declare as associações das models e escreva a mesma query com a sintaxe do ActiveRecord. 

* ruby proj_exe_5.rb

# QUESTÃO 6
6) Descreva o que faz o seguinte comando e por que ele é amplamente utilizado: a ||= b 

Essa condição verifica se uma variavel do lado esquerdo é indefinida ou nil caso seja ele pega a variavel do lado direto e atribui a variavel direita, exemplo abaixo
a = 0
b = true
c = nil

a ||= 1 = 0
b ||= false = true
c ||= "teste" = "teste"
d ||= 1 = 1

# QUESTÃO 7
7) Qual a principal diferença entre estes dois métodos?

* ESSA FUNÇÃO NÃO HÁ DIFERENÇA ENTRE ESSES DOIS METODOS NO PROCESSO, mas ainda assim temos algumas observações a levar em consideração.

* OBS, o size no RUBY tem a funcionalidade de trazer a quantidade de algo ou tamanho, pelo fato de o ruby não ser TIPADO ele aceitaria qualquer entrada de dado pelos simples fato de aquele metodo não ter uma validação, validando por string, então por esse motivo podemos dizer que os metodos tem pequenas diferenças, o metodo do ruby aceitaria um inteiro que retornaria o tamanho de bytes utilizado, ou um bolleano que daria erro, no java só aceitaria string, qualquer outro tipo de variavel daria erro, ENTÃO PODEMOS DIZER QUE ESSES METODOS TEM PEQUENAS DIFERENÇAS.

# QUESTÃO 8
8) Qual o significado do self nas classes ruby? 

* A função da classe self é pegar o objeto da classe que esta sendo processado, uma classe pode ter varios objetos sendo processado,
quando eu digo que vou pegar self.nome. eu vou pegar ou atribuir algo na variavel daquele objeto.


# QUESTÃO 9
9) Quais as vantagens e desvantagens do ruby ser uma linguagem dinamicamente tipada?

* Essa questão eu vou responder de forma particular, eu ja atuei com JAVA, C#, C++, e a vantagem que eu vejo é que no ruby eu tenho
mais liberdade de trabalhar com as variaveis, principalmente quando vou trabalhar com sistemas dinamicos, eu não preciso me preocupar o que vou
colocar na variavel, levando em consideração sempre a validação do dado, mas de todas linguagens eu gosto muito de atuar com ruby on rails por esse simples motivo, outras linguagens também adontam a variavel dinamica, mas mesmo assim eu me sinto meio travado quando trabalho com outras linguagens.