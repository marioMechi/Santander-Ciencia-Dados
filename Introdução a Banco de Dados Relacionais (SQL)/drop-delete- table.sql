CREATE TABLE viagens.usuarios_nova (
	id INT,
    nome VARCHAR(255) NOT NULL COMMENT 'nome usuário',
    email VARCHAR(255) NOT NULL COMMENT 'email usuário',
    data_nascimento DATE NOT NULL COMMENT 'data de nascimento usuário',
    endereco VARCHAR(255) NOT NULL COMMENT 'enderçao usuário'
);
# Migrando dados de uma table a outra
INSERT INTO viagens.usuarios_nova (id, nome, email, data_nascimento, endereco)
SELECT id, nome, email, data_nascimento, endereco FROM viagens.usuarios;
SELECT * FROM viagens.usuarios_nova;
# Excluindo table antiga
DROP TABLE viagens.usuarios;
# Renomeando nova table
ALTER TABLE viagens.usuarios_nova RENAME usuarios;
SELECT * FROM usuarios;
# Modificando coluna na table
ALTER TABLE usuarios MODIFY COLUMN endereco VARCHAR (150)