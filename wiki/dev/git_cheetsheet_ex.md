# bundling
To bundle the whole repo:
```
$ git bundle create repo.bundle --all
```

To unpack:
```
$ git clone repo.bundle repo
```
(Apparently the `HEAD` will be assigned to the `HEAD` in a creation phase)

**N.B.** After cloning the repo will contain the remote `origin` pointing to the bundle file

# misc
[link to GitBook](https://git-scm.com/book/en/v2/Git-Tools-Bundling)
[link to SO](https://stackoverflow.com/questions/11792671/how-to-git-bundle-a-complete-repo)
