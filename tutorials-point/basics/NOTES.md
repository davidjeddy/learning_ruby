# Ruby

## IS

- open source
- general purpose
- interpreted
- true OOP from the beginning
- server side
- can use CGI
- can embedd HTML
- clean and easy syntax
- similar syntax to C++ / Perl
- Windows or POXIX envs
- Can connect to GUI tools like Tcl/Tk, GTK, OpenGL
- Can connect to SQL DBs
- full featured built-in standard library

## Need

- *Nix or Win95+
- a web server
- web browser
- Ruby 1.8+

## Whitespaces

- generally spaces and tabs are ignored 
  - Sometimes they are used to interpret ambiguous statements.
- ; are newline chatacters
- +,-,\ at EOL indicate wrapping

## Identifiers

- variables, constants, abd methods
- case sensitive
- alphanumeric and underscore

## Reserved Words

- Reserved words amy not be used in constant or variable names:

BEGIN, END, alias, and , begin, break, case, class, def, defined?, do, else, elsif, end , ensure, false, for, if, in, module, next, nil, not, or ,redo, rescue, retry, return, self, super, then, true, undef, unless, until, when, while, __FILE__, __LINE__

## Here Documents

See ./here_docs.rb

## Classes and Objects

- Data encap
- Data abstration
- Polymorphism
- Inheritance
- Composition

## Variable Types

- Local vars: defined in a class method, not visible outside the method. 
- Instance vars: available across methods for any particular instance/object. Denoted via preceeding @ character.
- Class vars: available cross diff objects, belongs to the class, not the objects. Denoted with @@
- Global vars: Available everywhere all the time. Denoted with $.

## Pseudo-Vars

self, true, false, nil, __FILE__, __LINE__

## Dots and Double Colon

- Call a module method via 'ModuleName.method_name param'
- :: unary operators that allows: contsntast, instance methods, and class methods to be accessed anywhere. Like static methods in some other languages
  - In Ruby classes and methods cna be considered constants as well as variable constants

```ruby
puts "exp1"
MR_COUNT = 0         # constant defined on main Object class
module Foo
   MR_COUNT = 0
   ::MR_COUNT = 1    # set global count to 1
   MR_COUNT = 2      # set local count to 2
end
puts MR_COUNT        # this is the global constant
puts Foo::MR_COUNT   # this is the local "Foo" constant

puts "exp2"
CONST = ' out there'
class Inside_one
   CONST = proc {' in there'}
   def where_is_my_CONST
      ::CONST + ' inside one'
   end
end
class Inside_two
   CONST = ' inside two'
   def where_is_my_CONST
      CONST
   end
end
puts Inside_one.new.where_is_my_CONST
puts Inside_two.new.where_is_my_CONST
puts Object::CONST + Inside_two::CONST
puts Inside_two::CONST + CONST
puts Inside_one::CONST
puts Inside_one::CONST.call + Inside_two::CONST
```

## Commnets

- # for single line
- =begin ... =end for multiline
- # for inline

