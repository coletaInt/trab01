create table usuario (id_usuario serial, email varchar(50),senha varchar(20),nome_user varchar(50),id_permissao int);
create table permissao (id_permissao serial, tipo_permissao varchar(30));
create table lixeira (id_lixeira serial, nome_lixo varchar(20), latitude float,longitude float, id_nv_lixo int, id_situacao int);
create table nv_lixo (id_nv_lixo serial, tipo_nv_lixo varchar(50));
create table situacao (id_situacao serial, tipo_situacao varchar(20));
create table manutencao (id_manutencao serial, id_lixeira int, data date, hora time, id_usuario int, descricao varchar(50));

insert into nv_lixo (tipo_nv_lixo) values ('vazio'),('meio_vazio'),('meio'),('meio_cheio'),('cheio');
insert into permissao (tipo_permissao) values ('Funcionario'),('Morador');
insert into usuario (email, senha, nome_user, id_permissao) values('pedrocruz@test.com', '123456', 'Pedro Cruz', 2), ('kazushi@test.com', '123456', 'Kazushi', 2), ('brian@test.com', '123456', 'Brian', 1), ('marcelo@test.com', '123456', 'Marcelo', 1);
insert into lixeira (nome_lixo, latitude, longitude, id_nv_lixo) values('Quadra', 123.2312, -123.4232, 1), ('Area de Festas', 324.1230, -12.2123, 2), ('Piscina', 534.3214, 123.6045, 4);
insert into situacao (tipo_situacao) values('operante'), ('inoperante');