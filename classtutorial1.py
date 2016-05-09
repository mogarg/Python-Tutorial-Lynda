#!/usr/bin/python3

#Inheritance in Python
class AnimalActions():
    def quack(self): return self.strings['quack']
    def feathers(self): return self.strings['feathers']
    def bark(self): return self.strings['bark']
    def fur(self): return self.strings['fur']

class Duck(AnimalActions):
    strings = dict(
        quack= "Quaaaak!",
        feathers = "The duck has grey and white feathers",
        bark = "The duck cannot bark",
        fur = "The duck has no fur"
    )

d = Duck()
print(d.bark())
