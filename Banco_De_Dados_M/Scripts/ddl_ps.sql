--DDL--

CREATE DATABASE db_devconnect;
GO 

CREATE TABLE tb_usuario(
	id	 INT		IDENTITY(1,1) PRIMARY KEY 
	,nome_completo   NVARCHAR(255)     NOT NULL
	,nome_usuario	 NVARCHAR(50)      NOT NULL  UNIQUE
	,email			 NVARCHAR(255)     NOT NULL  UNIQUE
	,senha			 NVARCHAR(50)	   NOT NULL
	,foto_perfil_url NVARCHAR(200)     NULL

);

CREATE TABLE tb_publicacao(
  id	             INT		    IDENTITY(1,1) PRIMARY KEY 
 ,descricao          NVARCHAR(255)                NOT NULL
 ,imagem_url         NVARCHAR(255)                NULL
 ,data_publicacao    DATE                         NOT NULL 
 ,id_usuario         INT                          NOT NULL

 FOREIGN KEY (id_usuario) REFERENCES tb_usuario(id)
);

SELECT * FROM tb_publicacao;

CREATE TABLE tb_curtida(
id_curtida INT IDENTITY(1,1) PRIMARY KEY,
id_usuario INT NOT NULL,
id_publicacao INT NOT NULL,

FOREIGN KEY (id_usuario) REFERENCES tb_usuario(id),

FOREIGN KEY (id_publicacao) REFERENCES tb_publicacao(id),
);

SELECT * FROM tb_curtida;

CREATE TABLE tb_comentario(
	id_comentario INT IDENTITY(1,1) PRIMARY KEY,
	texto NVARCHAR(155) NOT NULL,
	data_coment DATE	NOT NULL,
	id_usuario INT		NOT NULL,
	id_publicacao INT	NOT NULL,

	FOREIGN KEY(id_usuario) REFERENCES tb_usuario(id),
	FOREIGN KEY(id_publicacao) REFERENCES tb_publicacao(id),
);

SELECT * FROM tb_comentario;

	CREATE TABLE tb_seguidor (
	id_usuario_seguidor INT    NOT NULL,
	id_seguindo INT     NOT NULL,

	PRIMARY KEY (id_usuario_seguidor, id_seguindo),
	FOREIGN KEY  (id_usuario_seguidor) REFERENCES  tb_usuario(id),
    FOREIGN KEY  (id_seguindo) REFERENCES tb_usuario(id)
	);
GO

SELECT * FROM tb_seguidor;