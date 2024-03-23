# Spark
* Usado para grande quantidade de dados
* Criar modelos de machine Learning
* Analise exploratoria de dados

Apache Spark é um sistema de computação distribuída de código aberto que fornece uma interface para programação de clusters inteiros com paralelismo de dados implícito e tolerância a falhas. Foi desenvolvido inicialmente na UC Berkeley em 2009 e disponibilizado como um projeto Apache em 2010.

Aqui estão algumas características-chave do Apache Spark:

* Velocidade: O Spark pode realizar computação em memória, o que o torna muito mais rápido do que implementações tradicionais de MapReduce. Ele alcança essa velocidade aproveitando cálculos em memória e otimizações como avaliação preguiçosa e encadeamento de operações.

* Facilidade de Uso: O Spark fornece APIs fáceis de usar para as linguagens Scala, Java, Python e R. Ele oferece um conjunto rico de operadores de alto nível, o que facilita para os desenvolvedores construírem aplicativos paralelos.


### Guia de instalação 


Certainly! Below are the step-by-step instructions to install PySpark on Fedora:

* Install Java Development Kit (JDK):
> PySpark requires Java to be installed on your system. You can install OpenJDK using the following command:

```bash
sudo dnf install java-11-openjdk-devel
```

* Download Apache Spark:
> Go to the Apache Spark download page (https://spark.apache.org/downloads.html) and select the latest version of Spark. Choose a pre-built package for Hadoop, download it, and extract it to a directory of your choice.

Set Environment Variables:
You need to set the following environment variables:

JAVA_HOME: Pointing to your Java installation directory.
SPARK_HOME: Pointing to the directory where you extracted Spark.
PATH: Adding Spark binaries to the system path.
You can set these variables by editing the .bashrc file or .zshrc if you are using Zsh. Open the file using a text editor:

```bash
nano ~/.bashrc
```
* Add the following lines at the end of the file:

```cmd
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk
export SPARK_HOME=/path/to/your/spark-directory
export PATH=$PATH:$SPARK_HOME/bin
```

* Save the file and then run:

bash
```bash
source ~/.bashrc
```
* Install Python:
> If you haven't already installed Python, you need to do so. Most Fedora distributions come with Python pre-installed, but you might need to install .additional packages:

```bash
sudo dnf install python3
sudo dnf install python3-pip
```
* Install PySpark:
> You can install PySpark using pip. However, it's recommended to install it using the findspark package which helps to locate Spark within Python. Install 
```bash
pip3 install findspark
```


### Rdds

RDDs (Resilient Distributed Datasets) são uma abstração fundamental na computação distribuída, particularmente associada ao framework Apache Spark.

Um RDD é uma coleção distribuída de objetos imutáveis. Isso significa que uma vez criados, os RDDs não podem ser modificados. Eles oferecem tolerância a falhas e são resilientes, o que significa que, se houver uma falha em algum nó do cluster, o RDD pode ser reconstruído automaticamente.

Os RDDs em Spark são particionados e distribuídos por todo o cluster de computação, permitindo operações paralelas em conjuntos de dados muito grandes. Além disso, eles suportam operações de transformação (como map, filter e reduce) e operações de ação (como count, collect e save) que permitem aos desenvolvedores processar grandes volumes de dados de forma eficiente e escalável.