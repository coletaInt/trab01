
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
	(10,'pedrocruz@test.com', MD5('13456'), 'Pedro Cruz', 1),
	(11,'kazushi@test.com', MD5('156456'), 'Kazushi', 1),
	(12,'brian@test.com', MD5('175460'), 'Brian', 0),
	(13,'marcelo@test.com', MD5('198556'), 'Marcelo', 0),
	(14,'jose@test.com', MD5('198436'), 'Jose', 0),
	(15,'manoel@test.com', MD5('162342'), 'Manoel', 1),
	(16,'julia@test.com', MD5('105834'), 'Julia', 0),
	(17,'thiago@test.com', MD5('133245'), 'Thiago', 1),
	(18,'maria@test.com', MD5('193472'), 'Maria', 0);

insert into situacao (id_situacao,tipo_situacao) values
	(1,'operante'),
	(0,'inoperante');

insert into lixeira (id_lixeira, nome_lixo, latitude, longitude, id_nv_lixo, id_situacao) values
	(1,'Quadra', 123.2312, -123.4232, 1, 1),
	(2,'Area de Festas', 324.1230, -12.2123, 2, 1),
	(3,'Piscina', 534.3214, 123.6045, 4, 1),
	(4,'Salão de Festas', 353.3544, 13.6045, 2, 1),
	(5,'Salão de Festas 3', 584.3214, 163.6045, 3, 1),
	(6,'Garagem', 114.3214, 23.6045, 0, 1),
	(7,'Garagem 2', 34.3214, 123.6045, 4, 0),
	(8,'Garagem 3', 57.3214, 98.6045, 1, 1),
	(9,'Garagem 4', 66.3214, 47.6045, 1, 1),
	(10,'Playground', 77.3214, 83.6045, 3, 1),
  (11,'Condominio 1', 77.3214, 83.6045, 3, 1),
  (12,'Condominio 2', 77.3214, 83.6045, 3, 1),
  (13,'Churrasqueira 1', 77.3214, 83.6045, 3, 1),
  (14,'Churrasqueira 2', 77.3214, 83.6045, 3, 1),
  (15,'Churrasqueira 3', 77.3214, 83.6045, 3, 1),
  (16,'Churrasqueira 4', 77.3214, 83.6045, 3, 1),
  (17,'Área comum', 77.3214, 83.6045, 3, 1),
  (18,'Jardim', 77.3214, 83.6045, 3, 1),
  (19,'Jardim 2', 77.3214, 83.6045, 3, 1),
  (20,'Bosque', 77.3214, 83.6045, 3, 1),
	(21,'Salão de Festas 2', 334.3214, 113.6045, 4, 0);

insert into manutencao (id_manutencao, id_lixeira, data, hora, descricao) values
  (154, 1, '2019-12-10', '10:02:10', 'lixeira com defeito no sensor'),
  (454, 2, '2018/03/20', '10:22:00', 'lixeira quebrada'),
  (399, 3, '2017/05/15', '10:32:00', 'lixeira pingando gordura'),
  (455, 4, '2019/06/22', '10:52:02', 'lixeira fora lugar'),
  (121, 5, '1998/09/19', '10:42:06', 'lixeira emperrada'),
  (555, 6, '2017/10/26', '10:59:08', 'sensor da lixeira travando'),
  (635, 7, '2016/01/24', '09:06:10', 'lixeira suja'),
  (74256, 8, '2016/03/05', '12:13:12', 'lixeira com fezes'),
  (788, 11, '2014/02/15', '09:10:55', 'lixeira vandalizada'),
  (9555, 9, '2015/09/27', '10:20:59', 'sensor queimado'),
  (1000, 10, '1998/09/20', '11:09:58', 'lixeira desaparecida');

insert into chamado (id_chamado, id_usuario, data, hora) values
  (164,10, '2018-11-11', '11:02:10' ),
  (414,12, '2017/02/09', '12:22:00' ),
  (389,13, '2016/06/14', '13:32:00' ),
  (465,14, '2018/07/23', '14:52:02' ),
  (121,15, '1997/05/14', '15:42:06' ),
  (555,16, '2016/03/24', '16:59:08' ),
  (631,11, '2015/02/21', '07:06:12' ),
  (74357,10, '2015/06/07', '18:13:12' ),
  (787,12, '2013/05/09', '19:10:55'),
  (9565,12, '2014/07/02', '20:20:59'),
  (10010,10, '1997/07/07', '21:09:58');