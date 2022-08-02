# [DrRacket]

## install
- download from [here](https://download.racket-lang.org/) and install
- add "path/to/racket/bin" to the `PATH` environment variable
  (_"MyComputer - Properties - Advanced Params -> Environment variables"_)

  to set only for the current cmd session use something like this
  ```cmd
  > set PATH=%PATH%;"<path/to/racket.bin>"
  ```
- run the command line (with a path to racket in %PATH%)
- install SICP support for DrRacket
  ```
  > raco pkg install sicp
  ```

## run
- create a file with something like this
  ```
  #lang sicp
  
  (+ 3 5)
  ```
- run the command line (with a path to racket in %PATH%)
- run
  ```cmd
  > Racket.exe <file_name>
  ```


# [misc: from Hexlet]
([intro article](https://guides.hexlet.io/ru/how-to-learn-sicp/), [repo](https://github.com/hexlet-boilerplates/sicp-racket))

## install
- install RackUnit
  ```
  > rack pkg install rackunit
  ```
- install Racket-review linter
  ```
  > racko pkg install review
  ```

## run official (from hexlet) examples
- clone the [repo](https://github.com/hexlet-boilerplates/sicp-racket)
- run the command line and enter the repo folder
- write code (look "sicp/chapter1/02.rkt")
- run tests
  ```
  > make test
  ```
- run linter
  ```
  > make lint
  ```
