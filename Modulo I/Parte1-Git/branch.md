# Branch

Um **"branch"** (ou "ramo", em português) em Git é essencialmente uma linha de desenvolvimento independente dentro de um repositório. Ele permite que você trabalhe em diferentes partes do seu projeto simultaneamente sem interferir no progresso de outras partes. Cada branch possui seu próprio conjunto de commits, representando um histórico único de alterações.

* E uma forma de separar as versões de cada projeto

* Cada nova features do projeto ficar em uma branch separado e no final as branches serão unidas

## Criando Branch

```bash
git branch <nome-da-branch|ramo>
```

## Informa sua Branch

```bash
git branch
```

## Removendo Branch

```bash
git branch -d <nome_do_branch>
```

## Mudando de Branch

```bash
git checkout <nome_do_novo_branch>
```

## Salvando na outra branch

```bash
 git push --set-upstream origin <branch-nova>
```

## Unindo branchs

```bash
git merge <nome-branch-criada>
```

* é um comando usado para integrar as alterações de uma branch para outra. Quando você quer incorporar as alterações de uma branch em outra, você usa o comando `git merge`

## git stash

O comando `git stash` é usado para temporariamente armazenar (ou "stashar") as mudanças locais em um diretório de trabalho limpo, permitindo que você trabalhe em outra tarefa ou branch sem precisar comitar as alterações atuais.

Quando você usa `git stash`, as mudanças não comitadas são guardadas em uma área especial de stash. Isso é útil quando você precisa alternar rapidamente para outra tarefa ou branch sem fazer um commit das mudanças atuais.

Aqui está um exemplo de como usar `git stash`:

1. Faça alterações no seu diretório de trabalho.
2. Use o comando `git stash` para guardar as mudanças:

```bash 
git stash
```

3. Agora você pode alternar para outra branch ou realizar outras tarefas.
4. Quando estiver pronto para retomar as mudanças guardadas, use `git stash apply`:

```bash
git stash apply
```



5. Se você deseja remover as mudanças do stash após aplicá-las, pode usar:

```bash
git stash drop
```

6.Ou você pode aplicar e remover as mudanças do stash de uma só vez usando:

```bash
git stash pop
```


