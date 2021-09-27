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
	@rustc fibonacci.rs && ./fibonacci $(INDEX)

ruby:
	@ruby fibonacci.rb $(INDEX)

php:
	@php fibonacci.php $(INDEX)

bash:
	@bash fibonacci.sh $(INDEX)

perl:
	@perl fibonacci.pl $(INDEX)

lua:
	@lua fibonacci.lua $(INDEX)

haskell:
	@./fibonacci $(INDEX)

commonlisp:
	@clisp fibonacci.lisp $(INDEX)

