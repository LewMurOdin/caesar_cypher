puts "Enter string:"
phrase = gets.chomp

puts "Enter key:"
num = gets.chomp.to_i

def caesar_cypher(string, key)
  solution = ""
  character = string.split("")
  character.each do |x|
    if ('a'.ord..'z'.ord).include? x.ord
      x = x.ord
      if x + key > "z".ord
        x -= 26
      end
      x += key
    end
    if ('A'.ord..'Z'.ord).include? x.ord
      x = x.ord
      if x + key > "Z".ord
        x -= 26
      end
      x += key
    end
    solution += x.chr
  end
  puts solution
end

caesar_cypher(phrase, num)
