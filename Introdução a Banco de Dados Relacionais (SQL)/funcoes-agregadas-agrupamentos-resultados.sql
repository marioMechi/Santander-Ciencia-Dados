#Conta o número de usuários que possuem reservas
SELECT COUNT(*) AS total_usuarios FROM usuarios us INNER JOIN reservas rs ON us.id = rs.id_usuario;

#Mostra a maior idade dentre os usuários no tempo presente
SELECT MAX(TIMESTAMPDIFF(YEAR, data_nascimento, CURRENT_DATE())) AS maior_idade from usuarios;

INSERT INTO reservas (id_usuario, id_destino, data) VALUES (1, 3,'2013-02-02');

#Mostra a quantidade de reservas em ordem ascendente
SELECT COUNT(*) AS qtd_reservas FROM reservas GROUP BY id_destino ORDER BY qtd_reservas;

#Mostra a quantidade de reservas em ordem descendente
SELECT COUNT(*) AS qtd_reservas FROM reservas GROUP BY id_destino ORDER BY qtd_reservas DESC;