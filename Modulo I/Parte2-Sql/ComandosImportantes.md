# Comandos

## distinct
```sql
select distinct <colunas> from <schema>.<tabela>; 
```
* distinct : Mostra os valores distintos da coluna de uma tabela (semelhante ao pd.DataFrame(`dict(<keys>:<values>)).unique()`)

## where
```sql
select <coluna> from <schema>.<table> 
where <coluna> (< | > | <= | >= | =) <valor> (or | and) <coluna>  (< | > | <= | >= | =) <valor>
```

## order by
* Ordena valores
> **desc**:descrescente \
> **asc** : crescente

## limit
* limita o numero de linhas


### join
<img src="img/Types-of-Join-inSQL.jpg.webp">