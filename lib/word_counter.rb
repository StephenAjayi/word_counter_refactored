class String
  define_method(:word_counter) do |word_to_count|
    words = split(" ")
    counter = 0
    
    words.each() do |word|
      word_to_count.==(word)
      counter = counter.+(1)
    end
    counter
  end
end