# Fibonacci
Calculates fibonacci sequence in various programming languages.

In this repository, you can build and use docker images to run the program without installing any programming languages. To run the container, specify environment variables `LANGUAGE` and `INDEX` with appropriate programming language and fibonacci index to obtain the fibonacci number.

### Currently available languages:
The following indicates programming languages available and their respective index support. Fibonacci index must be a positive integer from 1 to the specified number.
```
   32 python
    * javascript
32766 go
    * java
    * cplusplus
   30 rust
    - ruby
    - php
   92 bash
    - haskell
    - perl
    - lua
```

### Example execution (returns 55):
```
docker build . -t fibonacci
docker run -e LANGUAGE=javascript -e INDEX=10 fibonacci
```
