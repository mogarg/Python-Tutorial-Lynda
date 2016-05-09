#!/usr/bin/python3

def isprime(n):
	if n == 1:
#		print("1 is special")
		return False
	for x in range(2,n):
		if n % x == 0:
#			print("{} equals {}x{}".format(n,x,n // x))
			return False
		else:
#			print(n,"is a prime number")
			return True


def primes(n=1):
	while(True):
		if isprime(n):yield n
		n = n+1


for n in primes():
	if n > 1000000: break
        print (n)
