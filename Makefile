python: fibonacci.py
	@python3 fibonacci.py $(INDEX)

javascript: fibonacci.js
	@node fibonacci.js $(INDEX)

go: fibonacci.go
	@go run fibonacci.go $(INDEX)

java: Fibonacci.java
	@javac Fibonacci.java && java Fibonacci $(INDEX)

cplusplus: fibonacci.cpp
	@g++ fibonacci.cpp -o fibonacci && ./fibonacci $(INDEX)

rust: fibonacci.rs
	@rustc fibonacci.rs && ./fibonacci

ruby:
	@ruby fibonacci.rb

php:
	@php fibonacci.php

shell:
	@chmod +x fibonacci.sh && ./fibonacci.sh

