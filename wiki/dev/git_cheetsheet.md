# frequent git operations

## branches
to create a new branch:
```
$ git fetch origin
$ git checkout -b new_branch origin/master
```

to see only local branches:
```
$ git branch --list
```

to see only remote branches:
```
$ gti branch --list --remote
```

to see all branches (both local and remote):
```
$ git branch --list --all
```

to push a branch to the server:
```
$ git push origin branch_name
```

to push a branch with overwriting:
```
$ git push --force-with-lease origin branch_name
```

to delete a branch locally:
```
$ git branch --D branch_name
```

to delete a branch from the server:
```
$ git push --delete origin branch_name
```

to update data about branches from the server:
```
git remote prune origin
```


## rebasing
to rebase a branch on the other branch:
```
$ git fetch origin
$ git rebase origin/master
```

## rebase conflicts
If there are conflicts after rebasing:
1. resolve conflicts (edit conflict files);
2. use the next command for each conflict file:
```sh
$ git add <fileFqn>	
```
3. type:
```sh
$ git rebase --continue
```

   
