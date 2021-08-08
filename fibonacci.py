import sys

def main():
    index = int(sys.argv[1])
    assert_index(index)
    print(str(fibonacci(index)))

def fibonacci(index):
    if index < 3:
        return 1
    return fibonacci(index - 1) + fibonacci(index - 2)

def assert_index(index):
    if index < 1 or index > 127:
        raise Exception("Index must be a positive integer between 1 and 127.")

main()
    