puts "defined? variable # True if variable is initialized"

foo = 42
defined? foo    # => "local-variable"
defined? $_     # => "global-variable"
defined? bar    # => nil (undefined)

puts "defined? method_call # True if a method is defined"
defined? puts        # => "method"
defined? puts(bar)   # => nil (bar is not defined here)
defined? unpack      # => nil (not defined here)

defined? super # True if a method exists that can be called with super user
defined? super     # => "super" (if it can be called)
defined? super     # => nil (if it cannot be)

puts "defined? yield   # True if a code block has been passed"
defined? yield    # => "yield" (if there is a block passed)
defined? yield    # => nil (if there is no block)
