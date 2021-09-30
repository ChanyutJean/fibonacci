# Fibonacci
Calculates fibonacci sequence in various programming languages.

In this repository, you can build and use docker images to run the program without installing any programming languages. To run the container, specify environment variables `LANGUAGE` and `INDEX` with appropriate programming language and fibonacci index to obtain the fibonacci number.

You can see the inner workings of the repository in https://github.com/ChanyutJean/fibonacci/blob/main/Fibonacci.pdf

### Currently available languages:
The following indicates programming languages available and their respective index support. Fibonacci index must be a positive integer from 1 to the specified number.
```
99999 javascript
99999 java
99999 haskell
32766 go
   92 php
   92 bash
   84 commonlisp
   68 lua
   46 cplusplus
   32 python
   30 rust
   28 perl
   25 ruby
```

### Example execution (returns 55):
```
docker build . -t fibonacci
docker run -e LANGUAGE=javascript -e INDEX=10 fibonacci
```
