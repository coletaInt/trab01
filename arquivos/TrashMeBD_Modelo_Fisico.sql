/* Create */
CREATE TABLE USUARIO (
    id_usuario int PRIMARY KEY,
    email varchar(30),
    senha varchar(50),
    nome varchar(30),
    FK_PERMISSAO_id_permissao int
);

CREATE TABLE PERMISSAO (
    id_permissao int PRIMARY KEY,
    tipo_permissao varchar(30)
);

CREATE TABLE LIXEIRA (
    id_lixeira int PRIMARY KEY,
    nome_lixo varchar(50),
    latitude float,
    longitude float,
    FK_SITUACAO_id_situacao int,
    FK_NV_LIXO_id_nv_lixo int
);

CREATE TABLE NV_LIXO (
    id_nv_lixo int PRIMARY KEY,
    tipo_nv_lixo varchar(30)
);

CREATE TABLE SITUACAO (
    id_situacao int PRIMARY KEY,
    tipo_situacao varchar(30)
);

CREATE TABLE MANUTENCAO_CHAMADO (
    id_manutencao int PRIMARY KEY,
    data date,
    hora time,
    FK_LIXEIRA_id_lixeira int,
    descricao varchar(50),
    FK_USUARIO_id_usuario int,
    FK_STATUS_id_status int
);

CREATE TABLE STATUS (
    id_status int PRIMARY KEY,
    tipo_status varchar(30)
);

CREATE TABLE Executa (
    fk_MANUTENCAO_CHAMADO_id_manutencao int,
    fk_USUARIO_id_usuario int,
    data date,
    hora time
);
 
ALTER TABLE USUARIO ADD CONSTRAINT FK_USUARIO_2
    FOREIGN KEY (FK_PERMISSAO_id_permissao)
    REFERENCES PERMISSAO (id_permissao)
    ON DELETE RESTRICT;
 
ALTER TABLE LIXEIRA ADD CONSTRAINT FK_LIXEIRA_2
    FOREIGN KEY (FK_SITUACAO_id_situacao)
    REFERENCES SITUACAO (id_situacao)
    ON DELETE CASCADE;
 
ALTER TABLE LIXEIRA ADD CONSTRAINT FK_LIXEIRA_3
    FOREIGN KEY (FK_NV_LIXO_id_nv_lixo)
    REFERENCES NV_LIXO (id_nv_lixo)
    ON DELETE CASCADE;
 
ALTER TABLE MANUTENCAO_CHAMADO ADD CONSTRAINT FK_MANUTENCAO_CHAMADO_2
    FOREIGN KEY (FK_LIXEIRA_id_lixeira)
    REFERENCES LIXEIRA (id_lixeira)
    ON DELETE CASCADE;
 
ALTER TABLE MANUTENCAO_CHAMADO ADD CONSTRAINT FK_MANUTENCAO_CHAMADO_3
    FOREIGN KEY (FK_USUARIO_id_usuario)
    REFERENCES USUARIO (id_usuario);
 
ALTER TABLE MANUTENCAO_CHAMADO ADD CONSTRAINT FK_MANUTENCAO_CHAMADO_4
    FOREIGN KEY (FK_STATUS_id_status)
    REFERENCES STATUS (id_status);
 
ALTER TABLE Executa ADD CONSTRAINT FK_Executa_1
    FOREIGN KEY (fk_MANUTENCAO_CHAMADO_id_manutencao)
    REFERENCES MANUTENCAO_CHAMADO (id_manutencao)
    ON DELETE SET NULL;
 
ALTER TABLE Executa ADD CONSTRAINT FK_Executa_2
    FOREIGN KEY (fk_USUARIO_id_usuario)
    REFERENCES USUARIO (id_usuario)
    ON DELETE SET NULL;