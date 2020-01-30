def substrings(string, dictionary)
  word_array = string.downcase.gsub(/[!,?]/, "").split(/\s/)
  word_count_hash = {}
  word_array.each do |word|
    dictionary.each do |dict_word|
      if word.include? dict_word
        if word_count_hash.key?(dict_word)
          word_count_hash[dict_word] += 1
        else
          word_count_hash[dict_word] = 1
        end
      end
    end
  end
  sorted_word_count_hash = word_count_hash.sort.to_h
  p sorted_word_count_hash
end

