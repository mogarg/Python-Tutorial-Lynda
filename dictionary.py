#!/usr/bin/python3

def main():
    d = {'one':1,'two':2,'three':3,'four':4}#dictionaries are mutable
    for k in sorted(d.keys()):
        print(k,d[k])

if __name__=="__main__":main()
