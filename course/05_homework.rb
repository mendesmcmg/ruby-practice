dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}
 
def get_city_names(somehash)
  somehash.each do |city, code|
    puts city
  end
end
 
def get_area_code(somehash, key)
  if somehash.include?(key)
    puts "The area code for #{key} is #{somehash[key]}"
  else
    puts "Invalid city name"
  end
end
 
loop do
  puts "Do you want to lookup an area code based on a city name? (Y/N)"
  ans = gets.chomp.downcase
  if ans == "y"
    puts "Which city do you want the area code for?"
    get_city_names(dial_book)
    puts "Enter your selection"
    city = gets.chomp.downcase
    get_area_code(dial_book, city)
  else
    break
  end
end