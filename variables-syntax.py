#!/usr/bin/python3

def main():
   atuple = (1,2,3) #A tuple is immutable
   alist = [1,2,3] #A list is mutable
   print(atuple,type(atuple))
   print(alist,type(alist))

   alist.append(5)
   print(alist)

   alist.insert(2,7)
   print(alist)

   x = "string" #A string is an immutable sequence
   for i in x:
       print(i)

if __name__=="__main__":main()
