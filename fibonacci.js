function main() {
    index = parseInt(process.argv[2])
    assertIndex(index)
    console.log(fibonacci(index))
}

function fibonacci(index) {
    const sequence = []
    sequence[0] = BigInt(0)
    sequence[1] = BigInt(1)
    sequence[2] = BigInt(1)
    
    for (let i = 3; i <= index; i++) {
        sequence[i] = sequence[i - 1] + sequence[i - 2]
    }

    return sequence[index].toString()
}

function assertIndex(index) {
    if (index < 1 || index > 99999) {
        throw new Error('Index must be a positive integer between 1 and 99999.')
    }
}

main()