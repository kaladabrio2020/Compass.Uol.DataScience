## Schema
O "schema" no contexto do Apache Spark se refere à estrutura de um conjunto de dados organizado em colunas nomeadas e tipos de dados associados a cada coluna.

```python
import org.apache.spark.sql.types._

val schema = StructType(
  List(
    StructField("id", IntegerType, nullable = false),
    StructField("name", StringType, nullable = true),
    StructField("age", IntegerType, nullable = true)
  )
)
```
> Este é um esquema simples com três colunas: "id", "name" e "age", onde "id" é do tipo inteiro e não pode ser nulo, enquanto "name" e "age" são do tipo string e inteiro, respectivamente, e podem ser nulos.

## Sql
Consigo usar comandos sqls no filter






