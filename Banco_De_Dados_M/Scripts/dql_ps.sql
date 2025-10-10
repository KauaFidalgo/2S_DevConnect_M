--DQL - SELECT
USE db_devconnect;

SELECT * FROM tb_usuario;
SELECT * FROM tb_publicacao;
SELECT * FROM tb_curtida;
SELECT * FROM tb_comentario;
SELECT * FROM tb_seguidor;

SELECT 
    u1.nome_completo AS Seguidor,
    u2.nome_completo AS Seguindo
FROM tb_seguidor s
JOIN tb_usuario u1    ON s.id_usuario_seguidor = u1.id
JOIN tb_usuario u2    ON s.id_seguindo = u2.id;

SELECT 
    u.nome_completo AS Usuario,
    COUNT(s.id_usuario_seguidor) AS Total_Seguidores
FROM tb_usuario u
LEFT JOIN tb_seguidor s ON s.id_seguindo = u.id
GROUP BY u.nome_completo;

SELECT 
    p.descricao AS Descricao,
    p.imagem_url AS Imagem,
    u.nome_usuario AS Nome_Usuario
FROM tb_publicacao p
JOIN tb_usuario u ON p.id_usuario = u.id;

SELECT 
    u.nome_completo AS Usuario,
    c.texto AS Comentario,
    p.descricao AS Publicacao
FROM tb_comentario c
JOIN tb_usuario u ON c.id_usuario = u.id
JOIN tb_publicacao p ON c.id_publicacao = p.id;

SELECT 
    p.descricao AS Publicacao,
    COUNT(c.id_curtida) AS Total_Curtidas
FROM tb_publicacao p
LEFT JOIN tb_curtida c ON p.id = c.id_publicacao
GROUP BY p.descricao;

SELECT 
    u.id,
    u.nome_completo
FROM tb_usuario u
LEFT JOIN tb_publicacao p ON u.id = p.id_usuario
WHERE p.id IS NULL;

SELECT 
    u.id,
    u.nome_completo
FROM tb_usuario u
LEFT JOIN tb_curtida c ON u.id = c.id_usuario
WHERE c.id_curtida IS NULL;

DELETE FROM tb_curtida
WHERE id_usuario = 1 AND id_publicacao = 2;
