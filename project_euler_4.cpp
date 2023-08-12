#include <iostream>
using namespace std;

bool is_palindrome(int number) {

    int normal = number;
    int reversed = 0;

    while (normal > 0) {
        int digit = normal % 10;
        reversed = reversed * 10 + digit;
        normal = normal / 10;
    }

    return reversed == number;
}

int main() {
    int largest_palindrome = 0;

    for (int num_a = 100; num_a <= 999; num_a++) {

        for (int num_b = num_a; num_b <= 999; num_b++) {

            int result = num_a * num_b;

            if (result > largest_palindrome && is_palindrome(result)) {
                largest_palindrome = result;
            }

        }
    }

    cout << largest_palindrome << endl;

    return 0;
}