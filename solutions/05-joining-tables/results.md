# Expected results

Without ORDER BY, compare contents rather than order. Level 7 shows results before ROLLBACK.

## Challenge 1

| id | name | status |
| --- | --- | --- |
| 1 | Ana | paid |
| 2 | Luís | paid |
| 3 | Ana | paid |
| 4 | Marta | pending |
| 5 | João | cancelled |
| 6 | Sofia | paid |
| 7 | Luís | paid |
| 8 | Marta | paid |

8 row(s).

## Challenge 2

| name | total_orders |
| --- | --- |
| Ana | 2 |
| Luís | 2 |
| Marta | 2 |
| João | 1 |
| Sofia | 1 |
| Rui | 0 |

6 row(s).

## Challenge 3

| name |
| --- |
| Rui |

1 row(s).
