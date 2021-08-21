#include <iostream>
using namespace std;

int main(int argc, char const *argv[]) {
    int index = atoi(argv[1]);
    if (index < 1 || index > 46) {
        printf("Index must be a positive integer between 1 and 46.");
        return 1;
    }
    cout << (fibonacci(index)) << endl;
    return 0;
}

int fibonacci(int index) {
    if (index == 1) {
        return 1;
    } else if (index == 2) {
        return 1;
    } else if (index == 3) {
        return 2;
    } else if (index == 4) {
        return 3;
    } else if (index == 5) {
        return 5;
    } else if (index == 6) {
        return 8;
    } else if (index == 7) {
        return 13;
    } else if (index == 8) {
        return 21;
    } else if (index == 9) {
        return 34;
    } else if (index == 10) {
        return 55;
    } else if (index == 11) {
        return 89;
    } else if (index == 12) {
        return 144;
    } else if (index == 13) {
        return 233;
    } else if (index == 14) {
        return 377;
    } else if (index == 15) {
        return 610;
    } else if (index == 16) {
        return 987;
    } else if (index == 17) {
        return 1597;
    } else if (index == 18) {
        return 2584;
    } else if (index == 19) {
        return 4181;
    } else if (index == 20) {
        return 6765;
    } if (index == 21) {
        return 10946;
    } else if (index == 22) {
        return 17711;
    } else if (index == 23) {
        return 28657;
    } else if (index == 24) {
        return 46368;
    } else if (index == 25) {
        return 75025;
    } else if (index == 26) {
        return 121393;
    } else if (index == 27) {
        return 196418;
    } else if (index == 28) {
        return 317811;
    } else if (index == 29) {
        return 514299;
    } else if (index == 30) {
        return 832040;
    } else if (index == 31) {
        return 1346269;
    } else if (index == 32) {
        return 2178309;
    } else if (index == 33) {
        return 3524578;
    } else if (index == 34) {
        return 5702887;
    } else if (index == 35) {
        return 9227465;
    } else if (index == 36) {
        return 14930352;
    } else if (index == 37) {
        return 24157817;
    } else if (index == 38) {
        return 39088169;
    } else if (index == 39) {
        return 63245986;
    } else if (index == 40) {
        return 102334155;
    } else if (index == 41) {
        return 165580141;
    } else if (index == 42) {
        return 267914296;
    } else if (index == 43) {
        return 433494437;
    } else if (index == 44) {
        return 701408733;
    } else if (index == 45) {
        return 1134903170;
    } else if (index == 46) {
        return 1836311903;
    } else {
        return -1;
    }
}
