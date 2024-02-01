# About
This directory has the files of the crash course of the Ruby programming language. This follows the book Programming Ruby 3.2 - The Pragmatic Programmers' Guide by Noel Rappin with Dave Thomas.

# Ruby-Crash-Course
This crash course covers the basics of the language, syntax, naming conventions, logic, Ruby Symbols, Blocks, enumeration and more.
Each file will contain Ruby files with the feature.

## 1. Ruby is an Object-Oriented Language
Ruby is a OOP language, this means that Ruby provides constructs to create objects, objects are things that contain data and methods that manipulates that data. 
What differs Ruby from other languages is that Ruby does not have non-object basic types that behave differently such as interfaces. 
When you're writing Object-oriented programs, you want to model real world entities. To do that you create a class of that entity. A class is the most general case of that entity. Next, you can create objects based of that class. For example, we have a class named Song that has fields such as title, duration and artist, based of that model we have objects based on that for example song2 is an object of Song, and have title of "O come to the Altar", duration of 5:32 and the artist is "Elevation Worship". Of course we could have many other objects with different data.
To create a object we have special methods named constructor and have the following syntax:
```
song2 = Song.new(title: "O Come to the Altar", duration: 5:32, artist: "Elevation Worship")
```
Each object has a different id, we can access through the attribute object_id. If you're using Rails you may not need to use it.
We can define instance variables for each object, for example, each song has a different title and are unique to this object.
We can define instance methods that are unique to the object. Those are defined in the class code.
To call a method we use the dot notation.
```
  song2.play
```
The translation of the statement above is "the statement asks the object song2 to play the song". In this case song2 is the receiver and play is the name of the method.
With Ruby methods we often say that the statement send a message to the object. This message contain the method's name and the method's arguments. 
The method receive the message, then try to found inside the class code the method with such name. If it founds the method it executes, else there's an error.
This message calling methods were inherited from the SmallTalk programming language.

Often we say that Ruby is a pure Object-Oriented Language, thats because Ruby doens't have static or basic types. In Ruby we call the methods through objects and there's no methods attached to classes only.
