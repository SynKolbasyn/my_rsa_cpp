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
T mod_pow(T base, T exp, T modulus);

bool is_prime(uint64_t number);

uint64_t random_prime_number(uint64_t a, uint64_t b);

pair<int64_t, int64_t> advanced_euclid_algorithm(int64_t a, int64_t b, int64_t x0, int64_t y0, int64_t x1, int64_t y1);

pair<uint64_t, uint64_t> get_random_pair_p_q(uint64_t bit);

uint64_t get_n(pair<uint64_t, uint64_t> couple);

uint64_t euler_function(pair<uint64_t, uint64_t> couple);

uint64_t get_e(uint64_t euler_number);

uint64_t get_d(uint64_t e, uint64_t euler_number);

vector<uint64_t> encrypt_data(string data, pair<uint64_t, uint64_t> public_key);

string decrypt_data(vector<uint64_t> encrypted_data, pair<uint64_t, uint64_t> private_key);

bool is_keys_correct(pair<pair<uint64_t, uint64_t>, pair<uint64_t, uint64_t>> keys);

pair<pair<uint64_t, uint64_t>, pair<uint64_t, uint64_t>> generate_rsa_pair(uint64_t bit);
