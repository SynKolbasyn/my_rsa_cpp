#include "rsa.hpp"

int main(int argc, char** argv) {
    pair<pair<uint64_t, uint64_t>, pair<uint64_t, uint64_t>> keys = generate_rsa_pair(16);
    pair<uint64_t, uint64_t> public_key = keys.first;
    pair<uint64_t, uint64_t> private_key = keys.second;

    cout << "Public key  -> [ " << public_key.first << " | " << public_key.second << " ]" << endl;
    cout << "Private key -> [ " << private_key.first << " | " << private_key.second << " ]" << endl;
    cout << decrypt_data(encrypt_data("Hello RSA!", public_key), private_key) << endl;
    
    return 0;
}
