#!/usr/bin/python3

try:
    fh = open('hello.txt')
except IOError as e:
    print('Something bad happened: ({})'.format(e))

print('Error generated')
