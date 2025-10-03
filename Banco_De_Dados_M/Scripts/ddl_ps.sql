--DDL - ESTRUTURA BANCO
CREATE DATABASE db_devconnect;


GO
--COMANDO QUE USA O DB
USE db_devconnect;

--TABELA USUARIO
CREATE TABLE tb_usuario(
	 id		INT		 IDENTITY(1,1)	 PRIMARY KEY
	,nome_completo   NVARCHAR(255)           NOT NULL
	,nome_usuario    NVARCHAR(50)    UNIQUE	 NOT NULL
	,email           NVARCHAR(255)   UNIQUE  NOT NULL
	,senha           NVARCHAR(30)            NOT NULL
	,foto_perfil_url NVARCHAR(150)               NULL
);
GO

--CONSULTAR TABELAS
SELECT * FROM tb_usuario;


--TABELA PUBLICACAO
CREATE TABLE tb_publicacao(
	id		INT		 IDENTITY(1,1)	                PRIMARY KEY
   ,descricao        NVARCHAR(500)           
   ,imagem_url       NVARCHAR(150)                  NOT NULL
   ,data_publicacao  NVARCHAR(8)                    NOT NULL

   ,id_usuario  INT NOT NULL,
   
   FOREIGN KEY (id_usuario) REFERENCES tb_usuario(id)
);

SELECT * FROM tb_publicacao;

--TABELA CURTIDA
CREATE TABLE tb_curtida(
	id		INT		 IDENTITY(1,1)	         PRIMARY KEY
   ,id_usuario       INT                     NOT NULL,

   FOREIGN KEY (id_usuario)     REFERENCES tb_usuario(id)

   ,id_publicacao    INT                     NOT NULL,

   FOREIGN KEY (id_publicacao)  REFERENCES tb_publicacao(id)

);

SELECT * FROM tb_curtida;

--TABELA COMENTARIO
CREATE TABLE tb_comentario(
	id		INT		 IDENTITY(1,1)	         PRIMARY KEY
   ,texto            NVARCHAR(255)           NOT NULL
   ,data_comentario  NVARCHAR(8)             NOT NULL
   ,id_usuario       INT                     NOT NULL,

   FOREIGN KEY (id_usuario)     REFERENCES tb_usuario(id)

   ,id_publicacao    INT                     NOT NULL,

   FOREIGN KEY (id_publicacao)  REFERENCES tb_publicacao(id)
);

SELECT * FROM tb_comentario;

CREATE TABLE tb_seguidor(
    id_usuario_seguir     INT NOT NULL, --PK
	id_usuario_seguido    INT NOT NULL, --PK

	PRIMARY KEY (id_usuario_seguir, id_usuario_seguido)
);