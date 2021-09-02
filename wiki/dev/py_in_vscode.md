# Python config in VSCode
- install the the "Python" extension
  (through the "Extensions" pane)
- select the interpereter
  (in the bottom area click on "Select Python Interpreter",
   then select it (among existing or enter the path to a new python interpreter))
- configure the launch mode
  (in the "Run and Debug" pane click on the "RUN AND DEBUG" combo,
   then "Add Configuration" and select "Python File: Debug the currently active Python file",
   after that your `launch.json` file (in the `%project_root%/.vscode/` folder) must be something like this:
   ```
   	...
	{
	    "version": "0.2.0",
	    "configurations": [
	        {
	            "name": "Python: current file",
	            "type": "python",
	            "request": "launch",
	            "program": "${file}",
	            "console": "integratedTerminal"
	        }
	    ]
	}
	...
  ```
  then in the "Run and Debug" pane in the "RUN AND DEBUG" combo 
  select the just added mode and click on the run button (or simply press `F5`)
