require 'json'
require 'open-uri'

puts "Insert a character name:"
print "> "
name = gets.chomp

url = "https://swapi.dev/api/people/?search=#{name}"

serialized_character = URI.open(url).read

character_hash = JSON.parse(serialized_character)
character = character_hash["results"][0]

puts "#{character["name"]} is #{character["height"]} cm tall, and has #{character["hair_color"]} hair and #{character["eye_color"]} eyes"
