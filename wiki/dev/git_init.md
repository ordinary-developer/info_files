# to make a repo "portable" (more or less)
to make a repo "portable" (make commits from the flash on different PCs)
it is necessary to edit the `%repo_root%/.git/config` file in such a way:
- it is neccessary to support long paths and set the `autocrlf` options to false
  ```
  [code]
    
    longpaths = true
    autocrlf = false
    ...
  ```
- set default values for credentials
  (to make commits always under the same user)
  ```
  [user]
    ...
    name = ordinary-developer
    email = merely.ordinary.developer@gmail.com
    editor = vim
    ...
  ```

so the `.config` file can be something like that:
```
[core]
    repositoryformatversion = 0
    filemode = false
    bare = false
    logallrefupdates = true
    symlinks = false
    ignorecase = true
    longpaths = true
    autocrlf = false
[user]
    name = ordinary-developer
    email = merely.ordinary.developer@gmail.com
    editor = vim
[remote "origin"]
    url = https://github.com/ordinary-developer/info_files.git
    fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
    remote = origin
    merge = refs/heads/master
```
