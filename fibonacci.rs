fn main() {
    let index: i128 = 30;
    assert_index(index);
    println!("{}", fibonacci(index));
}

fn assert_index(index: i128) {
    if index < 1 || index > 30 {
        panic!("Index must be a positive integer between 1 and 30.")
    }
}

fn fibonacci(index: i128) -> i128 {
    let mut sum: i128 = 0;
    for term in 0..((index + 1) / 2) {
        sum += combination(index - term - 1, term);
    }
    return sum;
}

fn combination(n: i128, k: i128) -> i128 {
    let mut product: i128 = 1;
    for numerator in (k + 1)..(n + 1) {
        product *= numerator;
    }
    for denominator in 1..(n - k + 1) {
        product /= denominator;
    }
    return product;
}