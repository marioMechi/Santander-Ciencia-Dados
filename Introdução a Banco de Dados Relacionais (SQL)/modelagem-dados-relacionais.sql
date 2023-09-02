CREATE TABLE viagens.usuarios (
	id INT,
    nome VARCHAR (255) NOT NULL COMMENT 'Nome do usuario',
	email VARCHAR (100) NOT NULL UNIQUE COMMENT 'E-mail do usuario',
    endereco VARCHAR (50) NOT NULL COMMENT 'Endereço do usuario',
    data_nascimento DATE NOT NULL COMMENT 'Data de nascimento do usuario'
);
CREATE TABLE viagens.destinos (
	id INT,
    nome VARCHAR (255) NOT NULL UNIQUE COMMENT 'Nome do destino',
    dewscricao VARCHAR (255) NOT NULL COMMENT 'Descricaodo destino'
);
CREATE TABLE viagens.reservas (
	id INT COMMENT 'Identificador da reserva',
    id_usuario INT COMMENT 'Referencia ao id do usuario que fez a reserva',
	id_destino INT COMMENT 'Referencia ao id do destino que fez a reserva',
    data DATE NOT NULL COMMENT 'Data da resrva',
    status VARCHAR (255) DEFAULT 'pedente' COMMENT 'Statuts da Reserva (confirmada, pedente, cancelada, etc)'
);
 