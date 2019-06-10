# TRABALHO 01:  TrashMe
Trabalho desenvolvido durante a disciplina de BD1

# Sumário

### 1. COMPONENTES<br>
Integrantes do grupo<br>

Brian Icaro Diaz Marques: brian.icaro.dm@gmail.com<br>
Ramon Kazushi Cossual Sakurada: kazushisakurada@icloud.com<br>
Pedro Cruz Nunes Silva: pedrocruzns@gmail.com<br>
Marcelo Oliveira: mos.marcelo17@gmail.com<br>

### 2.INTRODUÇÃO E MOTIVAÇAO<br>
> O projeto tem como objetivo auxiliar no descarte e na coleta de lixo, mostrando os níveis de lixo presente nas lixeiras para assim saber quando é possível fazer o recolhimento do lixo ou se é possível efetuar o descarte de lixo na lixeira, reduzindo uma ida desnecessária ao local e planejando assim uma melhor rota para a coleta.<br>


### 3.MINI-MUNDO Novo<br>
> O sistema propoe uma solução para a organização relacionada a manutenção de um conjunto de lixeiras de um condomínio.  A proposta seria criar um app, chamado "TrashMe", que mostrasse para usuários e funcionários do condomínio, o estado que as lixeiras se encontram, antes de descer com o lixo da sua casa, ou antes de verificar quais lixeiras devem ser recolhidas, respectivamente. Com isso, propomos um maior controle, e organização do tempo de trabalho dos funcionários, como também melhoramos a qualidade de vida do morador, que não precisa retirar todo o lixo da casa, e voltar com ele depois de descer e subir um lance de escadas, ou ate mesmo saber qual lixeira usar e quando usar.
Em relação as lixeiras, nós trabalharemos com um sensor, que nos retorna o estado, ou "situação" que ela se encontra, que foi um valor definido em 5 pontos: Vazia/0%, Quase na metade/25%, Metade da capacidade/50%, Quase em sua lotação máxima/75%, e Em Lotação máxima/100%. Nos momentos que ela estivesse entre 75 e 100%, os funcionários seriam notificados, para que houvesse a troca e reposição dos sacos das lixeiras e essa informaçao aparecera para os moradores para nao ultilizarem a mesma.
Em relação aos funcionários, seriam armazenadas as informações de cadastro deles, e seria liberado para eles a permissão de enviar uma notificação para os moradores que estavam esperando, para poder descer com o lixo.
Em relação aos moradores, seriam armazenadas as informações de cadastro de moradores, e seria liberado para eles a permissão de abrir um chamado para coleta de lixo, além da coleta diária, caso os níveis de lotação das lixeiras os impeça de descer com o lixo no nomento.
Em relação ao condomínio, ou ao síndico, caberia a ele cadastrar o código do condomínio, as lixeiras, setar as permissões[morador ou funcionário], e cadastrar todas as lixeiras do condomínio.

### 4.RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>

[Protótipo](https://github.com/coletaInt/trab01/blob/master/arquivos/TrashMe.pdf)

#### 4.1 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?
* Relatório do volume atual das lixeiras que informe: ID da lixeira, data e hora da última atualização, seu volume anterior e o atual;
* Relatório das lixeiras próximas disponíveis para descarte que informe: coordenadas e ID’s das lixeiras próximas;
* Relatório das lixeiras que atingiram nível igual ou superior a 70% da capacidade máxima que informe: código e nível de preenchimento das lixeiras;
* Relatório da rota otimizada para o motorista que informe a rota e o seu tempo médio estimado;
* Relatório da situação operante das lixeiras que informe: status de operação (operante ou inoperante) e descrição de situação
 
 
#### 4.2 TABELA DE DADOS DO SISTEMA:
    a) Esta tabela deve conter todos os atributos do sistema e um mínimo de 10 linhas/registros de dados.
    b) Esta tabela tem a intenção de simular um relatório com todos os dados que serão armazenados 
    e deve ser criada antes do modelo conceitual
    c) Após criada esta tabela não deve ser modificada, pois será comparada com os resultados finais na conclusão do trabalho
    
