require 'http'

puts "Pick a word..."
user_input = gets.chomp

response = HTTP.get("https://api.wordnik.com/v4/word.json/#{user_input}/definitions?limit=1&includeRelated=false&useCanonical=false&includeTags=false&api_key=f0c54bfe816e1c9cb917306c542021034d976d6be0d159c3c")
array = response.parse


array.each do |hash_1|
  definition = hash_1["text"]
  p definition.to_s
end