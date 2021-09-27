import java.math.BigInteger;

class Fibonacci {
    public static void main(String[] args) {
        int index = Integer.valueOf(args[0]);
        assertIndex(index);
        System.out.println(fibonacci(index)); 
    }

    private static BigInteger fibonacci(int index) {
        BigInteger[][] initial = initiateMatrix();
        return exponentiate(initial, index - 1)[0][0];
    }

    private static BigInteger[][] initiateMatrix() {
        return new BigInteger[][] {{ BigInteger.ONE, BigInteger.ONE }, { BigInteger.ONE, BigInteger.ZERO }};
    }

    private static BigInteger[][] multiply(BigInteger[][] multiplicand, BigInteger[][] multiplier) {
        BigInteger topLeft = multiplicand[0][0].multiply(multiplier[0][0]).add(multiplicand[0][1].multiply(multiplier[1][0]));
        BigInteger topRight = multiplicand[0][0].multiply(multiplier[0][1]).add(multiplicand[0][1].multiply(multiplier[1][1]));
        BigInteger bottomLeft = multiplicand[1][0].multiply(multiplier[0][0]).add(multiplicand[1][1].multiply(multiplier[1][0]));
        BigInteger bottomRight = multiplicand[1][0].multiply(multiplier[0][1]).add(multiplicand[1][1].multiply(multiplier[1][1]));

        return new BigInteger[][] {{ topLeft, topRight }, { bottomLeft, bottomRight }};
    }

    private static BigInteger[][] square(BigInteger[][] base) {
        return multiply(base, base);
    }

    private static BigInteger[][] exponentiate(BigInteger[][] base, int exponent) {
        if (exponent == 1) {
            return base;
        } else if (exponent % 2 == 1) {
            return multiply(base, exponentiate(square(base), (exponent - 1) / 2));
        } else {
            return exponentiate(square(base), (exponent / 2));
        }
    }

    private static void assertIndex(int index) {
        if (index < 1 || index > 99999) {
            throw new RuntimeException("Index must be a positive integer between 1 and 99999.");
        }
    }
}