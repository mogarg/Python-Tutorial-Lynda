#!/usr/bin/python3
#Defining Modules in Python


#If we don't make a main function and comment out the
#if __name__ check we won't be able to run the egg function
#as it will show a function not found error

def main():
    print("This is the modules.py file")
    egg()
    print("If not-indented this is the line that will be printed first")

def egg():
    print("this is egg")

if __name__ == "__main__":main()


