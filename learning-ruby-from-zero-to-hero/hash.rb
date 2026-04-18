# hash
hash_example = {
	"key1" => "value1",
	"key2" => "value2",
	"key3" => "value3"
}

hash_tk = {
	"name" => "Leandro",
	"nickname" => "Tk",
	"nationality" => "Brazilian"
}


puts "My name is #{hash_tk["name"]}" # My name is Leandro
puts "But you can call me #{hash_tk["nickname"]}" # But you can call me Tk
puts "And by the way I'm #{hash_tk["nationality"]}" # And by the way I'm Brazilian

hash_tk = {
  "name" => "Leandro",
  "nickname" => "Tk",
  "nationality" => "Brazilian",
  "age" => 24
}

puts "My name is #{hash_tk["name"]}" # My name is Leandro
puts "But you can call me #{hash_tk["nickname"]}" # But you can call me Tk
puts "And by the way I'm #{hash_tk["age"]} and #{hash_tk["nationality"]}" # And by the way I'm 24 and Brazilian

sh_tk = {
  "name" => "Leandro",
  "nickname" => "Tk",
  "nationality" => "Brazilian"
}

hash_tk["age"] = 24
puts hash_tk # { "name" => "Leandro", "nickname" => "Tk", "nationality" => "Brazilian", "age" => 24 }
