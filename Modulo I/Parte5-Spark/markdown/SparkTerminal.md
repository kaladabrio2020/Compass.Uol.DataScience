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



## Particionamento de dados

O particionamento de dados é uma técnica utilizada em sistemas distribuídos, como Apache Spark, para dividir conjuntos de dados em partes menores chamadas partições. Essa técnica é fundamental para melhorar a eficiência na execução de operações paralelas e distribuídas, pois permite que o processamento seja distribuído entre os nós do cluster de forma mais eficiente.

Existem dois tipos principais de particionamento de dados em Apache Spark:

1. **Particionamento por chave (Hash Partitioning)**:
   
   - Neste método, as chaves dos dados são usadas para determinar em qual partição cada registro será colocado. Spark usa uma função de hash para mapear a chave para uma partição.
   - O particionamento por chave é especialmente útil para operações como joins e agrupamentos, onde registros com a mesma chave precisam ser processados juntos.
   - Por padrão, o Spark geralmente usa o particionamento por chave quando você realiza operações como join.

2. **Particionamento por intervalo (Range Partitioning)**:
   
   - Este método envolve a divisão dos dados em partições com base em intervalos de valores de uma determinada coluna.
   - É útil quando você deseja manter os dados ordenados dentro de cada partição, como em operações de classificação ou quando os dados são consultados com base em uma faixa específica de valores.


## join
![img](img/sql.png)


## Sql

Consigo usar comandos sqls no filter

## Funções importantes

```python
import pyspark
from   pyspark.sql import SparkSession, dataframe
from   pyspark.sql import functions as F
```

&nbsp;

## Criar uma seção pyspark

```python
spark = (
    SparkSession.builder.master("local")
    .appName('AprendendoSpark')             
    .getOrCreate()
    )
spark
```

&nbsp;

## Importar um csv

```python
data:dataframe = (
    spark.read
    .format("csv")
    .option('header',"True")
    .option('inferschema','True')
    .option("delimiter",';')
    .load('dataset/arquivo_geral.csv')
    )
```

&nbsp;

## Visualizar tabela

```python
data.show(2)
```

```bash
+------+------+----------+----------+---------------+-----------+----------------+
|regiao|estado|      data|casosNovos|casosAcumulados|obitosNovos|obitosAcumulados|
+------+------+----------+----------+---------------+-----------+----------------+
| Norte|    RO|2020-01-30|         0|              0|          0|               0|
| Norte|    RO|2020-01-31|         0|              0|          0|               0|
| Norte|    RO|2020-02-01|         0|              0|          0|               0|
+------+------+----------+----------+---------------+-----------+----------------+
only showing top 3 rows &nbsp;
```

&nbsp;

## Informação dos schemas

```python
#### me informa o tipo das colunas
data.printSchema()
```

```bash
root
 |-- regiao: string (nullable = true)
 |-- estado: string (nullable = true)
 |-- data: date (nullable = true)
 |-- casosNovos: integer (nullable = true)
 |-- casosAcumulados: integer (nullable = true)
 |-- obitosNovos: integer (nullable = true)
 |-- obitosAcumulados: integer (nullable = true)
```

> Nullable true: significa que pode haver valores nulos

&nbsp;

## Selecionar colunas

```python
data.select('casosAcumulados','regiao','data').show(3)
```

```bash
+---------------+------+----------+
|casosAcumulados|regiao|      data|
+---------------+------+----------+
|              0| Norte|2020-01-30|
|              0| Norte|2020-01-31|
|              0| Norte|2020-02-01|
+---------------+------+----------+
only showing top 3 rows
```

## Filtrando valores

```python
data.select('casosAcumulados','regiao','data')\
    .filter(
            (F.col("regiao")=="Norte") &
            (F.col('casosAcumulados') > 1)
    ).show(3)
```

```bash
+---------------+------+----------+
|casosAcumulados|regiao|      data|
+---------------+------+----------+
|              3| Norte|2020-03-22|
|              3| Norte|2020-03-23|
|              3| Norte|2020-03-24|
+---------------+------+----------+
```

&nbsp;

## Adicionando novas colunas

```python
data.withColumn('Total',
        F.col('casosNovos') + F.col('casosAcumulados')
).show(3
```

### Adicionando coluna com uma condição

```python
data.withColumn('Tem novos casos?',
                F.when(F.col('casosNovos') > 0, 'Tem Novos Casos')\
                .otherwise('Não tem')).show(10)
```

> Logica quando a intancia i de caso novos for maior que 0 o valor dessa instancia será **Tem Novos Casos** se não chama-se de **Não tem**

&nbsp;

```python
data.select('data').\
     withColumn('dia',F.substring('data',9,1).cast('integer'))\
    .withColumn('mes',F.substring('data',6,2).cast('string'))\
    .withColumn('ano',F.substring('data',1,4).cast('integer')).show(2)
```

> **cast**:Server para mudar o tipo da coluna 

## header

```python
data:dataframe = (
    spark.read
    .format("csv")
    .option('header',"False")
    .option('inferschema','True')
    .option("delimiter",';')
    .load('dataset/arquivo_geral.csv')
    )
data.printSchema()
```

```bash
root
 |-- _c0: string (nullable = true)
 |-- _c1: string (nullable = true)
 |-- _c2: string (nullable = true)
 |-- _c3: string (nullable = true)
 |-- _c4: string (nullable = true)
 |-- _c5: string (nullable = true)
 |-- _c6: string (nullable = true)
```
