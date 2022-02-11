
dictionary = ['no', 'yes', 'okay', 'candle','hello', 'car', 'cat', 'dog', 'horse', 'bike', 'house']

p 'please enter a string: '
input_string = gets.chomp

def substrings(string, dictionary)
  string_array = string.split(" ")
  x = 0
  y = 0
  output_hash = Hash.new(0)
  while x < string_array.length
    while y < dictionary.length
      if string_array[x].downcase == dictionary[y].downcase
        output_hash[string_array[x].downcase] += 1
      end
      y +=1
    end
    x +=1
    y = 0
  end
  p output_hash
end

substrings(input_string, dictionary)