#!/usr/bin/ruby

print <<EOF
	This is the first way of creating
	here document ie multiple line sting.
EOF

print <<"EOF";
	This is the second way of creating
	here document ie. multiple line string.
EOF

print <<`EOC` # exec commands
	echo hi there
	echo lo there
EOC

print <<"foo", <<"bar" # you can stack them
	I said foo.
foo
	I said bar.
bar
