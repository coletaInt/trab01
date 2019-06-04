
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