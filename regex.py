#!/usr/bin/python3

import re

def main():
    fh = open('raven.txt')
    for line in fh:
        if re.search('(Len|Neverm)ore',line):
            print(line)
    for line in fh:
        print(re.sub('(Len|Neverm)ore','####',line))



if __name__=="__main__":main()
