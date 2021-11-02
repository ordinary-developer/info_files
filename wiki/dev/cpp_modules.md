# Modules in CPP

To compile source code with modules you must include this ability (modules) via the VS installer.

To compile a simple project with modules in Visual C++:
```cpp
import std.core;

int main() {
	std::vector<std::string> v{ "Plato", "Descartes", "Bacon" };
	std::cout << v[0] << std::endl;	
	
	return 0;
}
```

run in the command line:
```
cl /std:c++latest /EHsc /experimental:module /MD main.cpp
```

[here is a ref to Marius Bancila's post](https://mariusbancila.ro/blog/2020/05/07/modules-in-vc-2019-16-5/)
