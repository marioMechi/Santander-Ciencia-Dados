SELECT * FROM Album a ;
SELECT count(*) as Records FROM Album a ;

SELECT count(*) FROM Album a WHERE Column1 is NULL ;
SELECT AlbumId, Title FROM Album a WHERE Column1 is NULL ;

SELECT * From Artist a ;
--- caracterizando os registros dos artistas
SELECT a.ArtistId, a2.Name, count(*) as Records FROM Album a INNER JOIN Artist a2 GROUP BY 1 ORDER BY Records DESC LIMIT 2;

SELECT * FROM Customer c;
--- quantos clientes moram em cada estado
SELECT State, COUNT(*) FROM Customer c GROUP BY 1 ORDER BY 1; 
--- quantos clientes moram na Broadway
SELECT COUNT(*) FROM Customer c WHERE Address like "%Broadway%" 

--- verificar conta dos clientes
SELECT FirstName, COUNT(*)  FROM Customer c WHERE Company IS NOT NULL;
--- contas nulas
SELECT FirstName  FROM Customer c WHERE Company IS NULL;

---Mostre os clientes que são colaboradores
SELECT * FROM Employee e ;
SELECT c.FirstName, c.LastName FROM Customer c WHERE Company IS NULL AND c.FirstName IN
	(SELECT e.FirstName From Employee e);	
SELECT c.FirstName, c.LastName  FROM Customer c INNER JOIN Employee e WHERE  c.FirstName = e.FirstName ;

---Clientes que possuem InVoice e a quantidade para cada cliente
SELECT * FROM Invoice i limit 10;
SELECT * FROM InvoiceLine il ORDER BY UnitPrice DESC LIMIT 10;
SELECT UnitPrice, count(*) AS Record FROM InvoiceLine il  GROUP BY UnitPrice;
SELECT i.CustomerId, c.FirstName, COUNT(*) AS Record FROM InvoiceLine il INNER JOIN Invoice i INNER JOIN Customer c  ON c.CustomerId = i.CustomerId GROUP BY i.CustomerId ORDER BY Record;
SELECT i.InvoiceId, il.InvoiceLineId  FROM Invoice i INNER JOIN InvoiceLine il INNER JOIN Customer c ON c.CustomerId = i.CustomerId GROUP BY i.InvoiceId LIMIT 100;