[Tabela de Dados - TrashMe](https://github.com/coletaInt/trab01/blob/master/app_lixo.xlsx?raw=true "Tabela de Dados - TrashMe")
    
>## Marco de Entrega 01 em: (06/09/2018)<br>

### 5.MODELO CONCEITUAL<br>
    A) NOTACAO ENTIDADE RELACIONAMENTO 
        * Para nosso prótótipo limitaremos o modelo conceitual nas 6 principais entidades do escopo
        * O protótipo deve possui no mínimo duas relações N para N
        * o mínimo de entidades do modelo conceitual será igual a 5
      
![Modelo_conceitual](https://github.com/coletaInt/trab01/blob/master/modelo_conceitual04.png?raw=true)
    B) NOTACAO UML (Caso esteja fazendo a disciplina de analise)
    C) QUALIDADE 
        Garantir que a semântica dos atributos seja clara no esquema
        Criar o esquema de forma a garantir a redução de informação redundante, possibilidade de valores null, 
        e tuplas falsas
    
        
    
#### 5.1 Validação do Modelo Conceitual
    [E-Xames Online]: [Gabriel Viggiano, Morgana Vettorazzi, Renato Bellumat, Ícaro Gandine]
    [Lixeira Inteligente]: [Lavinia Corteletti, Jackson William, Thiago Moreira, Vinicius Freitas]

#### 5.2 DECISÕES DE PROJETO

* **id_usuario/lixeira/manutencao/situacao/permissao/nv_lixo** : Decidimos manter todos os "**id**" do projeto, serão 
    trabalhados com o tipo serial,que é um int, mas que age de forma sequencial, conforme for inserido na tabela.
    Todas as tabelas do projeto possuem um ID,para poderem ser identificadas por ele.
    
* **Situação/NV_Lixo**: Decidimos deixar os dois dados separados, para evitar possíveis confusões entre o valor
    de ambos. Assim sendo, a situacao nos entrega a informação sobre a lixeira, se ela se encontra operante
    ou não na determinada lixeira, enquanto o nv_lixo nos mostra em qual nivel que a lixeira se encontra,
    variando entre vazia(valor: `vazio`), até estar lotada(valor: `cheio`).
    
* **Permissão**: A fim de determinar quem pode fazer qual requisição nas lixeiras, definimos dois tipos de permissão: `Morador`,
    e `Funcionario`, para poder controlar o recolhimento, manutenção, requisições e afins.
    
* **Usuário**: Para cadastro de usuário, decidimos optar pelo simples, utilizando apenas email, nome e senha para cadastro,
    e então atribuimos uma id ao usuário(id_usuario), assim como a sua permissao`(id_permissao)`.
    
* **Lixeira**: Para a lixeira, alem de darmos uma identificação com serial para ela, damos um nome, para facilitar a sua
    localização no determinado setor, e sua localização com latitude/longitude.

* **Manutenção**: Para a questão da manutenção, a gente decidiu manter data e hora separadas, em vez de fazer a utilização de um
    `datetime` ou `timestamp`, por crer que pode vir a causar uma melhor organização da manutenção que virá a ocorrer
    nas determinadas lixeiras. Além disso, é armazenada uma id da manutenção, para caso haja necessidade de protocolar as
    manutenções ocorridas, o id do usuário que vai realizar a manutenção, e a lixeira a ser consertada/esvaziada.
        
    [atributo]: [descrição da decisão]
    
    EXEMPLO:
    a) Campo endereço: em nosso projeto optamos por um campo multivalorado e composto, pois a empresa 
    pode possuir para cada departamento mais de uma localização... 
    b) justifique!

>## Marco de Entrega 02 em: (30/04/2019)<br>
#### 5.3 DESCRIÇÃO DOS DADOS 
```
    [USUARIO]: tabela que contém informações sobre o usuário.
    - id_usuario: campo que contém identificação do usuário.
    - id_permissao: campo que contém identificação da permissão. Campo que contém o tipo de classificação do usuário  (cliente ou funcionário).
    - email: campo que contém email do usuário.
    - senha: campo que contém a senha do usuário.
    - nome: campo que contém o nome do usuário.
```

```
    [PERMISSAO]: tabela que contém informações sobre a permissão dos usuários do aplicativo.
    - id_permissao: campo que contém identificação da permissão.
    - tipo_permissao: campo que descreve o tipo de classificação do usuário (cliente ou funcionário).
```

