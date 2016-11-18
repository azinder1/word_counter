class String
  define_method(:word_counter) do |word_to_count|
    words_splitter = self.concat("-").downcase.gsub!(/[^\w\s\d]/, '').split(" ")
    word_counter = 0
    words_splitter.each() do |word|
      if word_to_count.downcase == word
        word_counter += 1
      end
    end
    "There are <span class='count'>#{word_counter}</span> instance(s) of '<span class='user_word'>#{word_to_count}</span>' in your inputted sentence"
  end
end


# class String  <=====Secondary function that I want to work on to design word cloud
#   define_method(:word_counter) do
#     words = self.split(" ")
#     word_count = []
#     counts = Hash.new 0
#     words.each do |word|
#       counts[word] += 1
#     end
#     counts.keys.each() do |countskey|
#         word_count.push("countskey + " : " + counts[countskey].to_s )
#     end
#     word_count.join("<br>")
#   end
# end
