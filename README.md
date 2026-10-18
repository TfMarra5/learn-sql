# Aprender SQL — A tua loja

Um projeto em português para aprender fazendo. Usa SQLite e dados fictícios: 6 clientes, 6 produtos, 8 encomendas e 12 linhas de itens. Não precisas de instalar um servidor nem de saber Python.

## Preparação: cerca de 10 minutos

1. Instala o **DB Browser for SQLite**: https://sqlitebrowser.org/dl/ . Escolhe a versão para Windows adequada ao teu computador.
2. Abre a aplicação e escolhe **Open Database / Abrir base de dados**.
3. Seleciona `dados/loja.db` dentro desta pasta. A base já está criada e preenchida.
4. Vai a **Execute SQL / Executar SQL** e executa `SELECT * FROM clientes;`.
5. Deverás ver seis clientes. Se aparecer «no such table», confirma que abriste a base fornecida.
6. Nessa ligação, executa `PRAGMA foreign_keys = ON;` antes de iniciares transações. Esta opção ativa a verificação de relações no SQLite e deve ser ativada em cada nova ligação.

## Zed ou outra ferramenta?

Para começar, basta o DB Browser: permite executar SQL e ver os resultados. Se já usas o Zed, abre esta pasta nele para leres as explicações e guardares as respostas nos ficheiros `.sql`. Copia cada consulta para o separador Execute SQL do DB Browser e executa-a. O Zed é opcional neste percurso.

Referências oficiais: https://sqlitebrowser.org/ e https://zed.dev/docs/languages/sql .

## Como estudar

Reserva 20–30 minutos por nível, sem pressa. Abre `explicacao.md`, experimenta o exemplo e depois lê `desafios.md`. Escreve em `respostas.sql`; executa apenas a consulta que estás a trabalhar. Se ficares bloqueado, pede uma pista neste chat indicando nível e desafio. As soluções e resultados estão separados em `solucoes/`.

Avança quando conseguires explicar a tua consulta por palavras tuas. Marca o teu progresso em `progresso.md`. As soluções são exemplos: há várias formas válidas de responder.

## Percurso

1. Primeiras consultas — SELECT e FROM.
2. Filtros e ordem — WHERE, AND, ORDER BY e LIMIT.
3. Texto, nulos e cálculos — LIKE, DISTINCT, IS NULL e aliases.
4. Resumos — COUNT, AVG, GROUP BY e HAVING.
5. Relacionar tabelas — JOIN e LEFT JOIN.
6. Projeto final — relatório de vendas da loja.
7. Alterar com segurança — INSERT, UPDATE, DELETE e transações.

## O modelo de dados

`clientes` → `encomendas` → `itens` ← `produtos`

- clientes: id, nome, cidade, email (pode ser NULL).
- produtos: id, nome, categoria, preco_centimos (preço atual).
- encomendas: id, cliente_id, data (texto AAAA-MM-DD), estado.
- itens: encomenda_id, produto_id, quantidade, preco_unitario_centimos (preço na compra).

Um cliente pode ter várias encomendas; cada encomenda tem vários itens. Cada item associa um produto a uma encomenda. A combinação encomenda_id + produto_id identifica um item. A receita inclui apenas encomendas pagas. Dinheiro é guardado em cêntimos para evitar erros de armazenamento com casas decimais; divide por 100.0 para apresentar euros.

## Recuperar o ponto de partida

Fecha a base atual. Cria no DB Browser uma **nova base vazia**, com outro nome, por exemplo `loja-reinicio.db`. Em Execute SQL, abre `dados/01_criar_base.sql` e executa o ficheiro inteiro. Guarda as alterações usando Write Changes / Guardar alterações. Não executes esse ficheiro sobre uma base já preenchida.

## Quando surgir um erro

- `no such column`: confirma o nome da coluna no modelo acima.
- `near ... syntax error`: verifica vírgulas, aspas e a ordem das cláusulas.
- `ambiguous column name`: indica a tabela ou alias, como `c.id`.
- `cannot start a transaction within a transaction`: termina a transação atual antes de executar o nível 7.
- Resultado vazio: verifica o filtro e os valores existentes; texto acentuado deve ser escrito como está nos dados.

Este curso usa o dialeto SQLite. Os conceitos são transferíveis, mas algumas funções e detalhes de sintaxe mudam no PostgreSQL, MySQL ou SQL Server.

Começa em `niveis/01-primeiras-consultas/explicacao.md`.
