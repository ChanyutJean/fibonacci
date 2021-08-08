python: fibonacci.py
	@python3 fibonacci.py $(INDEX)

javascript: fibonacci.js
	@node fibonacci.js $(INDEX)

go: fibonacci.go
	@go run fibonacci.go $(INDEX)

java: Fibonacci.java
	@javac Fibonacci.java
	@java Fibonacci $(INDEX)