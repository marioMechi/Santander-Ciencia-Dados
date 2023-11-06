Desafio processando e Transformando dados

Para acrescentar a coluna de Manager utilizei os comandos:

SELECT CONCAT(e.Fname, ' ', e.Lname) AS Manager FROM employee e JOIN employee e2 ON e.Ssn = e2.Super_ssn;

ALTER TABLE employee ADD COLUMN Manager VARCHAR(255);

UPDATE employee e JOIN employee e2 ON e.Super_ssn = e2.Ssn  SET e.Manager = CONCAT(e2.Fname, ' ', e2.Lname);

O Mesclar é utilizado ao invés de atribuir pois o número de linhas das colunas em questão são diferentes.

