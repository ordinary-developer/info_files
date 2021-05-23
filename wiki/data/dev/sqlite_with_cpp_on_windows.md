# SQLite with C++
Download the bins (the .dll file) and src (the .h file) from the [official donloading page](https://www.sqlite.org/download.html).

# a project with a dll
In Visual Studio 2010, click on "Tools, VS Command Prompt", In the command line window, enter, for example:
```
lib /DEF:"C:\SQLite\sqlite3.def" /OUT:"C:\SQLite\sqlite3.lib"
```


a ref:
https://stackoverflow.com/questions/3893701/how-do-i-include-a-sqlite-dll-in-my-c-project/14031545