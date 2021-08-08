import java.math.BigInteger;

class Fibonacci {
    public static void main(String[] args) {
        byte index = Byte.valueOf(args[0]);
        assertIndex(index);
        System.out.println(fibonacci(index)); 
    }

    private static BigInteger fibonacci(byte index) {
        BigInteger[][] initial = initiateMatrix();
        BigInteger[][] current = initiateMatrix();
        for (byte i = 2; i < index; i++) {
            current = multiply(current, initial);
        }
        return current[0][0];
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

    private static void assertIndex(byte index) {
        if (index < 1) {
            throw new RuntimeException("Index must be a positive integer.");
        }
    }
}