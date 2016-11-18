class String
  define_method(:word_counter) do |word_to_count|
    words_splitter = self.concat("-").downcase.gsub!(/[^\w\s\d]/, '').split(" ")
    word_counter = 0
    words_splitter.each() do |word|
      if word_to_count.downcase == word
        word_counter += 1
      end
    end
    "There is #{word_counter} instance(s) of #{word_to_count} in your inputted sentence"
  end
end



# class String
#   define_method(:word_counter) do
#     words = self.split(" ")
#     word_count = []
#     counts = Hash.new 0
#     words.each do |word|
#       counts[word] += 1
#     end
#     counts.keys.each() do |countskey|
#        word_count.push(counts[countskey].to_s + ": " + countskey)
#     end
#     word_count.join(" ")
#   end
# end
