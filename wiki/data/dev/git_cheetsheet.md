# frequent git operations

## rebasing
```
$ git fetch origin
$ git rebase origin/master
```


## creating a new branch
```
$ git fetch origin
$ git checkout -b new_branch origin/master
```


## pushing a branch to the server
```
$ git push origin branch_name
```

or 

```
$ git push --force-with-lease origin branch_name
```
