bookshelf = [
  "The Effective Engineer",
  "The 4 hours work week",
  "Zero to One",
  "Lean Startup",
  "Hooked"
]

bookshelf.each do |book|
  puts book
end

hash = { "some_key" => "some_value" }
hash.each { |key, value| puts "#{key}: #{value}" } # some_key: some_value

hash_tk = {
	"name" => "Leandro",
	"nickname" => "Tk",
	"nationality" => "Brazilian",
	"age" => 24
}

hash_tk.each do |attribute, value|
	  puts "#{attribute}: #{value}"
end
