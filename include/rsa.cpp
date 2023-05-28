#include <iostream>
#include <cmath>
#include <chrono>
#include <random>
#include <vector>
#include <utility>

using std::cout;
using std::cin;
using std::endl;

using std::max;
using std::min;

using std::vector;
using std::pair;
using std::string;

using std::chrono::high_resolution_clock;

using std::mt19937_64;

template <typename T>
T mod_pow(T base, T exp, T modulus) {
  base %= modulus;
  T result = 1;
  while (exp > 0) {
    if (exp & 1) result = (result * base) % modulus;
    base = (base * base) % modulus;
    exp >>= 1;
  }
  return result;
}

bool is_prime(uint64_t number) {
    for (uint64_t i = 2; i <= sqrt(number); ++i) if (number % i == 0) return false;
    return true;
}

uint64_t random_prime_number(uint64_t a, uint64_t b) {
    mt19937_64 rnd(high_resolution_clock::now().time_since_epoch().count());
    flag:
    uint64_t prime_number = a + rnd() % (b - a);
    prime_number |= 1;
    while (!is_prime(prime_number)) prime_number += 2;
    if (prime_number > b) goto flag;
    return prime_number;
}

pair<int64_t, int64_t> advanced_euclid_algorithm(int64_t a, int64_t b, int64_t x0, int64_t y0, int64_t x1, int64_t y1) {
    if (a % b == 0) {
        pair<int64_t, int64_t> a(x1, y1);
        return a;
    }
    return advanced_euclid_algorithm(b, a % b, x1, y1, x0 - (int64_t)(a / b) * x1, y0 - (int64_t)(a / b) * y1);
}

pair<uint64_t, uint64_t> get_random_pair_p_q(uint64_t bit) {
    pair<uint64_t, uint64_t> couple(random_prime_number(pow(2, bit - 1), pow(2, bit)), random_prime_number(pow(2, bit - 1), pow(2, bit)));
    return couple;
}

uint64_t get_n(pair<uint64_t, uint64_t> couple) {
    return couple.first * couple.second;
}

uint64_t euler_function(pair<uint64_t, uint64_t> couple) {
    return (couple.first - 1) * (couple.second - 1);
}

uint64_t get_e(uint64_t euler_number) {
    return random_prime_number(1, euler_number - 1);
}

uint64_t get_d(uint64_t e, uint64_t euler_number) {
    pair<uint64_t, uint64_t> couple = advanced_euclid_algorithm(e, euler_number, 1, 0, 0, 1);
    uint64_t d = min(couple.first, couple.second);
    return d;
}

vector<uint64_t> encrypt_data(string data, pair<uint64_t, uint64_t> public_key) {
    vector<uint64_t> encrypted_data;
    for (char i : data) encrypted_data.push_back((uint64_t)i);
    for (uint64_t i = 0; i < data.size(); ++i) encrypted_data[i] = mod_pow(encrypted_data[i], public_key.first, public_key.second);
    return encrypted_data;
}

string decrypt_data(vector<uint64_t> encrypted_data, pair<uint64_t, uint64_t> private_key) {
    string decrypted_data = "";
    for (uint64_t i : encrypted_data) decrypted_data.push_back(mod_pow(i, private_key.first, private_key.second));
    return decrypted_data;
}

bool is_keys_correct(pair<pair<uint64_t, uint64_t>, pair<uint64_t, uint64_t>> keys) {
    return "Hello RSA!" == decrypt_data(encrypt_data("Hello RSA!", keys.first), keys.second);
}

pair<pair<uint64_t, uint64_t>, pair<uint64_t, uint64_t>> generate_rsa_pair(uint64_t bit) {
    flag:
    pair<uint64_t, uint64_t> couple = get_random_pair_p_q(bit);
    uint64_t n = get_n(couple);
    uint64_t euler_number = euler_function(couple);
    uint64_t e = get_e(euler_number);
    uint64_t d = get_d(e, euler_number);
    pair<uint64_t, uint64_t> public_key(e, n);
    pair<uint64_t, uint64_t> private_key(d, n);
    pair<pair<uint64_t, uint64_t>, pair<uint64_t, uint64_t>> keys(public_key, private_key);
    if (!is_keys_correct(keys)) goto flag;
    return keys;
}
