# Notes

## Basic Info

- Yukihiro Matsumoto, commonly known as 'Matz' created the Ruby language in 1993

- the principle of least surprise

- Parentheses are usually optional with a method call

- In Ruby, everything from an integer to a string is considered to be an obect

- each obect has built in 'methods' 

- Ruby is dot notation

- Some methods such as puts and gets are available everywhere

- ava and C programmers - no need to write a main method/function

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

- [http://rubylearning.com/images/operators.pg](http://rubylearning.com/images/operators.pg)

- The sign of the result (for % operator) is always the same as the sign of the second operand.

- you can write a Boolean expression such as the following that assigns values to variables until it encounters a false value:

  - if a = f(x) and b = f(y) and c = f(z) then d = g(a,b,c) end

## Strings

- String literals are sequences of characters between single or double quotation marks.  

- If puts is passed an obect that is not a string, puts calls the to_s method of that obect and prints the string returned by that method.

- In Ruby, strings are mutable. They can expand as needed, without using much time and memory. Ruby stores a string as a sequence of characters.

- Using the Grave accent (`) the contents of the string are treated as a command output string. It is sent to the operating system as a command to be executed 

## Variables

- local variable references look ust like method invocation expressions

- Variables in Ruby can contain data of any type. You can use variables in your Ruby programs without any declarations.

- Variable names denotes its scope (local, global, instance, etc.).

  - A local variable (declared within an obect) name consists of a lowercase letter (or an underscore) followed by name characters (sunil, _z, hit_and_run).

  - An instance variable (declared within an obect always "belongs to" whatever obect self refers to) name starts with an ''at'' sign (''@'') followed by a name (@sign, @_, @Counter).

  - A class variable (declared within a class) name starts with two ''at'' signs (''@@'') followed by a name (@@sign, @@_, @@Counter). A class variable is shared among all obects of a class. Only one copy of a particular class variable exists for a given class. Class variables used at the top level are defined in Obect and behave like global variables. Class variables are rarely used in Ruby programs.

  - Global variables start with a dollar sign (''$'') followed by name characters. A global variable name can be formed using ''$-'' followed by any single character ($counter, $COUNTER, $-x). Ruby defines a number of global variables that include other punctuation characters, such as $_ and $-K.

  -  variables in Ruby act as "references" to obects, which undergo automatic garbage collection.

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

- A Ruby constant is also a reference to an obect.

### Method Names

- Method names should begin with a lowercase letter (or an underscore). "?", "!" and "=" are the only weird characters allowed as method name suffixes (! or bang labels a method as dangerous-specifically, as the dangerous equivalent of a method with the same name but without the bang.)

### Basic Types

- The basic types in Ruby are Numeric (subtypes include Fixnum, Integer, and Float), String, Array, Hash, Obect, Symbol, Range, and RegExp.

-  Ruby, everything you manipulate is an obect, and the results of those manipulations are themselves obects. There are no primitives or data-types.


### Methods

- Every method needs an obect.

- We do not declare the return type; a method returns the value of the last statement executed in the method.

- It is recommended that you leave a single blank line between each method definition.

- The parentheses around a method's arguments are optional; our convention is to use them when a method has arguments and omit them when it doesn't. (In Rails, you will see methods calls with no parentheses.)

- Please note that as of now, there is no way, to specify a value for the second parameter and use the default value of the first parameter.

- Interpolation refers to the process of inserting the result of an expression into a string literal.

- When a method is aliased, the new name refers to a copy of the original method's body. If the method is subsequently redefined, the aliased name will still invoke the original implementation.

- The asterisk (called the splat argument) is actually taking all arguments you send to the method and assigning them to an array

- There's no limit to the number of parameters.

-  the sequence in which the parameters are put on to the stack is Left to right like C

- Are the parameters passed by value or reference? it is all references and not the obects themselves.

### Bang (!) Methods

- Ruby methods that modify an obect in-place and end in an exclamation mark are known as bang methods.

- You'll find a number of pairs of methods, one with the bang and one without.

  -  Those without the bang perform an action and return a freshly minted obect

  -  The bang versions of the same methods perform the action, but they do so in place: Instead of creating a new obect, they transform the original obect.

  - Examples of such pairs of methods include sort/sort! for arrays, upcase/upcase! for strings, chomp/chomp! for strings, and reverse/reverse!

- Normally for the built-in classes, dangerous usually (although not always) means this method, unlike its non-bang equivalent, permanently modifies its receiver.

- A few non-bang methods perform changes on the original string. The names of these methods make it clear that this is happening (such as replace), even though there's no ! on the name.

### Method names ending with ?

- The question mark has no special meaning to the Ruby interpreter. However, by convention, any method whose name ends with ? returns a value that answers the question posed by the method invocation. Exp: empty? method of an array, for example, returns true if the array has no elements.

- Mostly such methods return one of the Boolean values true or false, but this is not required

## ri (Ruby Index) and RDoc (Ruby Documentation)

- closely related pair of tools for providing documentation about Ruby programs

- ri --help

- rdoc --help

- rdoc reads comments and creates documentation from them

  - You can see RDoc markup in many of the C files in the Ruby source tree and many of the Ruby files in the Ruby installation.

- The Ruby ri tool is used to view the Ruby documentation off-line.

  -  Open a command window and invoke ri followed by the name of a Ruby class, module or method.

  -  ri will display documentation for you.

  - You may specify a method name without a qualifying class or module name, but this will ust show you a list of all methods by that name (unless the method is unique).

- ri dovetails with RDoc: It gives you a way to view the information that RDoc has extracted and organized.

## More on Strings

- Single quote String literals are evaluated minimally. Escape characters work but that is about it

- Double quite String literals: substitutions, sequences that start with a backslash, and replace with some binary value. Followed by expression interpoilation. 

- It is to be noted that every time a string literal is used in an assignment or as a parameter, a new String obect is created.


- String.methods.sort = shows you a list of methods that the Class obect String responds to.

- String.instance_methods.sort = This method tells you all the instance methods that instances of String are endowed with.

- String.instance_methods(false).sort = With this method, you can view a class's instance methods without those of the class's ancestors.

- Ruby siupports character encodings.

## Simple Constructs

- By the Ruby convention, if and while do not require parenthesis.

- Some common conditional operators are: ==, != >=, <=, >, <

- unless, as a statement or a modifier, is the opposite of if.

- As a concise alternative to simple if/else statements we can use the conditional or ternary ?: operator.

  - "(condition) ? (result if condition is true) : (result if condition is false)"

- statement modifiers are a useful shortcut if the body of an if or unless statement is ust a single expression. 

  - "puts "Enrollments will now Stop" if participants > 2500"

- case returns the value of the last expression executed.

- nil is an Obect

   - You can call methods on nil, ust like any other obect.

   - You can add methods to nil, ust like any other obect.

   -  nil and false evaluate to false, everything else (including true, 0) means true.

## Ruby Code Blocks

- called closures in other languages

- chunks of code between braces or between do..end that you can associate with method invocations

- and may appear only in the source adacent to a method call

- the block is written starting on the same line as the method call's last parameter (or the closing parenthesis of the parameter list)

- The Ruby standard is to use braces for single-line blocks and do..end for multi-line blocks

  - braces syntax has a higher precedence than the do..end

  - 
- the block is written starting on the same line as the method call's last parameter (or the closing parenthesis of the parameter list)

- The Ruby standard is to use braces for single-line blocks and do..end for multi-line blocks

  - braces syntax has a higher precedence than the do..end, Braces have a high precedence; do has a low precedence

- blocks can have their own arguments

- you can associate it with a call to a method

- If no code block is passed and yield is called, Ruby raises an exception

- From Ruby 1.9 on-wards, blocks introduced their own scope for the block parameters only.

#@ Arrays

- An Array is ust a list of items in order

- Every slot in the list acts like a variable, ... and you can make it point to a different obect.

- You can make an array by using square brackets

- Negative index values count from the end of the array

- If you attempt to read an element beyond ...  returns nil and does not throw an exception

- arrays are mutable - arrays are dynamically resizable; you can append elements to them and they grow as needed

- As of Ruby 1.9, setting an environment variable's value to nil removes the variable from the environment.

- ARGTV array: append parameters onto the end of the command

- Class GetoptLong supports command-line option parsing:

  - Options may be a minus sign (-) followed by a single character, or two minus signs (--) followed by a name (a long option).

  - Options may be given in any order.

  - Each internal option is passed to GetoptLong as an array,

## Symbols

- A symbol looks like a variable name but it's prefixed with a colon

- You don't have to pre-declare a symbol

- they are guaranteed to be unique

- A Symbol is the most basic Ruby obect you can create, It's ust a name and an internal ID

- Symbols are useful because a given symbol name refers to the same obect throughout a Ruby program

- Symbols are more efficient than strings. Two strings with the same contents are two different obects, but for any given name there is only one Symbol obect

- Symbols don't contain values or obects; they are used as a consistent name within code.

- symbols are single reference values that are only initialized once

- Symbols are particularly useful when creating hashes and you want to have a distinction between keys and values

## Hashes

- sometimes known as associative arrays, maps, or dictionaries

- similar to arrays in that they are indexed collection of obect references

- index arrays with integers, you can index a hash with obects of any types: strings, regular expressions, and so on

- two obects - the index (normally called the key) and the value

- retrieve the value by indexing the hash with the same key

- values in a hash can be obects of any type

- they can use any obect as an index.

- Hashes have a default value. This value is returned when an attempting to access keys that do not exist: the value is nil.

## File Read/Write

- File.open method can open the file in different modes: r, r+, w

- File modes can work like: <file mode><:external encoding><:internal>  

  - "...File.open('p014constructs.rb', 'r:UTF-16LE:UTF-8') do |f1|  ..."

- File.open opens a new File if there is no associated block.

- optional block is given, it will be an argument, and the file is closed when the block terminates.

  - Always close a file that you open. In the case of a file open for writing, this is very important and can actually prevent lost data.

- Both class methods open and readlines belong to the IO class, whose sub-class is File.

- The Find module supports top-down traversal of a set of file paths

- Ruby supports the notion of a file pointer.

- indicates the current location in the file

## Obect Serialization

- Obect serialization in Ruby is called marshaling.

- Saving an obect and some or all of its components is done using the method Marshal.dump.

- reconstitute the obect using Marshal.load

- Ruby uses marshaling to store session data

## RegEx In Rbuy

- regular expression is simply a way of specifying a pattern of characters to be matched in a string

- /pattern/

- In Ruby regular expressions are obects (of type Regexp)

- // is a regular expression and an instance of the Regexp class. Exp "//.class    # Regexp  "

- The forward slashes delimit the pattern, which consists of the two things we are matching, separated by a pipe character (|).

## Classes and Obects

- Things an obect can do are called methods

- An obect is a combination of state and methods that use the state.

- class (blueprint) -> obect (created)

- The construction is done via the new class method, the initialization is done via the initialize instance method. initialize is not a constructor!

- The method new is used to create an obect

- obects are pointed to, vars DO NOT hold the obect itself

- methods are caled via a dot (.) syntax. dog.bark

- parenths are options for method calls: dog.bark 'loud' === dog.bark('loud')

- Every obect is "born" with certain innate abilities.

  - puts d.methods.sort

  - Amongst these many methods, the methods obect_id and respond_to? are important.

- Every obect in Ruby has a unique id number associated with it. "puts "The id of d is #{d.obect_id}."

- Literal constructors create obects when the subect is used: String, Symbol, Array, Hash, and Range.

  - Observe that there is no visible call to new.

- Class Methods (not obect methods)

  - you send a message to the obect that is the class

  - Some operations pertaining to a class can't be performed by individual instances of that class (new is an excellent example)

  - Dog#bark - the instance method bark in the class Dog

  - Dog.color - the class method color, in the class Dog

  - Dog::color - another way to refer to the class method color

```
In writing about Ruby, the pound notation (#) is sometimes used to indicate an instance method - for example, we say File.chmod to denote the class method chmod of class File, and File#chmod to denote the instance method that has the same name. This notation is not part of Ruby syntax.
```
## Missing Methods

- "def method_missing(m, \*args, &block)"

- You are also responsible for maintaining the method_missing signature.

- Is it possible to have a hook that captures only a missing method's name while ignoring its arguments and associated block.

## Ruby Procs

- Blocks are not objects

  - but they can be converted into objects of class Proc

  - calling the lambda method of the class Object

  - block created with lambda acts like a Ruby method

- you cannot pass methods into other methods (but you can pass procs into methods)

- methods cannot return other methods (but they can return procs).

## Garbage Collection

- The Ruby obect heap allocates a minimum of 8 megabytes.

- Ruby's GC is called mark-and-sweep.

- Ruby uses a conservative mark-and-sweep GC mechanism

## File Mgmnt

- require and load methods

  - both are global functions defined in Object

  - but are used like language keywords


- The load method includes the named Ruby source file every time the method is executed: load 'filename.rb' 

- The more commonly used require method loads any given file only once: require 'filename'  

- Note that you say require 'filename', not require 'filename.rb'.

- require_relative for when the file loading is relative to the file we're loading it from - they're both in the same directory.

## Dependency Management

- require gives you access to the many extensions and programming libraries bundled with the Ruby programming language-as well as an even larger number of extensions and libraries written independently by other programmers and made available for use with Ruby.

- 