```
   [CHAMADO]:tabela que cliente abre para gerar uma manutençao em uma lixeira especifica.
   - id_chamado: campo que contém indentificação do chamado aberto pelo cliente.
   - data: campo que contém a data que o cliente abriu o chamado.
   - id_usuario campo que contém a identificação de qual cliente fez o chamado.
   - hora: campo que contém a hora que o chamado foi aberto pelo usuário.

```

```
    [LIXEIRA]: tabela que contém informação das lixeiras cadastradas no aplicativo.
    - id_lixeira: campo que contém identificação da lixeira.
    - nome_lixo: campo que contém um “codinome” para a lixeira.
    - latitude: campo que contém a latitude da lixeira para localização da mesma.
    - longitude: campo que contém longitude para a localização da lixeira.
    - id_nv_lixo: campo que contém identificação do nível do lixo.
    - id_situacao: campo que contém identificação sobre a situação da lixeira.
```

```
    [SITUACAO]: tabela que contém informações sobre a situação em que se encontra a lixeira.
    - id_situacao: campo que contém identificação sobre a situação da lixeira.
    - tipo_situacao: campo que contém o estado da lixeira. como se está apta para uso ou em manutenção ou desativada por exemplo.
```

```
    [NV_LIXO]: tabela que contém informações sobre o nível e tipo do lixo na lixeira:
    - id_nv_lixo: campo que contém identificação do nível do lixo.
    - tipo_nv_lixo: campo que contém informação sobre o nível de preenchimento da lixeira (vazio,meio vazio, meio, meio cheio, cheio).
```

```
    [MANUTENCAO]: tabela que contém informação sobre a manutenção que foi executada ou solicitada pelo usuário.
    - id_manutencao: campo que contém a identificação da manutenção.
    - id_lixeira: campo que contém a identificação da lixeira que está sendo realizada a manutenção.
    - data: campo que contém data que foi feita a última alteração da tabela sendo a primeira a solicitação e a segunda quando foi executada. 
    - hora: campo que contém hora que foi feita a última alteração da tabela sendo a primeira a solicitação e a segunda - quando foi executada. 
    - descricao: campo que contém a descrição da manutenção ou do pedido ou da atividade.
```

```
   [STATUS]: tabela que tem o processo atual da manutenção realizada ate o momento.
   - id_status: campo que contém a identificação do status.
   - tipo_status: campo que contém o andamento do status se esta concluido, em andamento entre outros.
   - id_manutencao: campo que contém a identificação da manutenção na qual o status se refere. 

```


### 6	MODELO LÓGICO<br>
![Modelo_Lógico](https://github.com/coletaInt/trab01/blob/master/L%C3%B3gico04.png?raw=true)
        a) inclusão do modelo lógico do banco de dados
        b) verificação de correspondencia com o modelo conceitual 
        (não serão aceitos modelos que não estejam em conformidade)

