#!/usr/bin/python3

def main():
    func(5)

def func(a=7): #provide a default value
    for i in range(a,100,1):
        print(i)
    print()

if __name__=="__main__":main()
