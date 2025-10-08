--DML
USE db_devconnect;

INSERT INTO tb_usuario(nome_completo,nome_usuario,email,senha,foto_perfil_url)
VALUES('Eduardo Costa','educosta','educosta@gmail.com','semsenha','www.com.DevConnect/edu');

SELECT * FROM tb_usuario;

INSERT INTO  tb_publicacao(descricao,imagem_url,data_publicacao, id_usuario)
VALUES('Dia lindo com a familia','www.fotobrasil.com','2025/10/03',1);

SELECT * FROM tb_publicacao;

INSERT INTO tb_curtida(id_usuario, id_publicacao)
VALUES (1, 1);

SELECT * FROM tb_curtida;

INSERT INTO tb_comentario(texto, data_coment, id_usuario, id_publicacao)
VALUES('Que familia linda', '2025-10-10',1, 1);

SELECT * FROM tb_comentario

INSERT INTO tb_seguidor(id_seguindo, id_usuario_seguidor)
VALUES(1,2);

SELECT * FROM tb_seguidor;



SELECT 
	descricao as PUBLICACAO, 
	nome_completo AS AUTOR 

FROM tb_publicacao 
	INNER JOIN tb_usuario ON tb_publicacao.id_usuario = tb_usuario.id;