### 7	MODELO FÍSICO<br>
[Instruções de Criacão Modelo Físico](https://github.com/coletaInt/trab01/blob/master/arquivos/TrashMeBD_Modelo_Fisico.sql)<br>        
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
#### 8.1 DETALHAMENTO DAS INFORMAÇÕES
   [Inserção das tabelas](https://github.com/coletaInt/trab01/blob/master/arquivos/TrashMeBD_Insert.sql)<br>

#### 8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELAS E INSERÇÃO DOS DADOS
   [Criação das tabelas](https://github.com/coletaInt/trab01/blob/master/arquivos/TrashMeBD_Create_Insert.sql)<br>

#### 8.3 INCLUSÃO DO SCRIPT PARA EXCLUSÃO DE TABELAS EXISTENTES, CRIAÇÃO DE TABELA NOVAS E INSERÇÃO DOS DADOS
   [Criação, Inserção e Exclusão das tabelas](https://github.com/coletaInt/trab01/blob/master/arquivos/TrashMeBD_Drop_Create_Insert.sql)<br>

#### 8.4 Principais fluxos de informação e principais tabelas do sistema
    ##### Os principais fluxos de dados de informação no sistema em desenvolvimento
    - Nv_Lixo (Nível da porcentagem de lixo presente nas lixeiras, alimentada pelos usuários)
    - Situacao (Status da condição de uso das lixeiras, alimentada pelos usuários)
    - Lixeira (Nível da porcentagem de lixo atual na lixeira, alimentada pela porcentagem de lixo no descarte e na coleta)
    ##### As tabelas que conterão mais dados no sistema em desenvolvimento
    - Nv_Lixo
    - Lixeira
    - Usuario
    ##### As 5 principais tabelas do sistema em desenvolvimento
    - Lixeira
    - Nv_Lixo
    - Usuario
    - Manutencao
    - Situacao
>## Marco de Entrega 03 em: (27/09/18) <br>

### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
    OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>

    select * from lixeira;
![SelectLixeira](https://github.com/coletaInt/trab01/blob/master/images/selectLixeira.png)

    select * from manutencao;
![SelectManutencao](https://github.com/coletaInt/trab01/blob/master/images/selectManutencao.png)

    select * from manutencao_chamado;
![SelectManutencao_Chamado](https://github.com/coletaInt/trab01/blob/master/images/selectManutencao_Chamado.png)

    select * from nv_lixo;
![SelectNv_Lixo](https://github.com/coletaInt/trab01/blob/master/images/selectNv_lixo.png)

    select * from permissao;
![SelectPermissao](https://github.com/coletaInt/trab01/blob/master/images/selectPermissao.png)

    select * from situacao;
![SelectSituacao](https://github.com/coletaInt/trab01/blob/master/images/selectSituacao.png)

    select * from status;
![SelectStatus](https://github.com/coletaInt/trab01/blob/master/images/selectStatus.png)

    select * from usuario;
![SelectUsuario](https://github.com/coletaInt/trab01/blob/master/images/selectUsuario.png)

    select * from executa;
![SelectExecuta](https://github.com/coletaInt/trab01/blob/master/images/selectExecuta.png)

#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>

    select * from lixeira
    where fk_situacao_id_situacao = 1;

![selectLixeiraWhere](https://github.com/coletaInt/trab01/blob/master/images/selectLixeiraWhere.png)

    select * from permissao
    where id_permissao = 0;

![selectPermissaoWhere](https://github.com/coletaInt/trab01/blob/master/images/selectPermissaoWhere.png)

    select * from nv_lixo
    where id_nv_lixo >= 2;

![selectNvLixoWhere](https://github.com/coletaInt/trab01/blob/master/images/selectNvLixoWhere.png)
   
    select * from usuario
    where fk_permissao_id_permissao = 1;

![selectUsuarioWhere](https://github.com/coletaInt/trab01/blob/master/images/selectUsuarioWhere.png)



#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11)
    a) Criar 5 consultas que envolvam os operadores lógicos AND, OR e Not
    
    select * from usuario
    where fk_permissao_id_permissao = 1 and id_usuario > 11;
![9.3A-1](https://github.com/coletaInt/trab01/blob/master/images/9.3-1.png)    
    
    select * from nv_lixo
    where id_nv_lixo > 2 OR id_nv_lixo < 2;
![9.3A-2](https://github.com/coletaInt/trab01/blob/master/images/9.3-2.png)      
    
    select * from lixeira
    where fk_situacao_id_situacao is not null;
![9.3A-3](https://github.com/coletaInt/trab01/blob/master/images/9.3-3.png)  

    select * from lixeira
    where fk_nv_lixo_id_nv_lixo <1 or fk_nv_lixo_id_nv_lixo >3;
![9.3A-4](https://github.com/coletaInt/trab01/blob/master/images/9.3-4.png)      
    
    select * from lixeira
    where id_lixeira > 5 and fk_situacao_id_situacao = 0;
![9.3A-5](https://github.com/coletaInt/trab01/blob/master/images/9.3-5.png)      
    
    b) Criar no mínimo 3 consultas com operadores aritméticos 
    
    select * from nv_lixo
    where id_nv_lixo > 2;
![9.3B-1](https://github.com/coletaInt/trab01/blob/master/images/9.3B-1.png)    
    
    select * from usuario
    where fk_permissao_id_permissao = 0;
![9.3B-2](https://github.com/coletaInt/trab01/blob/master/images/9.3B-2.png) 

    select * from lixeira
    where id_lixeira < 6;
![9.3B-3](https://github.com/coletaInt/trab01/blob/master/images/9.3B-3.png) 

    c) Criar no mínimo 3 consultas com operação de renomear nomes de campos ou tabelas
    
    alter table lixeira
    rename column nome_lixo to nome_lixoso;
![9.3C-1](https://github.com/coletaInt/trab01/blob/master/images/9.3C-1.png)    
    
    alter table usuario
    rename column senha to pswrd;
![9.3C-2](https://github.com/coletaInt/trab01/blob/master/images/9.3C-2.png)     
    
    alter table status
    rename column tipo_status to desc_status;
![9.3C-3](https://github.com/coletaInt/trab01/blob/master/images/9.3C-3.png) 
    
#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE E DATAS (Mínimo 12) <br>
    a) Criar outras 5 consultas que envolvam like ou ilike
    select * from lixeira
    where nome_lixo like 'G%';
![9.4A-1](https://github.com/coletaInt/trab01/blob/master/images/9.4A-1.png)

    select * from usuario
    where nome_user ilike 'B%';
![9.4A-2](https://github.com/coletaInt/trab01/blob/master/images/9.4A-2.png)    

    select * from nv_lixo
    where tipo_nv_lixo ilike 'M%';
![9.4A-3](https://github.com/coletaInt/trab01/blob/master/images/9.4A-4.png)  

    select * from manutencao
    where descricao like 'lix%';
![9.4A-4](https://github.com/coletaInt/trab01/blob/master/images/9.4A-5.png)

    select * from situacao
    where tipo_situacao ilike 'operante';
![9.4A-5](https://github.com/coletaInt/trab01/blob/master/images/9.4A-5.png)   

    b) Criar uma consulta para cada tipo de função data apresentada.
    select id_usuario,
    current_date as data_atual,
    data,
    (age(current_date, data))
    from chamado;
![9.4B-1](https://github.com/coletaInt/trab01/blob/master/images/9.4B-1.png)    

    select descricao,
    current_date as data_atual,
    data,
    date_part('year', (age(current_date, data))) as idade
    from manutencao;
![9.4B-2](https://github.com/coletaInt/trab01/blob/master/images/9.4B-2.png)   

    select descricao,
    current_date as data_atual,
    extract('year' from data)
    from manutencao;
![9.4B-3](https://github.com/coletaInt/trab01/blob/master/images/9.4B-3.png)       

#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>

    insert into status
    values(3, 'deu ruim');
![9.5Insert1](https://github.com/coletaInt/trab01/blob/master/images/9.5Insert1.png)

    insert into permissao
    values(2, 'gerente');
![9.5Insert2](https://github.com/coletaInt/trab01/blob/master/images/9.5Insert2.png)

    insert into usuario (id_usuario, email, senha, nome, FK_PERMISSAO_id_permissao) values
	        (33,'huguinho@ducktales.com', MD5('332068'), 'Huguinho', 1),
	        (34,'zezinho@ducktales.com', MD5('342068'), 'Zezinho', 1),
	        (35,'luisinho@ducktales.com', MD5('352068'), 'Luisinho', 1);
![9.5Insert3](https://github.com/coletaInt/trab01/blob/master/images/9.5Insert3.png)
    
    delete from status
    where id_status = 3;
![9.5Delete1](https://github.com/coletaInt/trab01/blob/master/images/9.5Delete1.png)
    
    delete from permissao
    where id_permissao = 2;
![9.5Delete2](https://github.com/coletaInt/trab01/blob/master/images/9.5Delete2.png)
    
    delete from usuario
    where id_usuario > 32;
![9.5Delete3](https://github.com/coletaInt/trab01/blob/master/images/9.5Delete3.png)

>## Marco de Entrega 04 em: (18/10/2017)<br>

#### 9.6	CONSULTAS COM JUNÇÃO E ORDENAÇÃO (Mínimo 6)<br>
        a) Uma junção que envolva todas as tabelas possuindo no mínimo 3 registros no resultado
	
	select ex.fk_manutencao_chamado_id_manutencao, 
		ex.fk_usuario_id_usuario,
		manu.id_lixeira,
		manu.descricao,
		lix.nome_lixo,
		chamado.fk_status_id_status,
		status.tipo_status,
		nvLixo.tipo_nv_lixo,
		usu.email,
		usu.nome,
		perm.tipo_permissao
	from executa as ex
	inner join manutencao as manu on(ex.fk_manutencao_chamado_id_manutencao = manu.id_manutencao)
	inner join manutencao_chamado as chamado on(manu.id_manutencao = chamado.id_manutencao)
	inner join status as status on(status.id_status = chamado.fk_status_id_status)
	inner join lixeira as lix on(manu.id_lixeira = lix.id_lixeira)
	inner join nv_lixo as nvLixo on(lix.fk_nv_lixo_id_nv_lixo = nvLixo.id_nv_lixo)
	inner join usuario as usu on(chamado.fk_usuario_id_usuario = usu.id_usuario)
	inner join permissao as perm on(usu.fk_permissao_id_permissao = perm.id_permissao );
![9.6A](https://github.com/coletaInt/trab01/blob/master/images/9.6A.png)
	
        b) Outras junções que o grupo considere como sendo as de principal importância para o trabalho
#### 9.7	CONSULTAS COM GROUP BY E FUNÇÕES DE AGRUPAMENTO (Mínimo 6)<br>
#### 9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4)<br>
#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)<br>
        a) Uma junção que envolva Self Join
        b) Outras junções com views que o grupo considere como sendo de relevante importância para o trabalho
#### 9.10	SUBCONSULTAS (Mínimo 3)<br>
### 10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES PARA APRESENTAÇAO FINAL (Mínimo 6 e Máximo 10)<br>

### 11 Backup completo do banco de dados postgres 
    a) deve ser realizado no formato "backup" 
        (Em Dump Options #1 Habilitar opções Don't Save Owner e Privilege)
    b) antes de postar o arquivo no git o mesmo deve ser testado/restaurado por outro grupo de alunos/dupla
    c) informar aqui o grupo de alunos/dupla que realizou o teste.

### 12	TUTORIAL COMPLETO DE PASSOS PARA RESTAURACAO DO BANCO E EXECUCAO DE PROCEDIMENTOS ENVOLVIDOS NO TRABALHO PARA OBTENÇÃO DOS RESULTADOS<br>
        a) Outros grupos deverão ser capazes de restaurar o banco 
        b) executar todas as consultas presentes no trabalho
        c) executar códigos que tenham sido construídos para o trabalho 
        d) realizar qualquer procedimento executado pelo grupo que desenvolveu o trabalho
        
### 13   DIFICULDADES ENCONTRADAS PELO GRUPO<br>
>## Marco de Entrega Final em: (08/11/2018)<br>
        
### 14  FORMATACAO NO GIT: https://help.github.com/articles/basic-writing-and-formatting-syntax/
<comentario no git>
    
##### About Formatting
    https://help.github.com/articles/about-writing-and-formatting-on-github/
    
##### Basic Formatting in Git
    
    https://help.github.com/articles/basic-writing-and-formatting-syntax/#referencing-issues-and-pull-requests
    
    
##### Working with advanced formatting
    https://help.github.com/articles/working-with-advanced-formatting/
#### Mastering Markdown
    https://guides.github.com/features/mastering-markdown/



    

    
### OBSERVAÇÕES IMPORTANTES

#### Todos os arquivos que fazem parte do projeto (Imagens, pdfs, arquivos fonte, etc..), devem estar presentes no GIT. Os arquivos do projeto vigente não devem ser armazenados em quaisquer outras plataformas.
1. <strong>Caso existam arquivos com conteúdos sigilosos<strong>, comunicar o professor que definirá em conjunto com o grupo a melhor forma de armazenamento do arquivo.

#### Todos os grupos deverão fazer Fork deste repositório e dar permissões administrativas ao usuário do git "profmoisesomena", para acompanhamento do trabalho.

#### Os usuários criados no GIT devem possuir o nome de identificação do aluno (não serão aceitos nomes como Eu123, meuprojeto, pro456, etc). Em caso de dúvida comunicar o professor.


Link para BrModelo:<br>
http://www.sis4.com/brModelo/download.html
<br>


Link para curso de GIT<br>
![https://www.youtube.com/curso_git](https://www.youtube.com/playlist?list=PLo7sFyCeiGUdIyEmHdfbuD2eR4XPDqnN2?raw=true "Title")


