# Resultados esperados

Sem ORDER BY, compara o conteúdo e não a ordem. No nível 7, estes são os resultados antes do ROLLBACK.

## Desafio 1

| id | nome | estado |
| --- | --- | --- |
| 1 | Ana | paga |
| 2 | Luís | paga |
| 3 | Ana | paga |
| 4 | Marta | pendente |
| 5 | João | cancelada |
| 6 | Sofia | paga |
| 7 | Luís | paga |
| 8 | Marta | paga |

8 linha(s).

## Desafio 2

| nome | total_encomendas |
| --- | --- |
| Ana | 2 |
| Luís | 2 |
| Marta | 2 |
| João | 1 |
| Sofia | 1 |
| Rui | 0 |

6 linha(s).

## Desafio 3

| nome |
| --- |
| Rui |

1 linha(s).
