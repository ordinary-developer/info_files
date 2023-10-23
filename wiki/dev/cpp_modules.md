# Modules in Visual C++

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

# C++ module online compilation
To compile such a file in *coliru*:

```cpp
import <iostream>;

int main()
{
  int answer {42};

  std::cout << "The answer to life, the universe, and everything is "
            << answer
            << std::endl;

  return 0;
} 
```

insert into coliru's command line something like this:

```sh
g++ -fmodules-ts -std=c++20 -c -x c++-system-header iostream \
    && g++ -fmodules-ts -std=c++20 -c main.cpp \
    && g++ -o main main.o && ./main
```

Here is a good [ref](https://accu.org/journals/overload/28/159/sidwell/) for module compilation.

