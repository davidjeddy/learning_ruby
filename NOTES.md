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

- The Ruby convention is to use underscores to separate words in a multiword method or variable name.

- By convention, most constants are written in all uppercase with underscores to separate words, LIKE_THIS. 

- Ruby class and module names are also constants, but they are conventionally written using initial capital letters and camel case, LikeThis.


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

- Variables in Ruby can contain data of any type. You can use variables in your Ruby programs without any declarations.

- Variable names denotes its scope (local, global, instance, etc.).

  - A local variable (declared within an object) name consists of a lowercase letter (or an underscore) followed by name characters (sunil, _z, hit_and_run).

  - An instance variable (declared within an object always "belongs to" whatever object self refers to) name starts with an ''at'' sign (''@'') followed by a name (@sign, @_, @Counter).

  - A class variable (declared within a class) name starts with two ''at'' signs (''@@'') followed by a name (@@sign, @@_, @@Counter). A class variable is shared among all objects of a class. Only one copy of a particular class variable exists for a given class. Class variables used at the top level are defined in Object and behave like global variables. Class variables are rarely used in Ruby programs.

  - Global variables start with a dollar sign (''$'') followed by name characters. A global variable name can be formed using ''$-'' followed by any single character ($counter, $COUNTER, $-x). Ruby defines a number of global variables that include other punctuation characters, such as $_ and $-K.

  -  variables in Ruby act as "references" to objects, which undergo automatic garbage collection.

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

## Input

- TDOUT is a global constant which is the actual standard output stream for the program.

- flush flushes any buffered data within io to the underlying operating system (note that this is Ruby internal buffering only; the OS may buffer the data as well).

- STDOUT.sync = true will allow you to have flushed Ruby based IO without repeated .flush calls.

- chomp is a string method and gets retrieves only strings from your keyboard. You must have realised that gets returns a string and a '\n' character, while chomp removes this '\n'.

## Names

- Ruby Names are used to refer to constants, variables, methods, classes, and modules.

### Variables

- (See Variable section above.)

### Constants

- A constant name starts with an uppercase letter followed by name characters. Examples: module MyMath, PI=3.1416, class MyPune.

- Class names and module names are constants and follow the constants naming schema

- A Ruby constant is also a reference to an object.

### Method Names

- Method names should begin with a lowercase letter (or an underscore). "?", "!" and "=" are the only weird characters allowed as method name suffixes (! or bang labels a method as dangerous-specifically, as the dangerous equivalent of a method with the same name but without the bang.)

### Basic Types

- The basic types in Ruby are Numeric (subtypes include Fixnum, Integer, and Float), String, Array, Hash, Object, Symbol, Range, and RegExp.

-  Ruby, everything you manipulate is an object, and the results of those manipulations are themselves objects. There are no primitives or data-types.


### Methods

- Every method needs an object.

- We do not declare the return type; a method returns the value of the last statement executed in the method.

- It is recommended that you leave a single blank line between each method definition.

- The parentheses around a method's arguments are optional; our convention is to use them when a method has arguments and omit them when it doesn't. (In Rails, you will see methods calls with no parentheses.)

- Please note that as of now, there is no way, to specify a value for the second parameter and use the default value of the first parameter.

- Interpolation refers to the process of inserting the result of an expression into a string literal.

- When a method is aliased, the new name refers to a copy of the original method's body. If the method is subsequently redefined, the aliased name will still invoke the original implementation.

- The asterisk (called the splat argument) is actually taking all arguments you send to the method and assigning them to an array

- There's no limit to the number of parameters.

-  the sequence in which the parameters are put on to the stack is Left to right like C

- Are the parameters passed by value or reference? it is all references and not the objects themselves.

### Bang (!) Methods

- Ruby methods that modify an object in-place and end in an exclamation mark are known as bang methods.

- You'll find a number of pairs of methods, one with the bang and one without.

  -  Those without the bang perform an action and return a freshly minted object

  -  The bang versions of the same methods perform the action, but they do so in place: Instead of creating a new object, they transform the original object.

  - Examples of such pairs of methods include sort/sort! for arrays, upcase/upcase! for strings, chomp/chomp! for strings, and reverse/reverse!

- Normally for the built-in classes, dangerous usually (although not always) means this method, unlike its non-bang equivalent, permanently modifies its receiver.

- A few non-bang methods perform changes on the original string. The names of these methods make it clear that this is happening (such as replace), even though there's no ! on the name.

### Method names ending with ?

- The question mark has no special meaning to the Ruby interpreter. However, by convention, any method whose name ends with ? returns a value that answers the question posed by the method invocation. Exp: empty? method of an array, for example, returns true if the array has no elements.

- Mostly such methods return one of the Boolean values true or false, but this is not required
