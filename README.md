# Fibonacci
Calculates fibonacci sequence in various programming languages.

In this repository, you can build and use docker images to run the program without installing any programming languages. To run the container, specify environment variables `LANGUAGE` and `INDEX` with appropriate programming language and fibonacci index to obtain the fibonacci number.

### Currently available languages:
```
python
javascript
go
java
```

### Example execution (returns 55):
```
docker build . -t fibonacci
docker run -e LANGUAGE=javascript -e INDEX=10 fibonacci
```
