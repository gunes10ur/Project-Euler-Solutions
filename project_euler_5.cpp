#include <iostream>
using namespace std;

// // Greatest Common Divisor
int gcd(int x, int y) {
    if (y == 0) {
        return x;
    }
    return gcd(y, x % y);
}

// // Least Common Multiple: (x * y) / gcd(x, y);
long lcm(long x, long y) {
    return (x * y) / gcd(x, y);
}

int main() {
    int from_number = 1;
    int to_number = 20;

    if (from_number <= 1) {
        from_number = 2;
    }

    long smallest_multiple = 1;

    while(from_number <= to_number) {
        smallest_multiple = lcm(smallest_multiple, from_number);
        from_number++;
    }

    cout << smallest_multiple << endl;

    return 0;

}
