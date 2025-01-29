def left_shift(num_array, number)
  shifted_array = num_array.map do |num|
    
    if num >= 65 and num <= 90
      num += number
      while num > 90
        num -= 90
        num += 64
      end
    elsif num >= 97 and num <= 122
      num += number
      while num > 122
        num -= 122
        num += 96
      end
    end
    num
  end
  shifted_array
end

def caesar_cipher(phrase, number)
  phrase_splited = phrase.split("")
  characters_to_numbers = phrase_splited.map {|chr| chr.ord}
  
  shifted_numbers = left_shift(characters_to_numbers, number)
  numbers_to_characters = shifted_numbers.map {|num| num.chr}
  
  cipher_phrase = numbers_to_characters.reduce {|word, chr| word + chr}
  
  puts cipher_phrase
end

phrase = gets.chomp
number = gets.chomp.to_i
caesar_cipher(phrase, number)
