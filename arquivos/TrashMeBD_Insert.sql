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

insert into usuario (id_usuario, email, senha, nome, FK_PERMISSAO_id_permissao) values
	(10,'pedrocruz@test.com', MD5('13456'), 'Pedro Cruz', 0),
	(11,'kazushi@test.com', MD5('156456'), 'Kazushi', 0),
	(12,'brian@test.com', MD5('175460'), 'Brian', 0),
	(13,'marcelo@test.com', MD5('198556'), 'Marcelo', 0),
	(14,'jose@test.com', MD5('198436'), 'Jose', 1),
	(15,'manoel@test.com', MD5('162342'), 'Manoel', 1),
	(16,'julia@test.com', MD5('105834'), 'Julia', 1),
	(17,'thiago@test.com', MD5('133245'), 'Thiago', 0),
	(18,'maria@test.com', MD5('193472'), 'Maria', 1),
	(19,'lucas@test.com', MD5('543253'), 'Lucas', 1),
	(20,'guilher@test.com', MD5('234123'), 'Guilherme', 1),
	(21,'jorge@test.com', MD5('765342'), 'Jorge', 1),
	(22,'ana@test.com', MD5('567234'), 'Ana', 0),
	(23,'miguel@test.com', MD5('935244'), 'Miguel', 1),
	(24,'moises@test.com', MD5('748345'), 'Moises', 1),
	(25,'rafael@test.com', MD5('345642'), 'Rafael', 0),
	(26,'ramon@test.com', MD5('854765'), 'Ramon', 1),
	(27,'felipe@test.com', MD5('987508'), 'Felipe', 1),
	(28,'renato@test.com', MD5('980754'), 'Renato', 1),
	(29,'ricardo@test.com', MD5('097897'), 'Ricardo', 0),
	(30,'vinicius@test.com', MD5('479334'), 'Vinicius', 1);

insert into situacao (id_situacao,tipo_situacao) values
	(1,'operante'),
	(0,'inoperante');

insert into lixeira (id_lixeira, nome_lixo, latitude, longitude, FK_SITUACAO_id_situacao, FK_NV_LIXO_id_nv_lixo) values
	(1,'Quadra', 123.2312, -123.4232, 0, 0),
	(2,'Area de Festas', 324.1230, -12.2123, 0, 0),
	(3,'Piscina', 534.3214, 123.6045, 0, 0),
	(4,'Salão de Festas', 353.3544, 13.6045, 0, 0),
	(5,'Salão de Festas 3', 584.3214, 163.6045, 0, 0),
	(6,'Garagem', 114.3214, 23.6045, 0, 0),
	(7,'Garagem 2', 34.3214, 123.6045, 0, 0),
	(8,'Garagem 3', 57.3214, 98.6045, 0, 0),
	(9,'Garagem 4', 66.3214, 47.6045, 0, 0),
	(10,'Playground', 77.3214, 83.6045, 0, 0),
	(11,'Condominio 1', 77.3214, 83.6045, 0, 0),
	(12,'Condominio 2', 77.3214, 83.6045, 1, 2),
	(13,'Churrasqueira 1', 77.3214, 83.6045, 1, 1),
	(14,'Churrasqueira 2', 77.3214, 83.6045, 1, 4),
	(15,'Churrasqueira 3', 77.3214, 83.6045, 1, 3),
	(16,'Churrasqueira 4', 77.3214, 83.6045, 1, 3),
	(17,'Área comum', 77.3214, 83.6045, 1, 3),
	(18,'Jardim', 77.3214, 83.6045, 1, 2),
	(19,'Jardim 2', 77.3214, 83.6045, 1, 4),
	(20,'Bosque', 77.3214, 83.6045, 1, 1),
	(21,'Salão de Festas 2', 334.3214, 113.6045, 1, 2);

insert into status (id_status, tipo_status) values
	(0, 'Em aberto' ),
	(1, 'Em progresso' ),
	(2, 'Finalizado' );

insert into manutencao_chamado (id_manutencao, fk_lixeira_id_lixeira, data, hora, descricao, fk_USUARIO_id_usuario, FK_STATUS_id_status) values
	(154, 1, '2019-12-10', '10:02:10', 'lixeira com defeito no sensor', 12, 0),
	(454, 2, '2018-03-20', '10:22:00', 'lixeira quebrada', 10, 2),
	(399, 3, '2017-05-15', '10:32:00', 'lixeira pingando gordura', 11, 2),
	(455, 4, '2019-06-22', '10:52:02', 'lixeira fora lugar', 25, 0),
	(121, 5, '2019-09-19', '10:42:06', 'lixeira emperrada', 22, 0),
	(555, 6, '2019-10-26', '10:59:08', 'sensor da lixeira travando', 13, 1),
	(635, 7, '2016-01-24', '09:06:10', 'lixeira suja', 29, 2),
	(74256, 8, '2016-03-05', '12:13:12', 'lixeira com fezes', 17, 2),
	(9555, 9, '2015-09-27', '10:20:59', 'sensor queimado', 11, 2),
	(1000, 10, '2019-09-20', '11:09:58', 'lixeira desaparecida', 12, 0),
	(788, 11, '2014-02-15', '09:10:55', 'lixeira vandalizada', 10, 2);

insert into executa (fk_MANUTENCAO_CHAMADO_id_manutencao, fk_USUARIO_id_usuario, data, hora) VALUES
	(154, 12, '2019-12-10', '10:02:10'),
	(454, 10, '2018/03/20', '10:22:00'),
	(399, 11, '2017/05/15', '10:32:00'),
	(455, 25, '2019/06/22', '10:52:02'),
	(121, 22, '2016/09/19', '10:42:06'),
	(555, 13, '2019/10/26', '10:59:08'),
	(635, 29, '2016/01/24', '09:06:10'),
	(74256, 17, '2016/03/05', '12:13:12'),
	(9555, 11, '2015/09/27', '10:20:59'),
	(1000, 12, '2012/09/20', '11:09:58'),
	(788, 10, '2014/02/15', '09:10:55');