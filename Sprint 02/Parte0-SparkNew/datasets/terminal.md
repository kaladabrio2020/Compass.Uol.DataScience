```bash
Python 3.11.9 (main, Apr 17 2024, 00:00:00) [GCC 14.0.1 20240411 (Red Hat 14.0.1-0)] on linux
Type "help", "copyright", "credits" or "license" for more information.
Setting default log level to "WARN".
To adjust logging level use sc.setLogLevel(newLevel). For SparkR, use setLogLevel(newLevel).
24/05/10 10:33:26 WARN NativeCodeLoader: Unable to load native-hadoop library for your platform... using builtin-java classes where applicable
Welcome to
      ____              __
     / __/__  ___ _____/ /__
    _\ \/ _ \/ _ `/ __/  '_/
   /__ / .__/\_,_/_/ /_/\_\   version 3.5.1
      /_/

Using Python version 3.11.9 (main, Apr 17 2024 00:00:00)
Spark context Web UI available at http://192.168.3.11:4040
Spark context available as 'sc' (master = local[*], app id = local-1715348007697).
SparkSession available as 'spark'.
>>> numeros = sc.parallelize([1,2,3,4,5,6,7,8,9])
>>> numeros
ParallelCollectionRDD[0] at readRDDFromFile at PythonRDD.scala:289
>>> numeros.take(5)
[Stage 0:>                                                          (0 + 1) /                                                                               [1, 2, 3, 4, 5]
>>> numeros.take(3)
[1, 2, 3]
>>> numeros.show(3)
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
AttributeError: 'RDD' object has no attribute 'show'
>>> numeros.top(5)
[9, 8, 7, 6, 5]
>>> numeros.collect()
[1, 2, 3, 4, 5, 6, 7, 8, 9]
>>> numeros = sc.parallelize([1,2,3,4,5,6,7,8,9,10])
>>> numeros.collect()
[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
>>> numeros.sum(
... )
55
>>> numeros.std()
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
AttributeError: 'RDD' object has no attribute 'std'
>>> numeros.var()
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
AttributeError: 'RDD' object has no attribute 'var'
>>> numeros.
  File "<stdin>", line 1
    numeros.
            ^
SyntaxError: invalid syntax
>>> numeros.count()
10
>>> numeros.fitler(lambda numeros: numeros> 2)
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
AttributeError: 'RDD' object has no attribute 'fitler'. Did you mean: 'filter'?
>>> numeros.filter(lambda numeros: numeros> 2)
PythonRDD[9] at RDD at PythonRDD.scala:53
>>> numeros.filter(lambda numeros: numeros> 2).show()
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
AttributeError: 'PipelinedRDD' object has no attribute 'show'
>>> filtro = numeros.filter(lambda filtro: filtro> 2)
>>> filtro
PythonRDD[10] at RDD at PythonRDD.scala:53
>>> filtro.collect()
[3, 4, 5, 6, 7, 8, 9, 10]
>>> numeros.sample(True, 0.5, 1).collect()
[3, 4, 4, 5, 6, 10]
>>> 

```