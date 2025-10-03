--DML - REGISTRO
USE db_devconnect;

--Comando para inserir um novo registro, registro usuario
INSERT INTO tb_usuario(nome_completo, nome_usuario, email, senha, foto_perfil_url)
VALUES('Kaua Fidalgo', 'oKakaxz', 'kauafidalgo@gmail.com', '080309', 1)

SELECT * FROM tb_usuario;

--Registro publicacao
INSERT INTO tb_publicacao(descricao, imagem_url, data_publicacao)
VALUES('blablabla blebleble', 'www.kauafoto.com.br', '2009/08/03')

SELECT * FROM tb_publicacao;

--Registro Curtida
INSERT INTO tb_curtida(id_usuario, id_publicacao)
VALUES(1, 2)

SELECT * FROM tb_curtida;

--Registro Comentario
INSERT INTO tb_comentario(texto, data_comentario, id_usuario, id_publicacao)
VALUES('alguem', '2021/02/12', 1, 2)

SELECT * FROM tb_comentario;

--Registro Seguidor - INTERMEDIARIA

INSERT INTO tb_seguidor(id_usuario_seguir, id_usuario_seguido)
VALUES 
(1, 2),
(1, 2);

SELECT * FROM tb_seguidor;