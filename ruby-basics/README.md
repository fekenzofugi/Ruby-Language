# About
This directory has the files of the crash course of the Ruby programming language. This follows the book Programming Ruby 3.2 - The Pragmatic Programmers' Guide by Noel Rappin with Dave Thomas.

# Ruby-Crash-Course
This crash course covers the basics of the language, syntax, naming conventions, logic, Ruby Symbols, Blocks, enumeration, why Ruby is a pure object-oriented language and more.
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

## Basic Ruby sytntax
### Function
```
def say_hello(name)
  return "Grettings, #{name}"
end

puts say_hello("Kenzo")
```
In this example, we have the basic syntax to define a function, notice that it doesn't need curly braces. We can concatenate a string with a variable using double quotes, puts prints the string on the console occupies the hole line and you don't need to write semicolon at the end of a statement.

I think you notice on the last line that we didn't use parentheses while using the method puts, that's because Ruby allows you to call methods without them. But to avoid confusion, specially in more complex cases, you can always use parentheses.

There're different ways to create string literals, with single quotes and double quotes.
With double quotes Ruby does more work, it looks for backslash features and string interpolation.

### Naming conventions
Local Variable, methods parameters, method names: lowercase with underlines
Class names, module names: PascalCase
Instance Variables: start with @
Class Variables: start with @@
Global Variables: start with $
Contants: all uppercase

### Arrays
Arrays in Ruby are different from C++, it's more like a list, it is a linear list of objects that you retrieve by their index, grow as they needed to hold new elements, add at end and can hold different data types.

Initialization:
```
programming_languages = ["Ruby", "Java", "Python", "C++", "Go"]
puts programming_languages[0]
```

### Hashes
Hashes in an association (key/value), where each key has a value associated, you can retrive then via their keys, grows when it needs to grow, add at end and can hold different data types.

Initialization:
```
sports_categories = {
  "basketball" => "group",
  "swimming" => "both",
  "football" => "group",
  "chess" => "individual",
  "voleyball" => "group" 
}

puts sports_categories["basketball"]
```
On the left we have the key values and on the left the values of those.

### nil value
In many languages the null keyword means that there're no object, in Ruby it is an object that represents nothing.

### Ruby Symbols
Imagine a situation where you need to use the same string over and over again. For those cases you have the Ruby symbols. 
You can think of symbols as special strings that are immutable.
Symbols are frequently used in hash keys and for id values.

```
sports_categories = {
  :basketball => "group",
  :swimming => "both",
  :football => "group",
  :chess => "individual",
  :voleyball => "group" 
}

puts sports_categories[:basketball]
```

if we pass sports_categories("basketball") we'll receive a nil value.

Because symbols are used a lot with hashes, hashes have a shortcut with Symbols:
```
sports_categories = {
  basketball: "group",
  swimming: "both",
  football: "group",
  chess: "individual",
  voleyball: "group" 
}

puts sports_categories[:basketball]
```

### Control Structures

#### if statement

```
today = Time.now
puts today

if today.saturday?
  puts "Let's go running!"
elsif today.sunday?
  puts "Relax"
else
  puts "Study"
end
```

The biggest difference to C++ it's the end and elsif keywords. Where elsif means else if. We could use the parentheses.

#### while loop

```
count = 0

while (count 10)
  count += 1
  puts count
end
```

#### for loop

```
animals = ["bear", "rabbit", "dog"]

for animal in animals
  puts animal
end

for count in 1..10
  puts animals[0]
end
```

#### do while loop
```
loop do 
  puts "Start of loop"
  
  var = 10

  if (var == 10)
    break
  end
end
```

#### until loop
```
x = gets.chomp.to_i

until x < 0
  puts x
  x -= 1
end

puts "Done!"
```

### Regular Expressions
Regular expressions is a string pattern.
The syntax of a regular expression is the /string|string2/.

```
line = gets

if line.match?(/Ruby|Rust/) 

  puts line

end
```

You could use =~ match operator or the match?(regular_expression) method that are available for both strings and regular expressions.

### Blocks
Blocks will appear in almost every Ruby program and it's one of the Ruby's particular strenghts.

A block is a chunck of code that is executed after a method. This is a very powerfull tool that makes Ruby extremely flexible.

You can write blocks in two ways: using curly braces or using do and end.

You should use the first one when you're dealing with single line blocks. 
You should use the other when you're dealing with multiline blocks.

#### each method
You use each to loop through an array or a hash. This particular method you need to combine with a block.

```
array = [1, 2, 3, 4, 5, 6, 7, 8, 9]

array.each do |n|
  puts n 
end

#or

array.each {|n| puts n}
```
The each method runs the block and passes an element as an argument.

#### yield 
You can invoke a block inside a method with the yield statement.

```
def hello 
  yield
  yield
end

hello {puts "hello"}
```

You can provide arguments through yield statement, they'll be passed to the block.

```
def hello_world
  yield("hello world")
  yield("grettings world")
end

hello_world {|type| puts type}
```

#### Enumeration 
When we're looping through a collection of objects, this act is called enumeration. We can to this with blocks as we already see in the each example.
But we can use other methods such as times and upto


## Reading and Writing 
gets: read a line

print: print without line skip
puts: print with line skip