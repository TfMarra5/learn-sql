-- Executar apenas numa base nova e vazia.
PRAGMA foreign_keys = ON;
CREATE TABLE clientes (id INTEGER PRIMARY KEY, nome TEXT NOT NULL, cidade TEXT NOT NULL, email TEXT);
CREATE TABLE produtos (id INTEGER PRIMARY KEY, nome TEXT NOT NULL, categoria TEXT NOT NULL, preco_centimos INTEGER NOT NULL CHECK(preco_centimos >= 0));
CREATE TABLE encomendas (id INTEGER PRIMARY KEY, cliente_id INTEGER NOT NULL REFERENCES clientes(id), data TEXT NOT NULL, estado TEXT NOT NULL CHECK(estado IN ('paga','pendente','cancelada')));
CREATE TABLE itens (encomenda_id INTEGER REFERENCES encomendas(id), produto_id INTEGER REFERENCES produtos(id), quantidade INTEGER NOT NULL CHECK(quantidade > 0), preco_unitario_centimos INTEGER NOT NULL CHECK(preco_unitario_centimos >= 0), PRIMARY KEY(encomenda_id, produto_id));
INSERT INTO clientes VALUES (1,'Ana','Lisboa','ana@exemplo.test'),(2,'Luís','Porto',NULL),(3,'Marta','Lisboa','marta@exemplo.test'),(4,'João','Braga',NULL),(5,'Sofia','Coimbra','sofia@exemplo.test'),(6,'Rui','Porto','rui@exemplo.test');
INSERT INTO produtos VALUES (1,'Teclado','Informática',4500),(2,'Rato','Informática',2000),(3,'Monitor','Informática',18000),(4,'Caderno','Papelaria',500),(5,'Caneta','Papelaria',200),(6,'Mochila','Acessórios',3500);
INSERT INTO encomendas VALUES (1,1,'2026-01-05','paga'),(2,2,'2026-01-10','paga'),(3,1,'2026-02-03','paga'),(4,3,'2026-02-12','pendente'),(5,4,'2026-02-15','cancelada'),(6,5,'2026-03-01','paga'),(7,2,'2026-03-08','paga'),(8,3,'2026-03-12','paga');
INSERT INTO itens VALUES (1,1,1,4500),(1,2,2,2000),(2,3,1,18000),(2,4,3,500),(3,4,4,500),(3,5,10,200),(4,3,2,18000),(5,1,1,4500),(6,2,1,1800),(6,5,5,200),(7,1,2,4200),(8,4,2,500);
