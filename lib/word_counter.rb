

class String
  define_method(:word_counter) do |word_to_count|
    letters = split("")
    counter = 0
    alphabet = *("a".."z")
    space = " "
    only_letters_and_spaces = []
    words = []
    
    letters.each do |letter|

      if alphabet.include?(letter)
        only_letters_and_spaces.push(letter)
      elsif letter.==(space)
binding.pry
      only_letters_and_spaces.push(letter)
      end
    end
    
    only_letters_and_spaces = only_letters_and_spaces.join("")
    words = only_letters_and_spaces.split(" ")
    words.each() do |word|
      if word_to_count.==(word)
      counter = counter.+(1)
      end
    end
    counter
  end
end