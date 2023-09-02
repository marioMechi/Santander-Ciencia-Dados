INSERT INTO reservas(id, id_usuario, id_destino, data, status) VALUES (1, 1, 1, '2013-01-01','pedente');

SELECT * FROM usuarios us INNER JOIN reservas rs ON  us.id = rs.id;

INSERT INTO destinos(id, nome, dewscricao) VALUES(1,'Praia Rosa', 'Praia no Litoral Sudeste do Brasil');

SELECT * FROM usuarios us INNER JOIN reservas rs ON  us.id = rs.id INNER JOIN destinos ds ON rs.id_destino = ds.id;

INSERT INTO viagens.usuarios (nome, email, data_nascimento, rua, numero, cidade, estado) VALUES ('sem reservas', 'dio@teste.com', '1992-01-01', 'Rua','12', 'Cidade','Estado');

SELECT * FROM usuarios us LEFT JOIN reservas rs ON  us.id = rs.id;

SELECT * FROM reservas rs RIGHT JOIN destinos ds ON rs.id_destino = rs.id;

SELECT * FROM destinos WHERE id NOT IN (SELECT id_destino FROM reservas);

#SUBCONSULTA MOSTRANDO O NOME E TOTAL DE RESERVAS
SELECT nome, (SELECT COUNT(*) from reservas Where id_usuario = usuarios.id) AS total_reservas FROM usuarios;