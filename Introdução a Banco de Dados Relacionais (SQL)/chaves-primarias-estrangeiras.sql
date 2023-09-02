ALTER TABLE usuarios MODIFY COLUMN id INT AUTO_INCREMENT, ADD PRIMARY KEY(id);

ALTER TABLE destinos MODIFY COLUMN id INT AUTO_INCREMENT, ADD PRIMARY KEY(id);

ALTER TABLE reservas MODIFY COLUMN id INT AUTO_INCREMENT, ADD PRIMARY KEY(id);

ALTER TABLE reservas ADD CONSTRAINT fk_reservas_usuarios FOREIGN KEY (id_usuario) REFERENCES usuarios(id);

ALTER TABLE reservas ADD CONSTRAINT fk_reservas_destinos FOREIGN KEY (id_destino) REFERENCES destinos(id);

ALTER TABLE reservas ADD CONSTRAINT fk_usuarios FOREIGN KEY (id_usuario) REFERENCES usuarios(id) ON DELETE CASCADE ;

ALTER TABLE reservas DROP CONSTRAINT fk_reservas_usuarios;

ALTER TABLE reservas ADD CONSTRAINT fk_reservas_usuarios FOREIGN KEY (id_usuario) REFERENCES usuarios(id) ON DELETE CASCADE;