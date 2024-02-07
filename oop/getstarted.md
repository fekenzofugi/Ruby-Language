# About
This project is all about the chapter 3 of the pickaxe book. It's about Classes, Objects and Variables.

# Instant variables are private by default
We need to create access methods to access the variables.

# Attributes are just methods
One of the most important takes to note is that attributes in Ruby are just methods. They receive a different name to people know how they should view the class we've written.

# Access Control
public methods: can be called by anyone.

protected methods: can be invoked only by objects of the defining class and its subclasses.

private methods: cannot be called with an explicity receiver. The receiver is always the current object `self`.

# Variables
Variables in Ruby are not objects. They're references to objects. Declaring a variable with a string `name = "fernando"` means that the variable name holds a reference and points to the String object "fernando".

#  Reopening Classes (monkey-patching)
You can reopen classes to add new features. You usually do that when you don't have the access to a class. 
Ruby on Rails does that a lot.
