#!/usr/bin/python3
#In python we don't have a switch statement
#rather we have a dictionary. 

def main():
    choices=dict(
        one='first',
        two='two',
        three='three',
        four='four',
        five='fifth'
    )
    v = 'one'
    print (choices[v]) #this can be used like a switch statement

    #however if we ask for a key which is not present it will throw
    #an error. An alternate way is to set a default value like
    k = 'seven'
    print(choices.get(k,'other'))

if __name__=="__main__":main()
