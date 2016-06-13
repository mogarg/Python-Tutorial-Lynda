#!/usr/bin/python3

class Egg:
    def __init__(self,kind="fried"):
        self.kind = kind

    def whatKind(self):
        return self.kind


def main():
    print("This is the syntax-objects.py file")
    fried = Egg()
    print(fried.whatKind())

if __name__=="__main__":main()
