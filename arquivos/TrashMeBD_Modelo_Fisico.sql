create table usuario (id_usuario int, email varchar(50),senha varchar(20),nome_user varchar(50),id_permissao int, unique(id_usuario));
create table permissao (id_permissao int, tipo_permissao varchar(30), unique(id_permissao));
create table manutencao (id_manutencao int, id_lixeira int, data date, hora time, descricao varchar(50), unique(id_manutencao));
create table lixeira (id_lixeira int, id_situacao int, id_nv_lixo int, nome_lixo varchar(20), latitude float,longitude float, unique(id_lixeira));
create table nv_lixo (id_nv_lixo int, tipo_nv_lixo varchar(20), unique(id_nv_lixo));
create table situacao (id_situacao int, tipo_situacao varchar(20), unique(id_situacao));

alter table usuario add primary key(id_usuario);
alter table permissao add primary key(id_permissao);
alter table lixeira add primary key(id_lixeira);
alter table manutencao add primary key(id_manutencao);
alter table nv_lixo add primary key(id_nv_lixo);
alter table situacao add primary key(id_situacao);

alter table usuario add foreign key(id_permissao) references permissao(id_permissao);
alter table manutencao add foreign key(id_lixeira) references lixeira(id_lixeira);
alter table lixeira add foreign key(id_nv_lixo) references nv_lixo(id_nv_lixo);
alter table lixeira add foreign key(id_situacao) references situacao(id_situacao);