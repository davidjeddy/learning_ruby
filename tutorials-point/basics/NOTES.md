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

