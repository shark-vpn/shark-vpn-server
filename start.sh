ulimit -c unlimited
gcc -std=gnu99 shark.c chacha20.c -g -o shark && ./shark 7194 "password"
