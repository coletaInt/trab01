/* DROP */
DROP TABLE IF EXISTS usuario CASCADE;
DROP TABLE IF EXISTS lixeira CASCADE;
DROP TABLE IF EXISTS manutencao CASCADE;
DROP TABLE IF EXISTS nv_lixo CASCADE;
DROP TABLE IF EXISTS permissao CASCADE;
DROP TABLE IF EXISTS situacao CASCADE;
DROP TABLE IF EXISTS chamado CASCADE;
DROP TABLE IF EXISTS status CASCADE;

/* Create */
create table usuario (
	id_usuario int,
	email varchar(50),
	senha varchar(20),
	nome_user varchar(50),
	id_permissao int,
	unique(id_usuario)
);
create table permissao (
	id_permissao int,
	tipo_permissao varchar(30),
	unique(id_permissao)
);
create table manutencao (
	id_manutencao int,
	id_lixeira int,
	data date,
	hora time,
	descricao varchar(50),
	unique(id_manutencao)
);
create table lixeira (
	id_lixeira int,
	id_situacao int,
	id_nv_lixo int,
	nome_lixo varchar(20),
	latitude float,
	longitude float,
	unique(id_lixeira)
);
create table nv_lixo (
	id_nv_lixo int,
	tipo_nv_lixo varchar(20),
	unique(id_nv_lixo)
);
create table situacao (
	id_situacao int,
	tipo_situacao varchar(20),
	unique(id_situacao)
);
create table status (
	id_status int,
	id_manutencao int,
	tipo_status varchar(20),
	unique(id_status)
);
create table chamado (
	id_chamado int,
	id_usuario int,
	data date,
	hora time,
	unique(id_chamado)
);

alter table usuario add primary key(id_usuario);
alter table permissao add primary key(id_permissao);
alter table lixeira add primary key(id_lixeira);
alter table manutencao add primary key(id_manutencao);
alter table nv_lixo add primary key(id_nv_lixo);
alter table situacao add primary key(id_situacao);
alter table chamado add primary key(id_chamado);
alter table status add primary key(id_status);

alter table usuario add foreign key(id_permissao) references permissao(id_permissao);
alter table manutencao add foreign key(id_lixeira) references lixeira(id_lixeira);
alter table lixeira add foreign key(id_nv_lixo) references nv_lixo(id_nv_lixo);
alter table lixeira add foreign key(id_situacao) references situacao(id_situacao);
alter table chamado add foreign key(id_usuario) references usuario(id_usuario);
alter table status add foreign key(id_manutencao) references manutencao(id_manutencao);

/* Insert */
insert into nv_lixo (id_nv_lixo, tipo_nv_lixo) values 
	(0, 'vazio'),
	(1, 'meio_vazio'),
	(2, 'meio'),
	(3, 'meio_cheio'),
	(4, 'cheio');

insert into permissao (id_permissao, tipo_permissao) values
	(0, 'Funcionario'),
	(1, 'Morador');

insert into usuario (id_usuario, email, senha, nome_user, id_permissao) values
	(10,'pedrocruz@test.com', '123456', 'Pedro Cruz', 1),
	(11,'kazushi@test.com', '123456', 'Kazushi', 1),
	(12,'brian@test.com', '123456', 'Brian', 0),
	(13,'marcelo@test.com', '123456', 'Marcelo', 0),
	(14,'jose@test.com', '123456', 'Jose', 0),
	(15,'manoel@test.com', '123456', 'Manoel', 1),
	(16,'julia@test.com', '123456', 'Julia', 0),
	(17,'thiago@test.com', '123456', 'Thiago', 1),
	(18,'maria@test.com', '123456', 'Maria', 0);

insert into situacao (id_situacao,tipo_situacao) values
	(1,'operante'),
	(0,'inoperante');

insert into lixeira (id_lixeira, nome_lixo, latitude, longitude, id_nv_lixo, id_situacao) values
	(1,'Quadra', 123.2312, -123.4232, 1, 1),
	(2,'Area de Festas', 324.1230, -12.2123, 2, 1),
	(3,'Piscina', 534.3214, 123.6045, 4, 1),
	(4,'Salão de Festas', 353.3544, 13.6045, 2, 1),
	(11,'Salão de Festas 2', 334.3214, 113.6045, 4, 0),
	(5,'Salão de Festas 3', 584.3214, 163.6045, 3, 1),
	(6,'Garagem', 114.3214, 23.6045, 0, 1),
	(7,'Garagem 2', 34.3214, 123.6045, 4, 0),
	(8,'Garagem 3', 57.3214, 98.6045, 1, 1),
	(9,'Garagem 4', 66.3214, 47.6045, 1, 1),
	(10,'Playground', 77.3214, 83.6045, 3, 1);