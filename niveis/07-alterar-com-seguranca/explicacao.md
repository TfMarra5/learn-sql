# Inserir, atualizar e apagar

INSERT adiciona linhas; UPDATE altera; DELETE remove. Em UPDATE e DELETE, WHERE restringe os registos afetados. Antes de alterar, faz um SELECT com a mesma condição para confirmar o alvo.

Uma transação reúne operações: BEGIN inicia, COMMIT confirma e ROLLBACK desfaz as alterações ainda não confirmadas. Executa cada desafio inteiro, do BEGIN ao ROLLBACK, numa sessão sem alterações pendentes. Se a aplicação já tiver uma transação aberta, guarda ou reverte essas alterações primeiro.

```sql
BEGIN;
UPDATE produtos SET preco_centimos = 600 WHERE id = 4;
SELECT nome, preco_centimos FROM produtos WHERE id = 4;
ROLLBACK;
```

O resultado intermédio mostra o novo preço; depois de ROLLBACK, o preço original regressa. Neste nível usa sempre ROLLBACK no fim. Trabalha numa cópia de loja.db se quiseres experimentar COMMIT.

Lê agora desafios.md e escreve as tuas consultas em respostas.sql. Consulta as soluções só depois de tentares.
