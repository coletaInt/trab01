create table usuario (email varchar(50),senha varchar(20),nome_user varchar(50),id_permissao int,nome_condominio varchar(100), num_apto int);
create table permissao (tipo_permissao varchar(30), id_permissao int);
create table lixeira (nome_lixo varchar(20),id_lixo int, latitude float,longitude float, id_nv_lixo int, nome_condominio varchar(100));
create table nv_lixo (tipo_nv_lixo varchar(50),id_nv_lixo int);
insert into nv_lixo (tipo_nv_lixo,id_nv_lixo) values ('vazio',0),('meio_vazio',1),('meio',2),('meio_cheio',3),('cheio',4);
insert into permissao (tipo_permissao,id_permissao) values ('Funcionario',1),('Morador',2);
