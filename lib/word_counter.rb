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


class String
  define_method(:word_counter) do
    words = self.concat("-").downcase.gsub!(/[^\w\s\d]/, '').split(" ")
    word_count = []
    counts = Hash.new 0
    words.each do |word|
      counts[word] += 1
    end
    counts = Hash[counts.sort_by{|k,v| v}.reverse]
    counts.keys.each() do |countskey|
      if counts[countskey] > 1
        word_count.push(countskey +  ":" + counts[countskey].to_s )
      end  
    end
    word_count.join(" ")
  end
end
