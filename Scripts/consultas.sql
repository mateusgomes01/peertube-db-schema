-- Junção Interna

SELECT common.cm_name, channel.ch_name
FROM common, channel
WHERE common.id = channel.owner;

-- Subconsulta do Tipo Escalar

SELECT adm_name
FROM admin
WHERE id = 2


-- Subconsulta do Tipo Linha

SELECT *
FROM admin
WHERE id = 2


-- Subconsulta do Tipo Tabela

SELECT *
FROM admin
WHERE id >= 1


-- Operação de Conjunto: Intersecção

SELECT owner FROM channel 
INTERSECT
SELECT user_id FROM coment

-- Printando os ID's das pessoas que tem canal e ao mesmo tempo já fizeram algum comentário.


-- Group By / Having

SELECT COUNT(id), Loc_language
FROM common
GROUP BY Loc_language
HAVING Loc_language != 'JP'

-- Printando a quantidade de usuários que falam determinada linguagem, exceto a língua japonesa.


-- Anti-join

SELECT common.cm_name
FROM common
WHERE NOT EXISTS (SELECT * FROM channel WHERE channel.owner = common.id)

-- Printando os nomes dos usuários 'common'  que não têm canais.


-- Semi-join

SELECT common.cm_name
FROM common
WHERE EXISTS (SELECT * FROM channel WHERE channel.owner = common.id)

-- Printando os nomes dos usuários 'common'  que têm canais.


-- Junção Externa à Esquerda Exclusiva

SELECT video.vd_name
FROM video LEFT OUTER JOIN coment ON video.disc = coment.video_disc
WHERE coment.video_disc IS NULL

-- Printando os vídeos que existem, mas não tem comentário.


