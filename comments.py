#!/usr/bin/python3

def main():
    for n in primes():
        if n > 1000: break
        print (n)

def isprime(n):
    if n==1: #one is never prime
        return False
    for x in range(2,n):
         if n%x == 0:  #found a divisor hence not prime
            return False
    else:
        return True

def primes(n=1):
    while(True):
        if isprime(n):yield n   #yield makes this a generator
        n += 1

if __name__ == "__main__":main()
