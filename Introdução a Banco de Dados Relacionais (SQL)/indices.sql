#Pesquisa onde email é igual dio@teste.com
EXPLAIN SELECT * FROM usuarios WHERE email = 'dio@teste.com';

#Pesquisa onde nome é igual a Mario
EXPLAIN SELECT * FROM usuarios WHERE nome = 'Mario';

#Criando índice para nomes
CREATE INDEX idx_nome ON usuarios (nome);