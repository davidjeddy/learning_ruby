# Notes

## Basic Info

- Yukihiro Matsumoto, commonly known as 'Matz' created the Ruby language in 1993

- the principle of least surprise

- Parentheses are usually optional with a method call

- In Ruby, everything from an integer to a string is considered to be an object

- each object has built in 'methods' 

- Ruby is dot notation

- Some methods such as puts and gets are available everywhere

- Java and C programmers - no need to write a main method/function

- String literals are sequences of characters between single or double quotation marks.

- Ruby is an interpreted language, so you don't have to recompile to execute the program written in Ruby

- The Ruby coding convention states that file/directory name is lower case of class/module name with .rb extension. For example, Foo class has name foo.rb

## Features

- Free format - You can start writing your program from any line and column.

- Case sensitive

- Comments : # single line. =start ... =end multiline

- Statement delimiters: new line and ; . '\' escape character

- Keywords :

  - everything is true except the reserved words false and nil

  - Keywords would be called "reserved words"

  - if you prefix these keywords with @, @@ or $ prefixes, or sigils, and use them as instance, class or global variable names, respectively.

  - Keywords resource: http://ruby-doc.org/core-2.3.0/doc/keywords_rdoc.html

- Arithmatic output date type is determined by input types int in, int out. dec. in, dec. out.

## Operators 

- [http://rubylearning.com/images/class.png](http://rubylearning.com/images/class.png)

- [http://rubylearning.com/images/operators.jpg](http://rubylearning.com/images/operators.jpg)

- The sign of the result (for % operator) is always the same as the sign of the second operand.

- you can write a Boolean expression such as the following that assigns values to variables until it encounters a false value:

  - if a = f(x) and b = f(y) and c = f(z) then d = g(a,b,c) end

## Strings

- String literals are sequences of characters between single or double quotation marks.  

- If puts is passed an object that is not a string, puts calls the to_s method of that object and prints the string returned by that method.

- In Ruby, strings are mutable. They can expand as needed, without using much time and memory. Ruby stores a string as a sequence of characters.

- Using the Grave accent (`) the contents of the string are treated as a command output string. It is sent to the operating system as a command to be executed 

## Variables

- local variable references look just like method invocation expressions

## Scope

- Scope refers to the reach or visibility of variables. Different types of variables have different scoping rules.

### Global SCope:

  - used least often

  - accessible via the entire program

  - distinguished by starting with a dollar-sign ($) character

  - used very little

  - Ruby interpreter starts up with a fairly large number of global variables already initialized

    - the global variable $0 contains the name of the file Ruby is executing

    - The global $: (dollar sign followed by a colon) contains the directories that make up the path Ruby searches when you load an external file

    - $$ contains the process id of the Ruby process. 

### Local scope

- The top level (outside of all definition blocks) has its own local scope.

- Every class or module definition block (class, module) has its own local scope, even nested class/module definition blocks.

- Every method definition (def) has its own local scope.

# Input


