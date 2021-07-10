# Main C++ refs
[C++ ISO committee](https://isocpp.org/)  
[C++ ISO blog digest](https://isocpp.org/blog)  
[C++ ISO drafts](http://www.open-std.org/jtc1/sc22/wg21)  
[CppReference](https://cppreference.com/)


# C++ Online Compilers
- [Judge ide](https://ide.judge0.com/)
- [ReplIt](https://replit.com)
- [Wandbox](https://wandbox.org/)
- [Coliru (Cpprefrence's compiler)](http://coliru.stacked-crooked.com/)
- [Codechef](https://www.codechef.com/ide)
- [OneCompiler](https://onecompiler.com/cpp)
- [CodeInterview (trial mode)](https://codeinterview.io/)
- [BodBolt](https://godbolt.org/)
- [OnlineGdb](https://www.onlinegdb.com/)


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
```
g++ -fmodules-ts -std=c++20 -c -x c++-system-header iostream && g++ -fmodules-ts -std=c++20 -c main.cpp && g++ -o main main.o && ./main
```

Here is a good [ref](https://accu.org/journals/overload/28/159/sidwell/) for module compilation.
