# Iniciando Repositorio

```git
git init
```

* Irá criar os arquivos necessarios para inicializa-lo
  
  * que vão estar na pasta oculta **.git** 

* Como esse comando o diretorio atual sera reconhecido como projeto

&nbsp;

## git add

```bash
# Arquivo 
git add <file>
# Diretorio
git add <diretorio> 
# Tudo
git add . 
```

* O comando `git add` é usado no sistema de controle de versão Git para adicionar mudanças feitas em arquivos ao próximo commit

* Mundanças para serem enviadas

&nbsp;

## git commit

```bash
git commit -m "(-m)Mensagem"

#Com esse comando não precisa usar o git add .
git commit -a -m "mensagem"
```

* Ele é usado para salvar as alterações feitas no seu repositório Git. Quando você faz um commit, está essencialmente criando um instantâneo das alterações no seu projeto em um determinado momento.

&nbsp;

## git status

```bash
git status
```

* Mapea todas as alterações do projeto

* Ele fornece informações sobre quais arquivos foram modificados, quais estão na área de preparação (staging area) prontos para serem commitados, e se há algum arquivo que ainda não está sendo rastreado pelo Git.

&nbsp;

## git push

```bash
git push
```

* é usado para buscar as alterações do repositório remoto e mesclá-las automaticamente com o seu repositório local.

&nbsp;

## git clone

```bash
git clone
# clonar um repositorio
git clone -b <branch> <URL_do_repositório>
```

* é usado para criar uma cópia local de um repositório Git remoto. Ele é frequentemente usado quando você deseja começar a trabalhar em um projeto existente hospedado em um serviço como GitHub, GitLab, Bitbucket, entre outros.

&nbsp;

## git log

```bash
git log
```

* O comando `git log` é usado para exibir o histórico de commits do seu repositório Git.
  
  - `--oneline`: Exibe cada commit em uma única linha, mostrando apenas o hash do commit e a mensagem.
  - `--graph`: Mostra uma representação gráfica simplificada do histórico de commits, com as ramificações do repositório.
  - `--author=<autor>`: Filtra os commits pelo autor especificado.
  - `--since=<data>`: Mostra apenas os commits feitos desde a data especificada.
  - `--until=<data>`: Mostra apenas os commits feitos até a data especificada.

&nbsp;

## git rm

```bash
git rm
```

* Remove o arquivo 

&nbsp;

## git mv

```bash
git mv <arquivo_atual> <novo_nome_ou_caminho>
```

* O comando `git mv` é usado para mover ou renomear arquivos no seu repositório Git.

&nbsp;

## git checkout

1. **Alternar para um branch existente**:
   
   Você pode usar `git checkout` para mudar para um branch existente no seu repositório. Por exemplo:
   
   ```bash
   git checkout nome_do_branch
   ```
   
   > Isso irá alternar o seu diretório de trabalho para o branch chamado `nome_do_branch`.

2. **Criar e alternar para um novo branch**:
   
   Se você deseja criar um novo branch e mudar para ele ao mesmo tempo, pode usar a opção `-b`:
   
   ```bash
   git checkout -b novo_branch
   ```
   
   > Isso criará um novo branch chamado `novo_branch` e mudará para ele.

3. **Restaurar arquivos do commit mais recente**:
   
   Você pode usar `git checkout` para restaurar arquivos para o estado em que estavam no commit mais recente. Por exemplo:
   
   ```bash
   git checkout nome_do_arquivo
   ```
   
   > Isso restaurará o arquivo chamado `nome_do_arquivo` para o estado em que estava no último commit.

4. **Desfazer alterações locais não commitadas**:
   
   Se você fez alterações em arquivos e deseja desfazê-las, pode usar `git checkout` com a opção `--` seguida do nome do arquivo. Por exemplo:
   
   ```bash
   git checkout -- nome_do_arquivo
   ```
   
   > Isso desfaz as alterações feitas no arquivo chamado `nome_do_arquivo`.

1
