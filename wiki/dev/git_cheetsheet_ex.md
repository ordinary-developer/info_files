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
For correct (more or less) cloning use the next scenario:
1. First step
Create a new empty folder on your machine and clone a mirror copy of the .git folder from the repository:
```
cd ~/Desktop && mkdir my_repo_folder && cd my_repo_folder
git clone --mirror https://github.com/planetoftheweb/responsivebootstrap.git .git
```
The local repository inside the folder my_repo_folder is still empty, and there is just a hidden .git folder now that you can see with a "ls -alt" command from the terminal.

2. Second step
Switch this repository from an empty (bare) repository to a regular repository by switching the boolean value "bare" of the Git configurations to false:
```
git config --bool core.bare false
```

3. Third Step
Grab everything that inside the current folder and create all the branches on the local machine, therefore making this a normal repository.
```
git reset --hard
```

# misc 2
[link to GitBook](https://git-scm.com/book/en/v2/Git-Tools-Bundling)
[link to SO](https://stackoverflow.com/questions/11792671/how-to-git-bundle-a-complete-repo)
