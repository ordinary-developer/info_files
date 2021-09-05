Here some idiomatic errors for C++ are placed.

# colliding with WinApi's 'min' and 'max' macros
if the file includes the "Windows.h" header then `min` and `max` macro are defined
so the code like that:
```
int val = std::numeric_limits<int>::min();
```

will emit the next compiler errors:
```
not enough arguments for function-like macro invocation 'min'
```
due to the attempt to intepretate `min` as WinApi's `min` macro

to avoid this use the next trick:
```
int val = (std::numeric_limits<int>::min)();
```
