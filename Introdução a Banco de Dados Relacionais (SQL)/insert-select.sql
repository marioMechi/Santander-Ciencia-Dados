INSERT INTO viagens.usuarios (id, nome, email, data_nascimento, rua, numero, cidade, estado) VALUES (1,'Mario', 'teste@teste.com', '2001-01-01', 'Rua Testa','01', 'Teste','Teste');
INSERT INTO viagens.usuarios (id, nome, email, endereco, data_nascimento) VALUES (2,'Maria', 'maria@teste.com', 'Rua Teste.02 Teste', '2001-02-02');

INSERT INTO viagens.reservas (id, id_usuario, id_destino, status, data) VALUES (1, 1, 1, 'pedente', '2013-01-01');
INSERT INTO viagens.reservas (id, id_usuario, id_destino, status, data) VALUES (2, 2, 2, 'pedente', '2013-02-02');

INSERT INTO viagens.destinos (id, nome, dewscricao) VALUES (2, 'Praia Rosa', 'Praia no litoral de SP');

SELECT * FROM usuarios WHERE id = 1 OR nome LIKE '%Mario%' ;